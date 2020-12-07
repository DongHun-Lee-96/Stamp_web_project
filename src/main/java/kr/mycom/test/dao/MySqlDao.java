package kr.mycom.test.dao;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kr.mycom.test.domain.BoardVo;

@Repository
public class MySqlDao {

	@Inject
	private SqlSession session;
	
	private static String namespace = "kr.mycom.test.mapper.BoardMapper";
	

	public BoardVo read(Integer bno) throws Exception {
		
		if(session!=null) {
			System.out.println("¿À·ù");
		}
		 return session.selectOne(namespace + ".read", bno);
		
	}
	
};
