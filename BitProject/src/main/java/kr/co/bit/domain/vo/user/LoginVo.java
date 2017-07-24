package kr.co.bit.domain.vo.user;

public class LoginVo {
	private String userid,username;

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	@Override
	public String toString() {
		return "LoginVo [userid=" + userid + ", username=" + username + "]";
	}
	
}
