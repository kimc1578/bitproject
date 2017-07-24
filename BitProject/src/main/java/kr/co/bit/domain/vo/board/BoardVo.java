package kr.co.bit.domain.vo.board;

public class BoardVo {
	String bidx,title,contents,userid,writedate;

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

	public String getContents() {
		return contents;
	}

	public void setContents(String contents) {
		this.contents = contents;
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
		return "BoardVo [bidx=" + bidx + ", title=" + title + ", contents=" + contents + ", userid=" + userid
				+ ", writedate=" + writedate + "]";
	}


	
}
