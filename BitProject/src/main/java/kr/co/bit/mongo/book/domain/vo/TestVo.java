package kr.co.bit.mongo.book.domain.vo;

import org.springframework.data.annotation.Id;

public class TestVo {
	
	@Id
	String id;
	
	String detail;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getDetail() {
		return detail;
	}

	public void setDetail(String detail) {
		this.detail = detail;
	}

	@Override
	public String toString() {
		return "TestVo [id=" + id + ", detail=" + detail + "]";
	}
}
