package kr.mycom.test.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import kr.mycom.test.domain.BoardVo;
import kr.mycom.test.service.IService;

@Controller
@RequestMapping(value="/board/*")
public class BoardController {

	@Inject
	IService s;
	
	@RequestMapping(value="read", method = RequestMethod.GET )
	public ModelAndView readOne() {
		BoardVo vo=s.read(2);
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("vo",vo);
		mv.setViewName("boardList"); //forward
		return mv;
		
	}
	
	@RequestMapping(value="readJson") 
	public @ResponseBody BoardVo readList() {
		BoardVo vo=s.read(2);
		return vo;
		
	}
	
	
};
