package kr.co.bit.dao.board.impl;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.bit.dao.board.BoardDao;
import kr.co.bit.domain.dto.board.BoardDto;
import kr.co.bit.domain.dto.board.DeleteBoardDto;
import kr.co.bit.domain.dto.board.InsertBoardDto;
import kr.co.bit.domain.dto.board.ModifyBoardDto;
import kr.co.bit.domain.vo.board.BoardItemVo;
import kr.co.bit.domain.vo.board.BoardVo;
import kr.co.bit.domain.vo.user.UserInfoVo;

@Repository
public class BoardDaoimpl implements BoardDao {
	String namespace = "kr.co.bit.mapper.BoardMapper";

	@Autowired
	SqlSession session;

	//유저가 작성한 게시글 리스트
	@Override
	public List<BoardItemVo> selectAll_User(String userid) {
		// TODO Auto-generated method stub

		return session.selectList(namespace + ".selectall",userid);
	}


	//게시글 수정
	@Override
	public int modifyBoard(ModifyBoardDto boarddto) {
		// TODO Auto-generated method stub
		return session.update(namespace+".update_board", boarddto);
	}
	//게시글 읽기
	@Override
	public BoardVo selectBoard(BoardDto BoardDto) {
		// TODO Auto-generated method stub

		return session.selectOne(namespace+".selectboard", BoardDto);
	}

	//게시글 삭제
	@Override
	public int deleteBoard(DeleteBoardDto boarddto) {
		// TODO Auto-generated method stub
		
		
		return session.delete(namespace+".delete_board", boarddto);
	}


	//게시글 작성 
	@Override
	public int insertBoard(InsertBoardDto boarddto) {
		// TODO Auto-generated method stub
		return session.insert(namespace+".insert_board", boarddto);
	}


	@Override
	public List<HashMap<String, String>> answercheck(String userid) {
		// TODO Auto-generated method stub
		return session.selectList(namespace+".answer_check",userid);
	}



	




}
