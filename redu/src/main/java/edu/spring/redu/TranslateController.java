package edu.spring.redu;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import service.TranslateService;

@Controller
public class TranslateController  {
	@Autowired
	TranslateService service;
	@RequestMapping(value = "/translate", produces = "application/json; charset=utf-8")
	public ModelAndView trans(
			@ModelAttribute("koreng") String koreng,
			@ModelAttribute("engkor") String engkor
			) {
		String result="";
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("papago");
		if(koreng!=null && !koreng.equals("")) {
			result = service.toKor(koreng);
		}else if(engkor != null && !engkor.equals("")) {
			result = service.toEng(engkor);
		}
		mav.addObject("result",result);
		
		return mav;
	}

}
