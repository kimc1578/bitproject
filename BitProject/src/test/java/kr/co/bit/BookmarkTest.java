package kr.co.bit;

import static org.junit.Assert.*;

import java.util.ArrayList;
import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import kr.co.bit.dao.user.BookmarkDao;
import kr.co.bit.domain.service.user.BookmarkService;
import kr.co.bit.mongo.book.dao.BookContentsDao;
import kr.co.bit.mongo.book.domain.dto.BookmarkDto;
import kr.co.bit.mongo.book.domain.vo.BookVo;
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"file:src/main/webapp/WEB-INF/spring/*-context.xml"})
public class BookmarkTest {
	@Autowired
	BookmarkDao bookmarkdao;
	@Autowired
	BookContentsDao bookcontents;
	@Autowired
	BookmarkService bookmarkservice;
/*	@Test
	public void test() {
		List<Integer> arr=  bookmarkdao.bookmarklist("user01");
		List<BookVo> bookmarklist = new ArrayList<>();

		for(Integer idx:arr){
			String detailno= ""+idx;
			bookmarklist.add(bookcontents.bookdetailfind(detailno));
		}
		System.out.println(bookmarklist);
		
		
	}*/
	@Test
	public void test2(){
		BookmarkDto dto= new BookmarkDto();
		dto.setDetailNo("1");
		dto.setImage("1");
		dto.setPrice("1");
		dto.setPublisher("1");
		dto.setSubtitle("1");
		dto.setTitle("1");
		dto.setUserid("1");
		dto.setWriter("1");
		System.out.println(bookmarkdao.bookmarkadd(dto));
		
	}

}
