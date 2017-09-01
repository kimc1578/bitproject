package kr.co.bit.dao.board;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.bit.domain.dto.board.BoardDto;
import kr.co.bit.domain.dto.board.DeleteBoardDto;
import kr.co.bit.domain.dto.board.InsertBoardDto;
import kr.co.bit.domain.dto.board.ModifyBoardDto;
import kr.co.bit.domain.vo.board.BoardItemVo;
import kr.co.bit.domain.vo.board.BoardVo;
import kr.co.bit.domain.vo.user.UserInfoVo;


public interface BoardDao {
		
		public List<BoardItemVo>selectAll_User(String userid);
		
		public int insertBoard(InsertBoardDto boarddto);
		
		public int modifyBoard(ModifyBoardDto boarddto);
		
	
		
		public int deleteBoard(DeleteBoardDto boarddto);

		BoardVo selectBoard(BoardDto BoardDto);
	
		List<HashMap<String, String>> answercheck(String userid);
}
