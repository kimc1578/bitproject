package kr.co.bit.domain.service.search;

import java.util.List;

import kr.co.bit.mongo.book.domain.vo.BookVo;

public interface BookSearch {
	
	public List<BookVo> bookfindAll(int page,String title);
	public int bookcount();
	public List<BookVo> bookfindAll(String title);
}
