package kr.co.bit.dao.user;

import java.util.List;

import kr.co.bit.mongo.book.domain.dto.BookmarkDto;
import kr.co.bit.mongo.book.domain.vo.BookVo;

public interface BookmarkDao {
		public List<BookVo>bookmarklist(String userid);
		public boolean bookmarkcheck(String detailNo,String userid);
		public boolean bookmarkadd(BookmarkDto dto);
		boolean bookmarksub(BookmarkDto dto);
		boolean bookmarksub(String userid, String detailNo);
		
}