package kr.co.bit.mongo.book.dao;

import java.util.List;

import kr.co.bit.mongo.book.domain.vo.BookDetailVo;
import kr.co.bit.mongo.book.domain.vo.BookVo;
import kr.co.bit.mongo.book.domain.vo.Keyword;


public interface BookContentsDao {
			
	
	
		
		
			
			public BookVo bookdetailfind(String detailNo);

			BookDetailVo bookDetailfind2(String detailNo);

			List<Keyword> keywordAll();

			public List<BookVo> defalutbookinfo();
			
			
}
