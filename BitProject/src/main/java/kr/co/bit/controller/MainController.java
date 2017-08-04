package kr.co.bit.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.mobile.device.Device;
import org.springframework.mobile.device.DeviceUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.context.request.RequestContextHolder;

import kr.co.bit.controller.user.UserController;
@Controller
public class MainController { 
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	private static final Logger logger = LoggerFactory.getLogger(MainController.class);
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Model model , HttpSession session) {
		
		Device device = DeviceUtils.getCurrentDevice(RequestContextHolder.currentRequestAttributes());
		

		
		
		return "home";
	}
}
