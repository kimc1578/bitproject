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
import kr.co.bit.mongo.book.domain.vo.BookVo;
import kr.co.bit.mongo.book.domain.vo.Test2Vo;
import kr.co.bit.mongo.book.domain.vo.TestVo;
import oracle.net.aso.q;

@Repository
public class BookContentsDaoimpl implements BookContentsDao {
	
	@Autowired
	private MongoTemplate mongoTemplate;
	
	
	@Override
	public BookVo bookfind() {
		// TODO Auto-generated method stub
		BookVo vo =mongoTemplate.findOne(new Query(),BookVo.class, "test4");
		
		return vo;
	
	
	}


	@Override
	public List<BookVo> bookfindAll(int page,String title) {
		// TODO Auto-generated method stub
		Criteria cri = new Criteria("title");
		
		System.out.println(title);
		cri.regex(title,"i");
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
	}

/*
	@Override
	public List<TestVo> testfindAll() {
		// TODO Auto-generated method stub

	
		return mongoTemplate.find(new Query(), TestVo.class,"detail");
	}


	@Override
	public List<Test2Vo> test2findAll() {
		// TODO Auto-generated method stub
		
		//조건걸기 
		//is 메소드
		// 몽고 DB  {필드명 :$eq:값 } or {필드명 : 값} 같은 표현이다.
		Criteria criteria =new Criteria("test").is("test");
	
		
		
		Query query = new Query(criteria);
		query.limit(2);
		
		return mongoTemplate.find(query, Test2Vo.class,"test2");
	}
*/


	
		
}
