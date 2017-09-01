package kr.co.bit.exception;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.servlet.NoHandlerFoundException;

@ControllerAdvice
public class GlobalException {
	
		@ExceptionHandler(NoHandlerFoundException.class)
		public String notcontroller(Model model,NoHandlerFoundException e){
			model.addAttribute("ex_msg", "없는 페이지 입니다.");
			return "/error";
		}
		
	
}
