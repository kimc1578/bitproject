package kr.co.bit.domain.service.search.impl;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.bit.domain.service.search.BookSearch;
import kr.co.bit.mongo.book.dao.BookContentsDao;
import kr.co.bit.mongo.book.domain.vo.BookDetailVo;
import kr.co.bit.mongo.book.domain.vo.BookVo;
import kr.co.bit.mongo.book.domain.vo.Keyword;

@Service
public class BookSearchimpl implements BookSearch {
		@Autowired
		BookContentsDao bookdao;

		@Override
		public BookVo bookinfoselect(String detailNo) {
			// TODO Auto-generated method stub
		
			
			
			return bookdao.bookdetailfind(detailNo);
		}

		@Override
		public BookDetailVo bookdetailselect(String detailNo) {
			// TODO Auto-generated method stub
			return bookdao.bookDetailfind2(detailNo);
		}

		@Override
		public List<Keyword> keywordAll() {
			// TODO Auto-generated method stub
			return bookdao.keywordAll();
		}

		@Override
		public List<BookVo> defalutbookinfo() {
			// TODO Auto-generated method stub
			return bookdao.defalutbookinfo();
		}

		

}
