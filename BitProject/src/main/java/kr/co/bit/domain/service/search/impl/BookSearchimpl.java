package kr.co.bit.domain.service.search.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.bit.domain.service.search.BookSearch;
import kr.co.bit.mongo.book.dao.BookContentsDao;
import kr.co.bit.mongo.book.domain.vo.BookVo;

@Service
public class BookSearchimpl implements BookSearch {
		@Autowired
		BookContentsDao bookdao;

		@Override
		public List<BookVo> bookfindAll(int page,String title) {
			// TODO Auto-generated method stub
			
			return bookdao.bookfindAll(page,title);
		}

		@Override
		public int bookcount() {
			// TODO Auto-generated method stub
			return bookdao.bookcount();
		}
		
	

}
