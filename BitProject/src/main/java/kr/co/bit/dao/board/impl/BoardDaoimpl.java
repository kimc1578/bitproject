package kr.co.bit.dao.board.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.bit.dao.board.BoardDao;
import kr.co.bit.domain.vo.board.BoardItemVo;

@Repository
public class BoardDaoimpl implements BoardDao{
	String namespace = "kr.co.bit.mapper.BoardMapper";	
	
	@Autowired
	SqlSession session;


	@Override
	public List<BoardItemVo> selectAll() {
		// TODO Auto-generated method stub
		System.out.println(session);
		  List<BoardItemVo>boardlist =session.selectList(namespace+".selectall");
		  
		
		return boardlist;
	}



}
