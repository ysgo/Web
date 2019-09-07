package edu.spring.redu;

import java.io.File;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import rjava.OnePersonService;

@Controller
public class OnePersonController {
	@Autowired
	OnePersonService onePerson;
	
	@RequestMapping("/")
	public ModelAndView main() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("oneperson");
		return mav;
	}
	
	@RequestMapping("/oneperson")
	public ModelAndView map(String name, HttpServletRequest req) {
		ModelAndView mav = new ModelAndView();
		if(!name.contains("구"))
			name += "구";
		if(name.equals("강남구") || name.equals("광진구") || name.equals("종로구") || name.equals("중구")) {
			String real_path = req.getSession().getServletContext().getRealPath("/");
			real_path = real_path.replace("\\", "/");
			File f = new File(real_path+"/resources/oneperson");
			if(!f.exists()) f.mkdir();
			String result = onePerson.returnOneperson(real_path+"/resources/oneperson", name);
			mav.addObject("oneperson", "http://localhost:8000/redu/resources/oneperson/"+result);
			mav.setViewName("oneView");
		} else {
			mav.setViewName("oneperson");
		}
		return mav;
	}
}
