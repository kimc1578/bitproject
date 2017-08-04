package kr.co.bit.mongo.book.dao;

import java.util.List;

import kr.co.bit.mongo.book.domain.vo.BookVo;
import kr.co.bit.mongo.book.domain.vo.Test2Vo;
import kr.co.bit.mongo.book.domain.vo.TestVo;

public interface BookContentsDao {
			
	
			public BookVo bookfind();
			
			public int bookcount();
			public List<BookVo> bookfindAll(int page,String title);

			public List<BookVo> bookfindAll(String title);
			
		
			
}
