package kr.co.bit.domain.service.user;

import kr.co.bit.domain.dto.user.LoginDto;
import kr.co.bit.domain.dto.user.UserJoinDto;
import kr.co.bit.domain.dto.user.UserModiDto;
import kr.co.bit.domain.vo.user.LoginVo;
import kr.co.bit.domain.vo.user.UserInfoVo;

public interface UserService {
	public UserInfoVo userinfo(String userid);
	
	public int userid_check(String userid);
	
	public int userJoin(UserJoinDto dto);
	
	public int userinfomodi(UserModiDto dto);
	
	public int userdelete(String userid);
	public LoginVo userlogin(LoginDto dto);

}
