package kr.co.bit.mongo.book.domain.vo;

import org.springframework.data.annotation.Id;

public class Keyword {
	@Id
	String id ;
	String keyword;
	@Override
	public String toString() {
		return "Keyword [id=" + id + ", keyword=" + keyword + "]";
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getKeyword() {
		return keyword;
	}
	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}
}
