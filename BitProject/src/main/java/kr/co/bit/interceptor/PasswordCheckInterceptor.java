package kr.co.bit.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class PasswordCheckInterceptor extends HandlerInterceptorAdapter{

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		// TODO Auto-generated method stub
		HttpSession session  =request.getSession();
		 String passchekc=  (String) session.getAttribute("passcheck");
		
		 if(passchekc!=null&&!passchekc.equals("")){
			 return true;	 
		 }
		 
		 String uri =	 request.getServletPath();
		 session.setAttribute("passuri", uri);
		 response.sendRedirect("/user/passcheck");
		 
		 return false;
		 
		 
	
	}
	
}
