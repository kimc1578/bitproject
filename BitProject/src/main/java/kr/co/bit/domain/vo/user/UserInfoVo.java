package kr.co.bit.domain.vo.user;

public class UserInfoVo {
	String userid,username,email;

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

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	@Override
	public String toString() {
		return "UserInfoVo [userid=" + userid + ", username=" + username + ", email=" + email + "]";
	}
	
}
