package kr.co.bit.domain.service.user.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.bit.dao.user.BookmarkDao;
import kr.co.bit.domain.service.user.BookmarkService;
import kr.co.bit.mongo.book.dao.BookContentsDao;
import kr.co.bit.mongo.book.domain.dto.BookmarkDto;
import kr.co.bit.mongo.book.domain.vo.BookVo;

@Service
public class BookmarkServiceimpl implements BookmarkService {
	@Autowired 
	BookmarkDao bookmarkdao;
	@Override
	public List<BookVo> bookmarklist(String userid) {
		// TODO Auto-generated method stub
		return bookmarkdao.bookmarklist(userid);
	}
	@Override
	public boolean bookmarkcheck(String detailNo, String userid) {
		// TODO Auto-generated method stub
		return bookmarkdao.bookmarkcheck(detailNo, userid);
	}
	@Override
	public boolean bookmarkadd(BookmarkDto dto) {
		// TODO Auto-generated method stub
		return bookmarkdao.bookmarkadd(dto);
	}
	@Override
	public boolean bookmarksub(BookmarkDto dto) {
		// TODO Auto-generated method stub
		boolean result = bookmarkdao.bookmarksub(dto);
		System.out.println(result);
		
		return result;
	}
	@Override
	public boolean bookmarksub(String userid, String detailNo) {
		// TODO Auto-generated method stub
		boolean result = bookmarkdao.bookmarksub(userid,detailNo);
		
		return result;
	}
	
	
}
