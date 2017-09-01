package kr.co.bit.controller.user;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;

import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.junit.runner.Request;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttribute;

import kr.co.bit.controller.MainController;
import kr.co.bit.domain.dto.user.LoginDto;
import kr.co.bit.domain.dto.user.UserJoinDto;
import kr.co.bit.domain.dto.user.UserModiDto;
import kr.co.bit.domain.service.user.BookmarkService;
import kr.co.bit.domain.service.user.UserService;
import kr.co.bit.domain.vo.user.LoginVo;
import kr.co.bit.domain.vo.user.UserInfoVo;
import kr.co.bit.mongo.book.domain.dto.BookmarkDto;
import kr.co.bit.mongo.book.domain.vo.BookMarkVo;
import kr.co.bit.mongo.book.domain.vo.BookVo;


@Controller 
@RequestMapping("/user")
public class UserController {
	@Autowired 
	UserService userservice;
	@Autowired
	BookmarkService bookmarkService;
	
	private static final Logger logger = LoggerFactory.getLogger(UserController.class);
	//회원정보 요청
	@RequestMapping("/info")
	public String userInfo( HttpSession session,Model model){

		
		  LoginVo vo =  (LoginVo) session.getAttribute("loginVo");
		
		UserInfoVo userinfovo = userservice.userinfo(vo.getUserid());
		model.addAttribute("userinfovo", userinfovo);
		
		session.removeAttribute("passcheck");
		return "/user/info";
		
		
	}
	//회원가입 frm페이지 호출
	@RequestMapping("/join_login")
	public String userJoin(){
		
		
		return "/user/join_login";
		
	}
	
	//회원가입 service 호출
	@RequestMapping("/joinOk")
	public String userJoinOk(UserJoinDto userdto){
	
		 
		int result =userservice.userJoin(userdto);
		
		
		return "redirect:/";
		
	}
	
	
	//회원정보 수정
	
	@RequestMapping("/modify")
	public String modify(){
		
	
		
		
		return "/user/info_modify";
	}
	
	@RequestMapping(value= "/modifyOk",method=RequestMethod.POST)
	public String modifyOk(HttpSession session,@RequestParam String email){
		System.out.println("modiOk");
		 LoginVo vo  =(LoginVo) session.getAttribute("loginVo");
		 UserModiDto dto =new UserModiDto();
		 dto.setEmail(email);
		 dto.setUserid(vo.getUserid());
		 int result = userservice.userinfomodi(dto);
		 if(result==1){
				
				return "redirect:/user/info";
			}
		 
		 	session.setAttribute("passcheck", "OK");
			String uri = (String) session.getAttribute("passuri");
			session.removeAttribute("passuri");
		return "redirect:"+uri;
	}
	
	

	
	//로그인 OK
	
	@RequestMapping(value="/loginOk",method=RequestMethod.POST)
	public String loginOk(LoginDto dto,HttpSession session) throws UnsupportedEncodingException{
		
		System.out.println(dto);
		
		LoginVo vo   =userservice.userlogin(dto);
		
			

		if(vo ==null){
			
			return "redirect:/user/join_login";
		}
		 String uri= (String) session.getAttribute("uri");
		 session.removeAttribute("uri");
		 System.out.println(uri);
		 session.setAttribute("loginVo",vo);
		 if(uri!=null&&!uri.equals("")){
			 
			 if(uri.contains("ig_search")){
				 int  uri_idx = uri.indexOf("=");
				 String uri2 = uri.substring(uri_idx+1);
				 String uri3 = uri.replaceAll(uri2, "");
				 uri2 = URLEncoder.encode(uri2,"UTF-8");
				 
				 return "redirect:"+uri3+uri2;
			 }
			 
			 return "redirect:"+uri;
		 }
		
		return "redirect:/";
	}
	@RequestMapping("/secession")
	public String secession(){
		
		return "/user/secession";
	}
	@RequestMapping("/secession_Ok")
	public String secessionOk(HttpServletRequest request){
		 HttpSession session = request.getSession();
		 LoginVo vo = (LoginVo) session.getAttribute("loginVo");
		userservice.userdelete(vo.getUserid());
		session.invalidate();
		return "redirect:/";
		
	}	
	//로그아웃 요청 페이지가따로없음
	@RequestMapping("/logout")
	public String logoutuser(HttpSession session){
		session.invalidate();
		return "redirect:/";
	}
	
	@RequestMapping("/passmodi")
	public String passmodi(){
		return "/user/passwordmodify";
	}
	
	@RequestMapping(value="/passmodiOk",method=RequestMethod.POST)
	public String passmodiOk(HttpSession session,@RequestParam String newpass){
		 LoginVo loginVo = (LoginVo) session.getAttribute("loginVo");
			
		HashMap<String,String>hashMap = new HashMap<>();
		hashMap.put("userid", loginVo.getUserid());
	
		hashMap.put("newpass", newpass);
		
		 int result = userservice.userpassmodi(hashMap);
		if(result !=1){
			return "/user/passmodi";
		}
		session.invalidate();
		return "redirect:/";
	}
	@RequestMapping("/faq")
	public String faq(){
		return "sorry";
	}
	@RequestMapping("/qanda")
	public String qanda(){
		return "sorry";
	}
	@RequestMapping("/question")
	public String question(){
		return "sorry";
	}
	
	@RequestMapping(value="/passcheckOk",method=RequestMethod.POST)
	public String passcheckOk(@RequestParam String userpw ,HttpSession session){
		System.out.println("passcheckOk");
		 LoginVo loginVo = (LoginVo) session.getAttribute("loginVo");
			LoginDto dto =new LoginDto();
			dto.setUserid(loginVo.getUserid());
			dto.setUserpw(userpw);
			System.out.println("pass dto"+dto);
			int result =  userservice.passcheck(dto);
			System.out.println("passcheck result:"+result);
			if(result==1){
				session.setAttribute("passcheck", "OK");
				String uri = (String) session.getAttribute("passuri");
				session.removeAttribute("passuri");
				return "redirect:"+uri;
			}
			
			
		return "/user/passcheck";
	}
	@RequestMapping("/passcheck")
	public String passcheck(){
		
	
		
		return "/user/passcheck";
	}
	
	//아이디 중복 체크  Ajax통신 json
	@ResponseBody
	@RequestMapping("/idcheck")
	public String idcheck(){
		System.out.println("idcheck");
		return "home";
		
	}
	
	
	@RequestMapping("/bookmark")
	public String bookmark(Model model,HttpSession session){
		
		long start = System.currentTimeMillis();
		  LoginVo vo = (LoginVo) session.getAttribute("loginVo");
		List<BookVo>bookmarklist =bookmarkService.bookmarklist(vo.getUserid());
		model.addAttribute("bookmarklist",bookmarklist);
		long end = System.currentTimeMillis();
		System.out.println("실행 시간 : " + (end - start) / 1000.0);
		return "/user/bookmark";
	}
	
	
	
	@RequestMapping("/bookmarksub")
	public String bookmarksub(@RequestParam String detailNo,HttpSession session){
		LoginVo loginVo = (LoginVo) session.getAttribute("loginVo");
		
		String userid = loginVo.getUserid();
		
		boolean result= bookmarkService.bookmarksub(userid, detailNo);
		
		System.out.println(result);
		return "redirect:/user/bookmark";
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
	
	
}
