package kr.co.bit.controller.search;

import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.forwardedUrl;

import java.io.File;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.security.GeneralSecurityException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.taglibs.standard.lang.jstl.test.beans.PublicInterface2;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mobile.device.Device;
import org.springframework.mobile.device.DeviceUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import kr.co.bit.commons.Imageclassification;
import kr.co.bit.commons.KeyWordrating;
import kr.co.bit.domain.service.search.BookElasticSearch;
import kr.co.bit.domain.service.search.BookSearch;
import kr.co.bit.domain.service.user.BookmarkService;
import kr.co.bit.domain.vo.user.LoginVo;
import kr.co.bit.mongo.book.domain.vo.BookDetailVo;
import kr.co.bit.mongo.book.domain.vo.BookListVo;
import kr.co.bit.mongo.book.domain.vo.BookTitle;
import kr.co.bit.mongo.book.domain.vo.BookVo;
import kr.co.bit.mongo.book.domain.vo.Keyword;
import kr.co.bit.webdocument.NaverSearchDocument;
import kr.co.bit.webdocument.vo.NaverWebVo;

@Controller

public class SearchController {
	private String[] keyset = { "score", "label", "orc" };
	@Autowired
	BookSearch bookSearch;
	@Autowired
	BookElasticSearch bookelasticsearch;
	@Autowired
	BookmarkService bookmarkservice;
	@Autowired
	Imageclassification imagefic;
	@Autowired
	NaverSearchDocument naver;


	@RequestMapping("/search_img")
	public String search_img() {

		return "search/upload";
	}

	@RequestMapping(value = "/search_img", method = RequestMethod.POST)
	public String search_img(@RequestParam MultipartFile file, Model model) {
		System.out.println("img search start");
		long start = System.currentTimeMillis();
		HashMap<String, Object> map;

		String contenttype = file.getContentType();
		String type2 = contenttype.substring(0, contenttype.indexOf("/"));
		//이미지 파일이 아닐때
		if (!type2.equals("image")) {
			
			return "redirect:/";
		}

		try {
			//이미지 파일인 경우
			map = imagefic.image_classification(file);
			
			// 불필요한 문자열 제거
			map.put(keyset[0], ((String) map.get(keyset[0])).substring(2, ((String) map.get(keyset[0])).length() - 3));
			
			//조건 결과가 book 이고  스코어가 80% 이상일 때 
			if (map.get(keyset[2]) != null && map.get(keyset[0]).equals("book")
					&& Float.valueOf((String) map.get(keyset[1])) > 0.8) {

				long end = System.currentTimeMillis();

				ArrayList<BookTitle> booktitle = (ArrayList<BookTitle>) map.get(keyset[2]);
				ArrayList<BookTitle> booktitle2= new ArrayList<>();

				
				List<Keyword> keylist = bookSearch.keywordAll();
				
				
				for (int i = 0; i < booktitle.size(); i++) {
						
					for(Keyword key : keylist){
					if (booktitle.get(i).getTitle().toLowerCase().contains(key.getKeyword().toLowerCase())) {
						booktitle2.add(booktitle.get(i));
						}
					}
				}
				
				
				
				
				String titleurl = URLEncoder.encode(booktitle2.get(0).getTitle(), "UTF-8");

				System.out.println("실행 시간 : " + (end - start) / 1000.0);
				
				return "redirect:/ig_search?q=" + titleurl ;

			}

		} catch (IllegalStateException | IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (GeneralSecurityException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return "search/rs_search";
	}

	@RequestMapping("/search")
	public String search_result(@RequestParam("q") String q, @RequestParam(value = "p", defaultValue = "1") int pnum,
			Model model, HttpSession session, HttpServletRequest request) throws UnsupportedEncodingException , NullPointerException {

		if (pnum <= 0) {
			pnum = 1;
		}
		
		session.setAttribute("uri", request.getServletPath() + "?q=" + q + "&p=" + pnum);

		// 보여줘야할 결과물 수
		int rec = 20;
		// 총 결과물 수
		int totalrec = bookelasticsearch.total_book_list_size(q);
		// 총 페이지 수
		int pagecnt = (totalrec % rec == 0) ? totalrec / rec : (totalrec / rec) + 1;

		if (pnum >= pagecnt) {
			pnum = pagecnt;
		}

		// 현재 페이지
		int pageIndex = pnum;
		// 보여줘야할 groupsize
		int pageGroupSize = 5;

		// 총 그룹수
		// int pageGroupCount =
		// (totalrec/(rec*pageGroupSize))+(totalrec%(rec*pageGroupSize)==0?0:1);
		// 현재 그룹 번호
		int currentgroup = (pageIndex / pageGroupSize) + (pageIndex % pageGroupSize > 0 ? 1 : 0);
		int endpage = currentgroup * pageGroupSize;
		int startpage = endpage - (pageGroupSize - 1);

		if (endpage > pagecnt) {

			endpage = pagecnt;
		}

		List<BookListVo> resultList = bookelasticsearch.book_list(q, pnum,rec);

		model.addAttribute("startpage", startpage);
		model.addAttribute("endpage", endpage);
		model.addAttribute("q", q);

		model.addAttribute("searchVo", resultList);
		model.addAttribute("pageIndex", pageIndex);
		model.addAttribute("pagecnt", pagecnt);
		model.addAttribute("totalrec", totalrec);
		return "search/rs_search";
	
	}

	@RequestMapping("/search_deatil")
	public String search_deatil(@RequestParam String detailNo, Model model, HttpServletRequest request,
			HttpSession session) {

		session.setAttribute("uri", request.getServletPath() + "?detailNo=" + detailNo);
		LoginVo loginvo = (LoginVo) session.getAttribute("loginVo");
		boolean bookmarkcheck = false;
		if (loginvo != null) {
			bookmarkcheck = bookmarkservice.bookmarkcheck(detailNo, loginvo.getUserid());
		}

		BookDetailVo vo2 = bookSearch.bookdetailselect(detailNo);
		BookVo vo = bookSearch.bookinfoselect(detailNo);

		model.addAttribute("bookinfo", vo);

		if (vo2 == null) {
			model.addAttribute("bookdetailinfo", vo2);
			model.addAttribute("datacheck", "false");
			model.addAttribute("bookmarkcheck", bookmarkcheck);
			return "search/search_deatil";
		}
		
		model.addAttribute("datacheck", "true");
		model.addAttribute("bookdetailinfo", vo2);
		model.addAttribute("bookmarkcheck", bookmarkcheck);
		return "search/search_deatil";
	}

	@RequestMapping("/search_webdocument")
	public String search_webdocument(@RequestParam String q,@RequestParam(value = "p", defaultValue = "1") int pnum,Model model) {
		if (pnum <= 0) {
			pnum = 1;
		}
		
		
		int display = 10;
		 int start =    (display*(pnum-1))+1;
		HashMap<String, Object> map = naver.naverWebSearch(q, String.valueOf(start), String.valueOf(display));
		int total = Integer.parseInt(((String) map.get("total")));
		System.out.println("total :" + total);
		List<NaverWebVo> weblist = (List<NaverWebVo>) map.get("weblist");
		int pagecnt = (total % display == 0) ? total / display : (total / display) + 1;

		if (pnum >= pagecnt) {
			pnum = pagecnt;
		}

		// 현재 페이지
		int pageIndex = pnum;
		// 보여줘야할 groupsize
		int pageGroupSize = 5;

		// 총 그룹수
		// int pageGroupCount =
		// (totalrec/(rec*pageGroupSize))+(totalrec%(rec*pageGroupSize)==0?0:1);
		// 현재 그룹 번호
		int currentgroup = (pageIndex / pageGroupSize) + (pageIndex % pageGroupSize > 0 ? 1 : 0);
		int endpage = currentgroup * pageGroupSize;
		int startpage = endpage - (pageGroupSize - 1);

		if (endpage > pagecnt) {

			endpage = pagecnt;
		}
		model.addAttribute("startpage", startpage);
		model.addAttribute("endpage", endpage);
		model.addAttribute("q", q);
		model.addAttribute("pageIndex", pageIndex);
		model.addAttribute("pagecnt", pagecnt);
		model.addAttribute("total", map.get("total"));
		model.addAttribute("weblist", weblist);

		return "search/webdocument";
	}
	@RequestMapping("/ig_search")
	
	public String totalsearch(@RequestParam String q,HttpSession session,HttpServletRequest request,Model model){
		session.setAttribute("uri", request.getServletPath() + "?q=" + q );
		String display = "5";
		String start ="1";
		HashMap<String, Object> map = naver.naverWebSearch(q, start,display);
		List<NaverWebVo> weblist = (List<NaverWebVo>) map.get("weblist");
		//엘라스틱 서치
		List<BookListVo> resultList = bookelasticsearch.book_list(q, Integer.parseInt(start),Integer.parseInt(display));
		
		model.addAttribute("bk_list", resultList);
		model.addAttribute("weblist", weblist);
		model.addAttribute("q", q);
		System.out.println(resultList);
		System.out.println(weblist);
		
		return "search/total_result_search";
	}

	
}
