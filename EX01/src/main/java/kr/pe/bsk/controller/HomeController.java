package kr.pe.bsk.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "home";
	}
	
	@RequestMapping("/home")
	public void home() {
		logger.info("main");
	}
	
	@RequestMapping("blog/blog1")
	public void blog1() {
		logger.info("blog1 호출");
	}
	
	@RequestMapping("blog/blogMain")
	public void blogMain() {
		logger.info("blogMain 호출");
	}
	
	@RequestMapping("gallery/ArtGall")
	public void ArtGall() {
		logger.info("ArtGall 호출");
	}
	
	@RequestMapping("portfolio/DevPotfol")
	public void DevPotfol() {
		logger.info("DevPotfol 호출");
	}
	
}
