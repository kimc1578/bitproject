package kr.co.bit.controller.search;

import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.forwardedUrl;

import java.io.File;
import java.io.IOException;
import java.security.GeneralSecurityException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.ServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.taglibs.standard.lang.jstl.test.beans.PublicInterface2;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mobile.device.Device;
import org.springframework.mobile.device.DeviceUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import kr.co.bit.commons.Imageclassification;
import kr.co.bit.domain.service.search.BookSearch;
import kr.co.bit.mongo.book.domain.vo.BookVo;

@Controller

public class SearchController {
	private String[] keyset = { "score", "label", "orc" };
	@Autowired
	BookSearch bookSearch;
	@Autowired
	Imageclassification imagefic;

	// String contenttype[] =
	// {"image/gif","image/jpeg","image/bmp","image/png"};

	@RequestMapping("/search_img")
	public String search_img() {

		return "search/upload";
	}

	@RequestMapping(value = "/search_img", method = RequestMethod.POST)
	public String search_img(@RequestParam MultipartFile file, Model model) {
		long start = System.currentTimeMillis();
		HashMap<String, String> map;

		String contenttype = file.getContentType();
		String type2 = contenttype.substring(0, contenttype.indexOf("/"));

		if (!type2.equals("image")) {

			return "redirect:/search_img";
		}

		try {
			map = imagefic.image_classification(file);

			// 불필요한 문자열 제거
			map.put(keyset[0], map.get(keyset[0]).substring(2, map.get(keyset[0]).length() - 3));

			if (map.get(keyset[2]) != null && map.get(keyset[0]).equals("book")
					&& Float.valueOf(map.get(keyset[1])) > 0.8) {

				long end = System.currentTimeMillis();

				String title = map.get(keyset[2]);
				if (title.contains("jQuery")) {
					title = "jQuery";
				}
				System.out.println(map.get(keyset[0]));
				
				System.out.println("실행 시간 : " + (end - start) / 1000.0);
				//return "redirect:/search?q=" + map.get(keyset[0]) + "&title=" + title;

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
	@ResponseBody
	@RequestMapping("/search_m")
	public List<BookVo> search_result(HttpSession session,@RequestParam String q) {
		
		
		String title = "";
		List<BookVo>listbook =null;
		System.out.println("search_m");
		if (q.contains("책") || q.contains("book") || q.contains("도서") || q.contains("기본서") || q.contains("기술서")
				|| q.contains("서적")) {

			if (title.equals("")) {

				String[] tag = { "책", "book", "도서", "기본서", "기술서", "서적", "전문서" };

				for (int i = 0; i < tag.length; i++) {
					if (q.contains(tag[i])) {
						if (q.contains(" ")) {
						
							title = q.replaceAll(" " + tag[i], "");
							String[] token = title.split(" ");
							title = token[0];
						} else {
							
							title = q.replaceAll(tag[i], "");
							System.out.println(title);
						}

					}
				}

			}
			listbook = bookSearch.bookfindAll(title);	
			
			System.out.println(listbook);
		}
		
		
		
		return listbook;
	}

	@RequestMapping("/search")
	public String search_result(@RequestParam(value = "title", defaultValue = "") String title,
			@RequestParam("q") String q, @RequestParam(value = "p", defaultValue = "1") int pnum, Model model,HttpSession session) {
		//Spring mobile  device check 
		/*Device device = DeviceUtils.getCurrentDevice(RequestContextHolder.currentRequestAttributes());
		if(device.isMobile()){
			  
			 return "redirect:/search_m?q="+q;
		}*/
		
		
		if (pnum <= 0) {
			pnum = 1;
		}

		if (q.contains("책") || q.contains("book") || q.contains("도서") || q.contains("기본서") || q.contains("기술서")
				|| q.contains("서적")) {

			if (title.equals("")) {

				String[] tag = { "책", "book", "도서", "기본서", "기술서", "서적", "전문서" };

				for (int i = 0; i < tag.length; i++) {
					if (q.contains(tag[i])) {
						if (q.contains(" ")) {
							System.out.println("여기탐1");
							title = q.replaceAll(" " + tag[i], "");
							String[] token = title.split(" ");
							title = token[0];
						} else {
							System.out.println("여기탐2");
							title = q.replaceAll(tag[i], "");
							System.out.println(title);
						}

					}
				}

			}

			// 보여줘야할 결과물 수
			int rec = 10;
			// 총 결과물 수
			int totalrec = bookSearch.bookcount();
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

			List<BookVo> resultList = bookSearch.bookfindAll(pnum, title);
			
			
			
			model.addAttribute("startpage", startpage);
			model.addAttribute("endpage", endpage);
			model.addAttribute("q", q);
			model.addAttribute("title", title);
			model.addAttribute("searchVo", resultList);
			model.addAttribute("pageIndex", pageIndex);
			model.addAttribute("pagecnt", pagecnt);

			return "search/rs_search";
		} else {

			String msg = "와 일치하는 검색 결과가 없습니다.";
			model.addAttribute("q", q);
			model.addAttribute("msg", q + msg);
			return "search/rs_search";
		}

	}
	
	@RequestMapping("/search_deatil")
	public String search_deatil(){
		return "search/search_deatil";
	}
}
