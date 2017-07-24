package kr.co.bit;

import static org.junit.Assert.*;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import kr.co.bit.domain.service.board.BoardService;
import kr.co.bit.domain.vo.board.BoardItemVo;
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"file:src/main/webapp/WEB-INF/spring/root-context.xml"})
public class BoardServiceTest {
	
	@Autowired
	BoardService boardservice;
	
	@Test
	public void test() {
		
	    List<BoardItemVo> list  =	boardservice.selectAll_User("user01");
		
	    for(BoardItemVo vo :list){
	    	System.out.println(vo);
	    }
	    
		
	}	

}
