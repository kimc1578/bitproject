package kr.co.bit.domain.dto.user;

public class LoginDto {
	private String userid,userpw;

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public String getUserpw() {
		return userpw;
	}

	public void setUserpw(String userpw) {
		this.userpw = userpw;
	}

	@Override
	public String toString() {
		return "LoginDto [userid=" + userid + ", userpw=" + userpw + "]";
	}
	
}
