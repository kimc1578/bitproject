package kr.co.bit.domain.service.user;

import java.util.ArrayList;
import java.util.List;

import kr.co.bit.mongo.book.domain.dto.BookmarkDto;
import kr.co.bit.mongo.book.domain.vo.BookVo;

public interface BookmarkService {
	boolean bookmarksub(String userid, String detailNo);
		public List<BookVo> bookmarklist(String userid);
		public boolean bookmarkcheck(String detailNo,String userid);
		public boolean bookmarkadd(BookmarkDto dto);
		public boolean bookmarksub(BookmarkDto dto);
}
