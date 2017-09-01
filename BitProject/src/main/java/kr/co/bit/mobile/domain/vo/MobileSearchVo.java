package kr.co.bit.mobile.domain.vo;

import java.util.List;

import kr.co.bit.mongo.book.domain.vo.BookListVo;

public class MobileSearchVo {
	int total;
	@Override
	public String toString() {
		return "MobileSearchVo [total=" + total + ", booklistvo=" + booklistvo + "]";
	}
	List<BookListVo> booklistvo;
	
	public List<BookListVo> getBooklistvo() {
		return booklistvo;
	}
	public void setBooklistvo(List<BookListVo> booklistvo) {
		this.booklistvo = booklistvo;
	}
	public int getTotal() {
		return total;
	}
	public void setTotal(int total) {
		this.total = total;
	}
	
	
}
