package kr.pe.bsk.controller;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.pe.bsk.domain.MemberVO;
import kr.pe.bsk.service.MemberService;

@Controller
@RequestMapping("blog")
public class MemberController {
	
	private static final Logger logger = LoggerFactory.getLogger(BoardController.class);

	@Autowired
	private MemberService service;
	
	@RequestMapping(value="signup",method = RequestMethod.GET)
	public void signup(MemberVO member, Model model) throws Exception{
		logger.info("signup.get..");
	}
	
	@RequestMapping(value="signup",method = RequestMethod.POST)
	public String signup(MemberVO member, Model model,RedirectAttributes ra) throws Exception{
		logger.info("signup.POST...");
		logger.info(member.toString());
		
		service.regist(member);
		ra.addFlashAttribute("msg", "SUCCESS");
		return "redirect:/blog/blogMain";
	}
	
	
	@RequestMapping(value="readMem",method = RequestMethod.GET)
	public void read(@RequestParam("ID") MemberVO member, Model model) throws Exception{
		model.addAttribute(service.readMem(member));
	}
	
	@RequestMapping(value="listAllMem",method = RequestMethod.GET)
	public void listAllMem(Model model) throws Exception{
		logger.info("show all list....");	
		model.addAttribute("list", service.listAllMem());
	}
	

	
	 // 01. 로그인 화면 
    @RequestMapping("blog/blogLogined")
    public void blogLogined(){
    	logger.info("blogLogined 호출");
    } 
    
    //세션 저장
    @RequestMapping("include/blogWidget")
    public void blogWidget(){
    	logger.info("blogWidget 호출");
    }

    
    // 02. 로그인 처리
    @RequestMapping("loginCheck.do")
    public ModelAndView loginCheck(@ModelAttribute MemberVO vo, HttpSession session) throws Exception{
        boolean result = service.loginCheck(vo, session);
        ModelAndView mav = new ModelAndView();
        if (result == true) { // 로그인 성공
            mav.setViewName("blog/blogLogined");
            mav.addObject("msg", "success");
        } else {    // 로그인 실패
            mav.setViewName("blog/blogMain");
            mav.addObject("msg", "failure");
        }
        return mav;
    }
    
    
    // 03. 로그아웃 처리
    @RequestMapping("logout.do")
    public ModelAndView logout(HttpSession session){
    	service.logout(session);
        ModelAndView mav = new ModelAndView();
        mav.setViewName("blog/blogMain");
        mav.addObject("msg", "logout");
        return mav;
    }

    
    //아이디 체크
    @RequestMapping("idCheck.do")
    public boolean idCheck(@ModelAttribute MemberVO vo, String idc) throws Exception{
        boolean result = service.idCheck(vo, idc);
        logger.info("idcheck...");

        return result;
    }
    

}
