package kr.co.bit.controller.board;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.bit.controller.MainController;
import kr.co.bit.domain.service.board.BoardService;
import kr.co.bit.domain.vo.board.BoardItemVo;

@Controller
@RequestMapping("/board")
public class BoardController {
	private static final Logger logger = LoggerFactory.getLogger(BoardController.class);
		
	
		@Autowired
		BoardService boardservice;
		@RequestMapping("/boardlist")
		public String boardList(Model model){
			logger.info("boardList Method Strat....");
			/*	List<BoardItemVo> list = boardservice.selectAll_User("user01");
				
				for(BoardItemVo vo : list){
					System.out.println(vo);
				}*/
			
			
			logger.info("boardList Method End....");
			
			return 	"home";
			
		}
}
