package kr.co.bit.mongo.book.domain.vo;

import java.util.ArrayList;

public class RichVo{
	String rich_test1;
	String rich_test2;
	ArrayList<Integer>rich_arr;
	public String getRich_test1() {
		return rich_test1;
	}
	public void setRich_test1(String rich_test1) {
		this.rich_test1 = rich_test1;
	}
	public String getRich_test2() {
		return rich_test2;
	}
	public void setRich_test2(String rich_test2) {
		this.rich_test2 = rich_test2;
	}
	public ArrayList<Integer> getRich_arr() {
		return rich_arr;
	}
	public void setRich_arr(ArrayList<Integer> rich_arr) {
		this.rich_arr = rich_arr;
	}
	@Override
	public String toString() {
		return "RichVo [rich_test1=" + rich_test1 + ", rich_test2=" + rich_test2 + ", rich_arr=" + rich_arr + "]";
	}
	
	
}