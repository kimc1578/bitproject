package kr.co.bit.controller.board;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.co.bit.controller.MainController;
import kr.co.bit.domain.dto.board.InsertBoardDto;
import kr.co.bit.domain.dto.board.ModifyBoardDto;
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
	public String boardList(Model model, HttpSession session) {
		LoginVo loginvo = (LoginVo) session.getAttribute("loginVo");

		model.addAttribute("boardlist", boardservice.selectAll_User(loginvo.getUserid()));
		return "/board/boardlist";

	}

	@RequestMapping(value = "/bwrite", method = RequestMethod.POST)
	public String bwirte(InsertBoardDto bdto) {
		return null;

	}

	@RequestMapping("bwrite")
	public String bwirte() {
		return null;
	}

	@RequestMapping("bread")
	public String bread() {
		return null;
	};
	@RequestMapping("bdelete")
	public String bdelete(){
		
		return null;
		
	}
	
	@RequestMapping("bmodi")
	public String bmodi(){
		return null;
	}
	
	@RequestMapping(value="bmodi",method=RequestMethod.POST)
	public String bmodi(ModifyBoardDto bdto){
		return null;
	}

}
