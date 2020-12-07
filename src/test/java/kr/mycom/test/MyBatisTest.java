package kr.mycom.test;

import javax.inject.Inject;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import kr.mycom.test.dao.MySqlDao;
import kr.mycom.test.domain.BoardVo;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations= {"file:src/main/webapp/WEB-INF/spring/root-context.xml"})
public class MyBatisTest {

	@Inject
	MySqlDao dao;
	
	@Test
	public void testBatis() {
		try {
			BoardVo vo=dao.read(2);
			System.out.println(vo);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
};
