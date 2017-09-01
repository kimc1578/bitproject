package kr.co.bit;

import static org.junit.Assert.*;

import java.util.HashMap;
import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import kr.co.bit.webdocument.NaverSearchDocument;
import kr.co.bit.webdocument.vo.NaverWebVo;
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"file:src/main/webapp/WEB-INF/spring/*-context.xml"})
public class NaverSearchTest {
	@Autowired
	NaverSearchDocument naver;

	@Test
	public void test() {
		
		int  page = 11 ;
		
		System.out.println((10*(page-1))+1);
		
		
		
/*		HashMap<String, Object> map;
		
		
		
		
		
		map =naver.naverWebSearch("자바", "1", "10");
		 String total =    (String) map.get("total");
		 System.out.println(total);
		 List<NaverWebVo> weblist = (List<NaverWebVo>) map.get("weblist");
		 for(NaverWebVo vo : weblist){
			 System.out.println("---------------------------");
			 System.out.println(vo.getTitle());
			 System.out.println(vo.getDescription());
			 System.out.println(vo.getLink());
			 System.out.println("---------------------------");
			 
		 }*/
	}

}
