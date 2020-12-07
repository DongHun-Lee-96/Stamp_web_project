package kr.mycom.test.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.mycom.test.dao.MySqlDao;
import kr.mycom.test.domain.BoardVo;

@Service
public class ServiceImpl implements IService {

	@Inject
	MySqlDao dao;
	
	@Override
	public BoardVo read(int bno) {
		System.out.println("read..서비스시작");
		
		BoardVo vo = null;
		try {
			vo = dao.read(bno);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return vo;
	}

};
