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
import kr.co.bit.domain.vo.board.BoardItemVo;
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"file:src/main/webapp/WEB-INF/spring/root-context.xml"})
public class BoardDaoTest {
	
	@Autowired
	BoardDao boarddao; 

	
	
	@Test
	public void test() {
		
	
		 List<BoardItemVo>boardItemVos  = boarddao.selectAll();
		
		
		 for(BoardItemVo vo :boardItemVos){
			 System.out.println(vo.toString());
		 }
		
	}



}
