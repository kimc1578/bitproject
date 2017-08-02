package kr.co.bit.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Component;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import kr.co.bit.domain.vo.user.LoginVo;

public class AuthInterceptor  extends HandlerInterceptorAdapter{

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		// TODO Auto-generated method stub
		
		 LoginVo vo  =(LoginVo) request.getSession().getAttribute("loginVo");
		 if(vo==null){
			  
			 response.sendRedirect("/user/login");
			 return false;
		 }
	
		
		return super.preHandle(request, response, handler);
	}
	
}	
