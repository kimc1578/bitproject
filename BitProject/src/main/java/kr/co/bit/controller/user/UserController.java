package kr.co.bit.controller.user;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.co.bit.controller.MainController;
import kr.co.bit.domain.service.user.UserService;


@Controller 
@RequestMapping("/user")
public class UserController {
	@Autowired 
	UserService userservice;
	
	//회원정보 요청
	@RequestMapping("/info")
	public String userInfo(HttpSession session,Model model){
		
		
	
		
		return "home";
	}
	//회원가입
	@RequestMapping("/join")
	public String userJoin(){
		
		//성공시  요청했던 uri 페이지로 되돌아 간다.
		
		
		
		return "redirect:/";
		
	}
	
	
	//회원정보 수정
	
	@RequestMapping("/modify")
	public String modify(){
		System.out.println("modi");
		
		
		return "redirect:/";
	}
	
	//북마크관리
	
	// 로그인 페이지
	@RequestMapping("/login")
	public String loginuser(){
		return "/user/Login";
	}
	
	//로그인  요처
	
	//로그아웃 요청 페이지가따로없음
	@RequestMapping("/logout")
	public String logoutuser(){
		System.out.println("logout");
		
		return "home";
	}
	
	//비밀번호 check
	@RequestMapping("/passcheck")
	public String passcheck(){
		
		return "home";
	}
	
	//아이디 중복 체크  Ajax통신 json
	@RequestMapping("/idcheck")
	public String idcheck(){
		
		return "home";
		
	}
	
}
