package kr.pe.bsk.controller;

import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.pe.bsk.domain.BoardVO;
import kr.pe.bsk.domain.Criteria;
import kr.pe.bsk.service.BoardService;

@Controller
@RequestMapping("blog")
public class BoardController {

	private static final Logger logger = LoggerFactory.getLogger(BoardController.class);
	
	@Autowired
	private BoardService service;
	
	@RequestMapping(value="blog1",method = RequestMethod.GET)
	public void blog1GET(BoardVO board, Model model) throws Exception{
		logger.info("blog1.get....");		
	}
	
	@RequestMapping(value="blog1",method = RequestMethod.POST)
	public String blog1POST(BoardVO board, Model model, RedirectAttributes ra) throws Exception{
		logger.info("blog1.POST....");	
		logger.info(board.toString());
		
		service.regist(board);
		ra.addFlashAttribute("msg", "SUCCESS");
		return "redirect:/blog/listAll";
	}
	
/*	@RequestMapping(value="blog1",method = RequestMethod.POST)
	public void blog1POST(BoardVO board, Model model, HttpServletResponse res) throws Exception{
		logger.info("blog1.POST....");	
		logger.info(board.toString());
		
		service.regist(board);
		res.sendRedirect("/blog/listAll");
	}*/
	
	@RequestMapping("blog/listCri")
	public void listCri() {
		logger.info("listCri 호출");
	}
	
	
	@RequestMapping("blog/listAll")
	public void listAll() {
		logger.info("listAll 호출");
	}
	@RequestMapping("signup")
	public void signup() {
		logger.info("signup 호출");
	}
	

	
	
/*	@RequestMapping("listPage")
	public String listPage(Criteria cri, Model model) throws Exception{
		logger.info(cri.toString());
		
		model.addAttribute("list", service.listCriteria(cri));
		PageMaker pageMaker = new PageMaker();
		pageMaker(setTotalCount(131));
		model.addAttribute("pageMaker", pageMaker);
		return "";
	}*/
	
	@RequestMapping(value="listCri", method = RequestMethod.GET)
	public String listCri(Criteria cri, Model model) throws Exception{
		model.addAttribute("list", service.listCriteria(cri));
		return "blog/listCri";
	}
	
	@RequestMapping(value="listAll",method = RequestMethod.GET)
	public void listAll(Model model) throws Exception{
		logger.info("show all list....");	
		model.addAttribute("list", service.listAll());
	}
	
	@RequestMapping(value="read",method = RequestMethod.GET)
	public void read(@RequestParam("bno") int bno, Model model) throws Exception{
		model.addAttribute(service.read(bno));
	}
	
	@RequestMapping(value = "remove", method = RequestMethod.POST)
	public String remove(@RequestParam Map map, RedirectAttributes rttr) throws Exception{
		service.remove(map);
		rttr.addFlashAttribute("msg", "SUCCESS");
		return "redirect:/blog/listAll";
	}
	
	@RequestMapping(value="modify", method = RequestMethod.GET)
	public String modifyGET(@RequestParam Map map, Model model) throws Exception{
		model.addAttribute(service.read(Integer.parseInt((String) map.get("bno"))));
		return "blog/modify";
	}
	
	@RequestMapping(value="modify", method = RequestMethod.POST)
	public String modifyPOST(@RequestParam Map map, RedirectAttributes rttr) throws Exception{
		service.modify(map);
		rttr.addFlashAttribute("msg", "SUCCESS");
		return "redirect:/blog/listAll";
	}
	

	
}
