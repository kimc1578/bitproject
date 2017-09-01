package kr.co.bit.dao.user.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.data.mongodb.core.query.Criteria;
import org.springframework.data.mongodb.core.query.Query;
import org.springframework.stereotype.Repository;

import kr.co.bit.dao.user.BookmarkDao;
import kr.co.bit.mongo.book.domain.dto.BookmarkDto;
import kr.co.bit.mongo.book.domain.vo.BookMarkVo;
import kr.co.bit.mongo.book.domain.vo.BookVo;

@Repository
public class BookmarkDaoimpl implements BookmarkDao {
	@Autowired
	private MongoTemplate mongoTemplate;
	@Override
	public List<BookVo> bookmarklist(String userid) {
		
		Criteria cri = new Criteria("userid").is(userid);
		Query query = new Query(cri);
		
		
		return mongoTemplate.find(query, BookVo.class, "bookmark");
	
	}
	@Override
	public boolean bookmarkcheck(String detailNo, String userid) {
		
		Criteria cri = new Criteria("userid").is(userid);
		cri.andOperator(new Criteria("detailNo").is(detailNo));
		
		Query query = new Query(cri);
		BookMarkVo vo =mongoTemplate.findOne(query,BookMarkVo.class,"bookmark");
		if(vo==null){
			return false;
		}else {
			return true;
		}
		
		
		
	}
	@Override
	public boolean bookmarkadd(BookmarkDto dto) {
		// TODO Auto-generated method stub
		mongoTemplate.insert(dto, "bookmark");
		
		Criteria cri = new Criteria("detailNo").is(dto.getDetailNo());
		cri.andOperator(new Criteria("userid").is(dto.getUserid()));
		Query query = new Query(cri);
		
		 BookMarkVo vo = mongoTemplate.findOne(query, BookMarkVo.class,"bookmark");
		  if(vo==null){
			  System.out.println(vo);
			  return false;
		  }else{
			  System.out.println(vo);
			  return true;
		  }
		
	}
	@Override
	public boolean bookmarksub(BookmarkDto dto){
		Criteria cri2 = new Criteria("detailNo").is(dto.getDetailNo());
		cri2.andOperator(new Criteria("userid").is(dto.getUserid()));
		
		Query query2 = new Query(cri2);
		
		mongoTemplate.remove(query2,  "bookmark");
		
		
		Criteria cri = new Criteria("detailNo").is(dto.getDetailNo());
		cri.andOperator(new Criteria("userid").is(dto.getUserid()));
		Query query = new Query(cri);
		
		 BookMarkVo vo = mongoTemplate.findOne(query, BookMarkVo.class,"bookmark");
		  if(vo==null){
			  System.out.println("sub");
			  System.out.println(vo);
			  return false;
		  }else{
			  
			  return true;
		  }
	}

	@Override
	public boolean bookmarksub(String userid,String detailNo){
		Criteria cri2 = new Criteria("detailNo").is(detailNo);
		cri2.andOperator(new Criteria("userid").is(userid));
		
		Query query2 = new Query(cri2);
		
		mongoTemplate.remove(query2,  "bookmark");
		
		
		Criteria cri = new Criteria("detailNo").is(detailNo);
		cri.andOperator(new Criteria("userid").is(userid));
		Query query = new Query(cri);
		
		 BookMarkVo vo = mongoTemplate.findOne(query, BookMarkVo.class,"bookmark");
		  if(vo==null){
			  System.out.println("sub");
			  System.out.println(vo);
			  return true;
		  }else{
			  
			  return false;
		  }
	}
	
	
}
