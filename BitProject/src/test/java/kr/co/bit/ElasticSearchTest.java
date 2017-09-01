package kr.co.bit;

import static org.junit.Assert.*;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import kr.co.bit.elastic.book.dao.Book_Elastic_Dao;
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"file:src/main/webapp/WEB-INF/spring/*-context.xml"})
public class ElasticSearchTest {
	
	@Autowired
	Book_Elastic_Dao el_dao;
	
	@Test
	public void test() {
		
		 
		System.out.println( el_dao.book_list("자바", 1, 5));
		System.out.println(el_dao.total_book_list_size("자바"));
	}

}
