package kr.co.bit.mobile.domain.vo;

import java.awt.print.Book;

import kr.co.bit.mongo.book.domain.vo.BookVo;

public class MobileBookCheckVo {
	@Override
	public String toString() {
		return "MobileBookCheckVo [check=" + check + ", bookvo=" + bookvo + "]";
	}
	public boolean isCheck() {
		return check;
	}
	public void setCheck(boolean check) {
		this.check = check;
	}
	public BookVo getBookvo() {
		return bookvo;
	}
	public void setBookvo(BookVo bookvo) {
		this.bookvo = bookvo;
	}
	boolean check;
	BookVo bookvo;
}
