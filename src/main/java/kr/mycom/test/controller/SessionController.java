package kr.mycom.test.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import kr.mycom.test.domain.AuthorVO;
import kr.mycom.test.domain.UserVO;

@Controller
public class SessionController {
	/*
    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String login() {
        return "/user/login";
    }
   
    @RequestMapping(value="/login", method=RequestMethod.POST)
    public ModelAndView loginSuccess(@Valid LoginCommand loginCommand, BindingResult bindingResult,
                                    HttpSession session, HttpServletResponse response) throws Exception {
 
        if(bindingResult.hasErrors()) {
            ModelAndView mv = new ModelAndView("user/login/");
            return mv;
        }
        
        try {
            
            AuthorVO authorvo = userSer.loginAuth(loginCommand);
            session.setAttribute("authorvo", authorvo);
            
        } catch (Exception e) {
            bindingResult.rejectValue("pw", "notMatch", "아이디와 비밀번호가 맞지않습니다.");
            ModelAndView mv = new ModelAndView("user/login/loginForm");
            return mv;
        }
        
        ModelAndView mv = new ModelAndView("login/loginSuccess");
        return mv;
    }
    */

    @RequestMapping(value = "/login/req", method = RequestMethod.POST)
    public String loginCheck(HttpServletRequest req, HttpServletResponse res, HttpSession session) {
        String userid = req.getParameter("userid");
        String password = req.getParameter("password");
        
        System.out.println(">_< 1234");
        // check DB 
        // if it is right, add session.
        session.setAttribute("userid", userid);
        session.setAttribute("password", password);
    	
        return "redirect:/";
    }
    
    @RequestMapping(value="/logout")
    public String logout(HttpSession session){
        session.invalidate();
        return "/user/login";
    }

}

/*
@Controller
public class HomeController {
    @RequestMapping(value = "/login.do", method = RequestMethod.GET)
    public String login(){
        
        return "menu/login";
    }
    
    @Resource(name="LoginDAO")
    LoginDAO dao;
    
    @RequestMapping(value = "/login.action", method = RequestMethod.GET)
    public String loginAction(HttpServletRequest req, HttpServletResponse res, HttpSession session){
        LoginVO loginVO = new LoginVO();
        String U_ID;
        String U_PW;
        
        U_ID = dao.getID(32);
        U_PW = dao.getPW(32);
        
        String userId = req.getParameter("userId");
        String userPw = req.getParameter("userPw");
        String returnURL = "";
        if(userId.equals(U_ID)&&userPw.equals(U_PW)){
            session.setAttribute("userId", userId);
            returnURL = "redirect:/main.do";
        }
        else{
            returnURL = "redirect:/";
        }
        
        return returnURL;
        
    }
    
    @RequestMapping(value = "/main.do", method = RequestMethod.GET)
    public String main(){
        
        return "home";
    }
    
    @RequestMapping(value="/logout.do")
    public String logout(HttpSession session){
        session.invalidate();
        return "redirect:/login.do";
    }
 
}
*/
