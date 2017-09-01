package kr.co.bit.domain.service.search.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.bit.domain.service.search.BookElasticSearch;
import kr.co.bit.elastic.book.dao.Book_Elastic_Dao;
import kr.co.bit.mongo.book.domain.vo.BookListVo;


@Service
public class BookElasticSearchimpl implements BookElasticSearch{
		
@Autowired
Book_Elastic_Dao el_dao;

@Override
public List<BookListVo> book_list(String title, int page,int size) {
	// TODO Auto-generated method stub
	return el_dao.book_list(title, page,size);
}

@Override
public int total_book_list_size(String title) {
	// TODO Auto-generated method stub
	return el_dao.total_book_list_size(title);
}

@Override
public List<BookListVo> book_data(int page) {
	// TODO Auto-generated method stub
	return el_dao.book_data(page);
}

	
	
}
