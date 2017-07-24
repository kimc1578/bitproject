package kr.co.bit;

import java.io.IOException;
import java.security.GeneralSecurityException;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import kr.co.bit.commons.Imageclassification;


@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"file:src/main/webapp/WEB-INF/spring/*-context.xml"})
public class ImageCheck {
	@Autowired
	Imageclassification imgclass;

	@Test
	public void test() {
		
	/*	try {
			imgclass.
		} catch (IOException | GeneralSecurityException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}*/
	};
	
	
}
