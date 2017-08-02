package kr.co.bit.controller.user;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

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

import kr.co.bit.controller.MainController;
import kr.co.bit.domain.dto.user.LoginDto;
import kr.co.bit.domain.dto.user.UserJoinDto;
import kr.co.bit.domain.service.user.UserService;
import kr.co.bit.domain.vo.user.LoginVo;
import kr.co.bit.domain.vo.user.UserInfoVo;


@Controller 
@RequestMapping("/user")
public class UserController {
	@Autowired 
	UserService userservice;
	private static final Logger logger = LoggerFactory.getLogger(UserController.class);
	//회원정보 요청
	@RequestMapping("/info")
	public String userInfo( HttpSession session,Model model){
		  LoginVo vo =  (LoginVo) session.getAttribute("loginVo");
		
		UserInfoVo userinfovo = userservice.userinfo(vo.getUserid());
		model.addAttribute("userinfovo", userinfovo);
		
		return "/user/info";
	}
	//회원가입 frm페이지 호출
	@RequestMapping("/join")
	public String userJoin(){
		
		
		
		
		return "/user/join";
		
	}
	
	//회원가입 service 호출
	@RequestMapping("/joinOk")
	public String userJoinOk(UserJoinDto userdto){
		
		
		int result =userservice.userJoin(userdto);
		System.out.println(result);
		
		return "redirect:/";
		
	}
	
	
	//회원정보 수정
	
	@RequestMapping("/modify")
	public String modify(@RequestParam String userid ,Model model){
		
	
		
		
		return "/user/info_modify";
	}
	
	@RequestMapping("/modifyOk")
	public String modifyOk(){
		System.out.println("modiOk");
		
		
		return "redirect:/";
	}
	
	//북마크관리
	
	// 로그인 페이지
	@RequestMapping("/login")
	public String loginuser(){
		
	
		return "/user/Login";
	}
	
	//로그인 OK
	
	@RequestMapping(value="/loginOk",method=RequestMethod.POST)
	public String loginOk(LoginDto dto,HttpSession session){
		
		System.out.println(dto);
		
		LoginVo vo   =userservice.userlogin(dto);
		
			

		if(vo ==null){
			
			return "redirect:/user/login";
		}
	
		
		
		session.setAttribute("loginVo",vo);
		
	
		return "redirect:/";
	}
	
	//로그아웃 요청 페이지가따로없음
	@RequestMapping("/logout")
	public String logoutuser(HttpSession session){
		session.invalidate();
		return "redirect:/";
	}
	
	//비밀번호 check
	@RequestMapping("/passcheck")
	public String passcheck(){
			System.out.println("passcheck");
		//요청했던 페이지로 이동 
		return "home";
	}
	
	//아이디 중복 체크  Ajax통신 json
	@RequestMapping("/idcheck")
	public String idcheck(){
		System.out.println("idcheck");
		return "home";
		
	}
	
}
