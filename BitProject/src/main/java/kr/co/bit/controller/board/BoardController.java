package kr.co.bit.controller.board;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.bit.controller.MainController;
import kr.co.bit.domain.service.board.BoardService;
import kr.co.bit.domain.vo.board.BoardItemVo;
import kr.co.bit.domain.vo.user.LoginVo;

@Controller
@RequestMapping("/board")
public class BoardController {
	private static final Logger logger = LoggerFactory.getLogger(BoardController.class);
		
	
		@Autowired
		BoardService boardservice;
		@RequestMapping("/boardlist")
		public String boardList(Model model,HttpSession session){
				LoginVo loginvo = (LoginVo) session.getAttribute("loginVo");
				
				
				model.addAttribute("boardlist", boardservice.selectAll_User(loginvo.getUserid()));
			return 	"/board/boardlist";
			
		}
}
