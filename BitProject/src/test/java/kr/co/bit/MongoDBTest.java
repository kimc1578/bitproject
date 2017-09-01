package kr.co.bit;

import static org.junit.Assert.*;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import kr.co.bit.mongo.book.dao.BookContentsDao;
import kr.co.bit.mongo.book.domain.vo.BookDetailVo;
import kr.co.bit.mongo.book.domain.vo.BookVo;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"file:src/main/webapp/WEB-INF/spring/*-context.xml"})
public class MongoDBTest {

	@Autowired
	BookContentsDao bookdao;
	
	@Test
	public void test() {
		
/*		
	List<BookVo> list = bookdao.bookfindAll(3);
		
		for(BookVo vo :list){
			
			
		System.out.println(vo);
		
		}
		*/
		
		
		 // System.out.println(bookdao.bookdetailfind("268673060"));
		  

		System.out.println(bookdao.defalutbookinfo());
 
 
		
 			


		/*List<Test2Vo> list = bookdao.test2findAll();
		
		for(Test2Vo vo :list){
			System.out.println(vo.getTest());
			System.out.println(vo.getArr().get(0).intValue());
			System.out.println(vo.getRich().getRich_test1());
			System.out.println(vo.getRich().getRich_test2());
			System.out.println(vo.getRich().getRich_arr());
			
		}*/
	
	}

}
