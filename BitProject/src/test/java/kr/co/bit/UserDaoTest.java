package kr.co.bit;

import static org.junit.Assert.*;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import kr.co.bit.dao.user.UserDao;
import kr.co.bit.domain.dto.user.UserJoinDto;
import kr.co.bit.domain.dto.user.UserModiDto;
import kr.co.bit.domain.vo.user.UserInfoVo;
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"file:src/main/webapp/WEB-INF/spring/root-context.xml"})
public class UserDaoTest {
	
	@Autowired
	UserDao userdao;
	@Test
	public void test() {
		//회원정보
		//UserInfoVo vo	 =userdao.userinfo("user01");
	
		//	System.out.println(vo);
		
		//아이디 중복체크
		/*int  result =  userdao.userid_check("user014");
		System.out.println(result);*/
		
		//회원가입
		/*
		UserJoinDto dto = new UserJoinDto();
		dto.setUserid("bitman");
		dto.setUsername("비트맨");
		dto.setEmail("bit33@bit.com");
		dto.setUserpw("1234");
		int result = userdao.userJoin(dto);
		System.out.println(result);*/
		
		
		//회원 정보 수정
		
		/*UserModiDto dto = new UserModiDto();
		
		dto.setUserid("testid01");
		dto.setUserpw("12345");
		dto.setEmail("bit33@yahoo.co.kr");
		
		
		  int result =userdao.userinfomodi(dto);
		  System.out.println(result);
		*/
		
		System.out.println(userdao.userdelete("testid012"));
		
		
	}

}
