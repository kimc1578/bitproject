package kr.co.bit;

import static org.junit.Assert.*;

import java.util.List;

import org.apache.ibatis.session.SqlSessionFactory;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import kr.co.bit.dao.board.BoardDao;
import kr.co.bit.dao.board.impl.BoardDaoimpl;
import kr.co.bit.domain.dto.board.BoardDto;
import kr.co.bit.domain.dto.board.DeleteBoardDto;
import kr.co.bit.domain.dto.board.InsertBoardDto;
import kr.co.bit.domain.dto.board.ModifyBoardDto;
import kr.co.bit.domain.vo.board.BoardItemVo;
import kr.co.bit.domain.vo.board.BoardVo;
import kr.co.bit.domain.vo.user.UserInfoVo;
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"file:src/main/webapp/WEB-INF/spring/root-context.xml"})
public class BoardDaoTest {
	
	@Autowired
	BoardDao boarddao; 

	@Test
	public void deleteBoard(){
	/*	DeleteBoardDto dto= new DeleteBoardDto();
		dto.setBidx("27");
		dto.setUserid("user01");
		
		
		System.out.println(boarddao.deleteBoard(dto));
		*/
	}
	
	@Test
	public void modifyBoard(){
		
		/*ModifyBoardDto dto = new ModifyBoardDto();
		
		 dto.setBidx("24");
		 dto.setTitle("수정");
		 dto.setContents("수정됩니다");
		 dto.setUserid("user01");
		 int result=  boarddao.modifyBoard(dto);
		
		 System.out.println(result);*/
	}
	
	
	@Test
	public void insertBoard(){
		
	/*	InsertBoardDto dto = new InsertBoardDto();
		dto.setUserid("user01");
		dto.setTitle("201707Test");
		dto.setContents("test");
		
		 int result= boarddao.insertBoard(dto);
		
		 System.out.println(result);
		*/
	
	}
	

	
	@Test
	public void selectAll() {
		
	
	 List<BoardItemVo>boardItemVos  = boarddao.selectAll_User("user01");
		
		
		 for(BoardItemVo vo :boardItemVos){
			 System.out.println(vo.toString());
		 }
		
	}
	
	@Test
	public void selectboard(){
		
		/*BoardDto bdto= new BoardDto();
		bdto.setBidx("24");
		bdto.setUserid("user01");
	
		
		BoardVo vo = boarddao.selectBoard(bdto);
		System.out.println(vo);
		*/
	}
	
	
	
	
	

		

			



}
