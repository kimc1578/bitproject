package kr.co.bit.controller.search;

import java.awt.image.BufferedImage;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.Reader;
import java.net.URLEncoder;
import java.security.GeneralSecurityException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.servlet.ServletInputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.codec.binary.Base64;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import jdk.internal.util.xml.impl.ReaderUTF8;
import kr.co.bit.commons.Imageclassification;
import kr.co.bit.commons.KeyWordrating;
import kr.co.bit.domain.service.search.BookElasticSearch;
import kr.co.bit.domain.service.search.BookSearch;
import kr.co.bit.domain.service.user.BookmarkService;
import kr.co.bit.mobile.domain.vo.MobileBookCheckVo;
import kr.co.bit.mobile.domain.vo.MobileBookdetailVo;
import kr.co.bit.mobile.domain.vo.MobileSearchVo;
import kr.co.bit.mongo.book.domain.vo.BookDetailVo;
import kr.co.bit.mongo.book.domain.vo.BookListVo;
import kr.co.bit.mongo.book.domain.vo.BookTitle;
import kr.co.bit.mongo.book.domain.vo.BookVo;
import kr.co.bit.mongo.book.domain.vo.Keyword;

@Controller
public class AndroidSearchController {
	private String[] keyset = { "score", "label", "orc" };
	@Autowired
	BookSearch bookSearch;
	@Autowired
	BookElasticSearch bookelasticsearch;
	@Autowired
	BookmarkService bookmarkservice;
	@Autowired
	Imageclassification imagefic;

	@ResponseBody
	@RequestMapping("/m_home")
	public List<MobileBookCheckVo> MobileHome(@RequestParam String userid) {
		List<BookVo> bookmarklist = bookmarkservice.bookmarklist(userid);
		
		List<BookVo> bookdata = bookSearch.defalutbookinfo();
		
		List<MobileBookCheckVo> mobilecheck = new ArrayList<>();
		
		if (bookmarklist.isEmpty()) {
			for (BookVo vo : bookdata){
				
				MobileBookCheckVo checkvo = new MobileBookCheckVo();
				checkvo.setBookvo(vo);
				checkvo.setCheck(false);
				mobilecheck.add(checkvo);
			}
		} else {
			
			for (BookVo vo : bookdata) {
				for (BookVo bookmark : bookmarklist) {
					if (vo.getDetailNo().equals(bookmark.getDetailNo())) {
						
						MobileBookCheckVo checkvo = new MobileBookCheckVo();
						checkvo.setBookvo(vo);
						checkvo.setCheck(true);
						mobilecheck.add(checkvo);
					} else if(!vo.getDetailNo().equals(bookmark.getDetailNo())) {
						
						
						MobileBookCheckVo checkvo = new MobileBookCheckVo();
						checkvo.setBookvo(vo);
						checkvo.setCheck(false);
						mobilecheck.add(checkvo);

					}
				}
			}
		}
		System.out.println(mobilecheck);
		return mobilecheck;
	}

	@ResponseBody
	@RequestMapping("/m_search_detail")
	public MobileBookdetailVo search_result(@RequestParam String detailNo, @RequestParam String userid) {
		MobileBookdetailVo bookvo = new MobileBookdetailVo();
		boolean bookmarkcheck = bookmarkservice.bookmarkcheck(detailNo, userid);
		BookDetailVo vo2 = bookSearch.bookdetailselect(detailNo);
		BookVo vo = bookSearch.bookinfoselect(detailNo);
		bookvo.setBookmarkcheck(bookmarkcheck);
		bookvo.setBookinfo(vo);
		bookvo.setBookdetai(vo2);
		return bookvo;
	}

	@ResponseBody
	@RequestMapping(value = "/m_search_img", method = RequestMethod.POST)
	public MobileSearchVo m_search_img(HttpServletRequest request)
			throws IllegalStateException, IOException, GeneralSecurityException {
		System.out.println("m_search_img");
		String path = "C:\\temp\\img.jpg";
		int pnum = 1;
		InputStream ins = request.getInputStream();
		BufferedInputStream bis = new BufferedInputStream(ins);
		byte data[] = new byte[1024];
		File file = new File(path);
		OutputStream out = new FileOutputStream(file);
		String titleurl = "";
		BufferedOutputStream bos = new BufferedOutputStream(out);
		int n = 0;
		while ((n = bis.read(data)) != -1) {

			out.write(data, 0, n);
			out.flush();
		}

		out.close();

		HashMap<String, Object> map = imagefic.m_image_classification(path);
		map.put(keyset[0], ((String) map.get(keyset[0])).substring(2, ((String) map.get(keyset[0])).length() - 3));
		if (map.get(keyset[2]) != null && map.get(keyset[0]).equals("book")
				&& Float.valueOf((String) map.get(keyset[1])) > 0.8) {
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
			titleurl =booktitle2.get(0).getTitle();
		
		}
		int rec = 20;
		// 총 결과물 수
		int totalrec = bookelasticsearch.total_book_list_size(titleurl);
		// 총 페이지 수
		int pagecnt = (totalrec % rec == 0) ? totalrec / rec : (totalrec / rec) + 1;

		System.out.println(titleurl);
		List<BookListVo> resultList = bookelasticsearch.book_list(titleurl, pnum, rec);

		MobileSearchVo vo = new MobileSearchVo();
		vo.setBooklistvo(resultList);
		vo.setTotal(totalrec);
		System.out.println(vo);
		return vo;
	}

}
