package kr.co.bit.dao.user.impl;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.bit.dao.user.UserDao;
import kr.co.bit.domain.dto.user.LoginDto;
import kr.co.bit.domain.dto.user.UserJoinDto;
import kr.co.bit.domain.dto.user.UserModiDto;
import kr.co.bit.domain.vo.user.LoginVo;
import kr.co.bit.domain.vo.user.UserInfoVo;
@Repository
public class UserDaoimpl implements UserDao {
	private final String namespace = "kr.co.bit.mapper.UserMapper";
	
	@Autowired
	SqlSession session;
	 
	@Override
	public UserInfoVo userinfo(String userid) {
		// TODO Auto-generated method stub
		return session.selectOne(namespace+".userinfo",userid);
		
	}

	@Override
	public int userid_check(String userid) {
		// TODO Auto-generated method stub
		return session.selectOne(namespace+".userid_check", userid);
	}

	@Override
	public int userJoin(UserJoinDto dto) {
		// TODO Auto-generated method stub
		return session.insert(namespace+".userinsert", dto);
	}

	@Override
	public int userinfomodi(UserModiDto dto) {
		// TODO Auto-generated method stub
		return session.update(namespace+".modiuserinfo", dto);
	}

	@Override
	public int userdelete(String userid) {
		// TODO Auto-generated method stub
		
		
		return session.delete(namespace+".deleteuser", userid);
	}

	@Override
	public LoginVo userlogin(LoginDto dto) {
		// TODO Auto-generated method stub
		
		return session.selectOne(namespace+".user_login", dto);
	}

}
