package kr.co.bit.domain.vo.board;

import java.sql.Date;

public class BoardItemVo {
	String bidx,title,userid,writedate;


	public String getBidx() {
		return bidx;
	}


	public void setBidx(String bidx) {
		this.bidx = bidx;
	}


	public String getTitle() {
		return title;
	}


	public void setTitle(String title) {
		this.title = title;
	}


	public String getUserid() {
		return userid;
	}


	public void setUserid(String userid) {
		this.userid = userid;
	}




	public String getWritedate() {
		return writedate;
	}


	public void setWritedate(String writedate) {
		this.writedate = writedate;
	}


	@Override
	public String toString() {
		return "BoardItemVo [bidx=" + bidx + ", title=" + title + ", userid=" + userid + ", writedate=" + writedate
				+ "]";
	}


}
