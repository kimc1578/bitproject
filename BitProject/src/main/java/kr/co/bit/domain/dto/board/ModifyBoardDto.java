package kr.co.bit.domain.dto.board;

public class ModifyBoardDto {
	String bidx,title,contents,userid;

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
	
}
