package kr.co.bit.domain.service.search;

import java.util.List;

import kr.co.bit.mongo.book.domain.vo.BookListVo;

public interface BookElasticSearch {
	public  List<BookListVo> book_list(String title,int page,int size);
	public  int total_book_list_size(String title);
	List<BookListVo> book_data(int page);
}
