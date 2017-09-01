package kr.co.bit.mobile.domain.vo;

import kr.co.bit.mongo.book.domain.vo.BookDetailVo;
import kr.co.bit.mongo.book.domain.vo.BookVo;

public class MobileBookdetailVo {
	boolean bookmarkcheck;
	BookVo bookinfo;
	BookDetailVo bookdetai;
	@Override
	public String toString() {
		return "MobileBookdetailVo [bookmarkcheck=" + bookmarkcheck + ", bookinfo=" + bookinfo + ", bookdetai="
				+ bookdetai + "]";
	}
	public boolean isBookmarkcheck() {
		return bookmarkcheck;
	}
	public void setBookmarkcheck(boolean bookmarkcheck) {
		this.bookmarkcheck = bookmarkcheck;
	}
	public BookVo getBookinfo() {
		return bookinfo;
	}
	public void setBookinfo(BookVo bookinfo) {
		this.bookinfo = bookinfo;
	}
	public BookDetailVo getBookdetai() {
		return bookdetai;
	}
	public void setBookdetai(BookDetailVo bookdetai) {
		this.bookdetai = bookdetai;
	}

}
