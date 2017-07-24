package kr.co.bit.mongo.book.domain.vo;

import java.util.ArrayList;

import org.springframework.data.annotation.Id;

public class Test2Vo {
	@Id
	String id;
	String test;
	ArrayList<Integer> arr;
	RichVo rich;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getTest() {
		return test;
	}
	public void setTest(String test) {
		this.test = test;
	}
	public ArrayList<Integer> getArr() {
		return arr;
	}
	public void setArr(ArrayList<Integer> arr) {
		this.arr = arr;
	}
	public RichVo getRich() {
		return rich;
	}
	public void setRich(RichVo rich) {
		this.rich = rich;
	}
	@Override
	public String toString() {
		return "Test2Vo [id=" + id + ", test=" + test + ", arr=" + arr + ", rich=" + rich + "]";
	}
	
	
	
}


