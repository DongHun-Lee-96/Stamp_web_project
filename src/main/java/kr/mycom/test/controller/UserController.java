package kr.mycom.test.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class UserController {
	
    @RequestMapping(value="/login")
    public String loginPage(){
        return "/user/login";
    }
/*    
	@RequestMapping("/register")
	public String step() {
		return "/user/signup";
	}
*/
    @RequestMapping("/register")
    public ModelAndView register() throws Exception {
        ModelAndView mv = new ModelAndView("user/signup");
        return mv;
    }
    
    @RequestMapping(value="/mypage")
    public String myPage(){
        return "/user/mypage";
    }
}
