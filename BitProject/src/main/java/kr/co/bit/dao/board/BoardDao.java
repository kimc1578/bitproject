package kr.co.bit.dao.board;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.bit.domain.vo.board.BoardItemVo;


public interface BoardDao {
	
		public List<BoardItemVo>selectAll();

	
	
}
