package kr.co.bit.mongo.book.dao.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.data.mongodb.core.query.Criteria;
import org.springframework.data.mongodb.core.query.Query;
import org.springframework.stereotype.Repository;

import kr.co.bit.mongo.book.dao.BookContentsDao;
import kr.co.bit.mongo.book.domain.vo.BookDetailVo;
import kr.co.bit.mongo.book.domain.vo.BookVo;
import kr.co.bit.mongo.book.domain.vo.Keyword;

import oracle.net.aso.q;

@Repository
public class BookContentsDaoimpl implements BookContentsDao {
	
	@Autowired
	private MongoTemplate mongoTemplate;
	
	
/*	@Override
	public BookVo bookfind() {
		// TODO Auto-generated method stub
		BookVo vo =mongoTemplate.findOne(new Query(),BookVo.class, "test4");
		
		return vo;
	
	
	}*/
/*
	@Override
	public List<BookVo> bookfindAll(String title) {
		// TODO Auto-generated method stub
		Criteria cri = new Criteria("title");
		
		
		cri.regex(title,"i");
		
		Query query = new Query(cri);
	
		//query.limit(10);
		//정렬
		Sort sort = new Sort(Direction.DESC, "title");
		query.with(sort);
		//
		//query.skip((page-1)*10);
		
		return mongoTemplate.find(query, BookVo.class, "test4");
	}*/
	

	/*@Override
	public List<BookVo> bookfindAll(int page,String title) {
		// TODO Auto-generated method stub
		Criteria cri = new Criteria("title");
		
	
		cri.regex(title,"i");
			//조건 중첩
		Criteria cri2 = new Criteria("writer");
		cri2.is("이관철");
		cri.andOperator(cri2);
		Query query = new Query(cri);
	
		query.limit(10);
		//정렬
		Sort sort = new Sort(Direction.DESC, "title");
		query.with(sort);
		//
		query.skip((page-1)*10);
		
		return mongoTemplate.find(query, BookVo.class, "test4");
	}


	@Override
	public int bookcount() {
		// TODO Auto-generated method stub
	
		return (int) mongoTemplate.count(new Query(), "test4");
	}*/

	@Override
	public BookVo bookdetailfind(String detailNo) {
		// TODO Auto-generated method stub
		
		Criteria cri = new Criteria("detailNo");
		cri.is(detailNo);
		
		Query query = new Query(cri);
		
		BookVo vo = mongoTemplate.findOne(query, BookVo.class, "book_list");
		
		
		
		return vo;
	}
	
	@Override
	public BookDetailVo bookDetailfind2(String detailNo){
		
		Criteria cri = new Criteria("origin");
		 cri.regex(detailNo);
		 Query query= new Query(cri);
		 
		 BookDetailVo  vo =  mongoTemplate.findOne(query, BookDetailVo.class,"book_detail");
		
		return vo;
	}
	

	
	
  @Override
  public List<Keyword> keywordAll(){
	  
	  
	  
	  return mongoTemplate.find(new Query(), Keyword.class, "keyWord");
	  
	  
  }

@Override
public List<BookVo> defalutbookinfo() {
	// TODO Auto-generated method stub
	Criteria cri = new Criteria("title");
	cri.regex("Jquery","i");
	Query query = new Query(cri);
	query.limit(20);
	
	
	return mongoTemplate.find(query, BookVo.class, "book_list");
}



	
		
}
