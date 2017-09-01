package kr.co.bit.domain.service.user.impl;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.bit.dao.user.UserDao;
import kr.co.bit.domain.dto.user.LoginDto;
import kr.co.bit.domain.dto.user.UserJoinDto;
import kr.co.bit.domain.dto.user.UserModiDto;
import kr.co.bit.domain.service.user.UserService;
import kr.co.bit.domain.vo.user.LoginVo;
import kr.co.bit.domain.vo.user.UserInfoVo;

@Service
public class UserServiceimpl implements UserService {
	@Autowired 
	UserDao userdao;
	
	

	@Override
	public UserInfoVo userinfo(String userid) {
		// TODO Auto-generated method stub
		return userdao.userinfo(userid);
	}

	@Override
	public int userid_check(String userid) {
		// TODO Auto-generated method stub
		return userdao.userid_check(userid);
	}

	@Override
	public int userJoin(UserJoinDto dto) {
		// TODO Auto-generated method stub
		return userdao.userJoin(dto);
	}

	@Override
	public int userinfomodi(UserModiDto dto) {
		// TODO Auto-generated method stub
		return userdao.userinfomodi(dto);
	}

	@Override
	public int userdelete(String userid) {
		// TODO Auto-generated method stub
		return userdao.userdelete(userid);
	}

	@Override
	public LoginVo userlogin(LoginDto dto) {
		// TODO Auto-generated method stub
		return userdao.userlogin(dto);
	}

	@Override
	public int passcheck(LoginDto dto) {
		// TODO Auto-generated method stub
		return userdao.passcheck(dto);
	}

	@Override
	public int userpassmodi(HashMap<String, String> hashMap) {
		// TODO Auto-generated method stub
		return userdao.userpassmodi(hashMap);
	}
	
	
	
}
