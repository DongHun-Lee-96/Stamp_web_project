package kr.mycom.test.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class NavController {
	@RequestMapping(value = "/services", method = RequestMethod.GET)
	public String service() {
		return "/services";
	}
	
	@RequestMapping(value = "/customerservice", method = RequestMethod.GET)
	public String customerService() {
		return "/customerservice";
	}
	
	@RequestMapping(value = "/aboutus", method = RequestMethod.GET)
	public String aboutUs() {
		return "/aboutus";
	}
}
