package kr.co.bit.domain.service.search;

import java.util.HashMap;
import java.util.List;

import kr.co.bit.mongo.book.domain.vo.BookDetailVo;
import kr.co.bit.mongo.book.domain.vo.BookVo;
import kr.co.bit.mongo.book.domain.vo.Keyword;

public interface BookSearch {
	
	public BookDetailVo bookdetailselect(String detailNo);
	List<BookVo> defalutbookinfo();
	BookVo bookinfoselect(String detailNo);
	List<Keyword> keywordAll();
}
