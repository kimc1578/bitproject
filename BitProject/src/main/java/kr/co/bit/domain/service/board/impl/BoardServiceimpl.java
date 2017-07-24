package kr.co.bit.domain.service.board.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.bit.dao.board.BoardDao;
import kr.co.bit.domain.dto.board.BoardDto;
import kr.co.bit.domain.dto.board.DeleteBoardDto;
import kr.co.bit.domain.dto.board.InsertBoardDto;
import kr.co.bit.domain.dto.board.ModifyBoardDto;
import kr.co.bit.domain.service.board.BoardService;
import kr.co.bit.domain.vo.board.BoardItemVo;
import kr.co.bit.domain.vo.board.BoardVo;


@Service
public class BoardServiceimpl  implements BoardService{
	
	@Autowired
	BoardDao dao;

	@Override
	public List<BoardItemVo> selectAll_User(String userid) {
		// TODO Auto-generated method stub
		return dao.selectAll_User(userid);
	}

	@Override
	public int insertBoard(InsertBoardDto boarddto) {
		// TODO Auto-generated method stub
		return dao.insertBoard(boarddto);
	}

	@Override
	public int modifyBoard(ModifyBoardDto boarddto) {
		// TODO Auto-generated method stub
		return dao.modifyBoard(boarddto);
	}

	@Override
	public int deleteBoard(DeleteBoardDto boarddto) {
		// TODO Auto-generated method stub
		return dao.deleteBoard(boarddto);
	}

	@Override
	public BoardVo selectBoard(BoardDto BoardDto) {
		// TODO Auto-generated method stub
		return dao.selectBoard(BoardDto);
	}
	

	
	
}
