package kr.co.bit.controller.user;

import java.net.URLEncoder;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.co.bit.domain.service.user.BookmarkService;
import kr.co.bit.domain.service.user.UserService;
import kr.co.bit.mongo.book.domain.dto.BookmarkDto;
import kr.co.bit.mongo.book.domain.vo.BookVo;

@Controller
@RequestMapping("/m_user/")
public class AndroidUserController {
	@Autowired 
	UserService userservice;
	@Autowired
	BookmarkService bookmarkService;
	
	@RequestMapping("/bookmark")
	@ResponseBody
	public List<BookVo> bookmark_m(@RequestParam String userid){
		List<BookVo>bookmarklist =bookmarkService.bookmarklist(userid);
		
		return bookmarklist;
		
	}
	
	@RequestMapping(value="/bookmarkadd",method=RequestMethod.POST)
	@ResponseBody
	public Boolean bookmarkadd(BookmarkDto bookmarkdto){
	System.out.println("bookmarkadd");
		
		return bookmarkService.bookmarkadd(bookmarkdto);
	}
	@RequestMapping(value="/bookmarksub",method=RequestMethod.POST)
	@ResponseBody
	public Boolean bookmarksub(BookmarkDto bookmarkdto){
		System.out.println("bookmarkasub");
		return bookmarkService.bookmarksub(bookmarkdto);
	}
	@RequestMapping("/m_user/frm")
	public String frm(){
		return "test";
	}
	
}
