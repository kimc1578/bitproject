package kr.co.bit;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import kr.co.bit.domain.service.user.UserService;
import kr.co.bit.domain.vo.user.UserInfoVo;


@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"file:src/main/webapp/WEB-INF/spring/root-context.xml"})
public class UserServiceTest {
	
	@Autowired
	UserService userService;
	
	@Test
	public void userseviceTest(){
			
		UserInfoVo vo = userService.userinfo("user01");
		System.out.println(vo);
		
	}
	
}
