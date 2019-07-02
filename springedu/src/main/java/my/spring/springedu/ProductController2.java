package my.spring.springedu;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

import vo.ProductVO;

@Controller
@SessionAttributes("product")
public class ProductController2 {
	@ModelAttribute("product")
	public ProductVO prodMethod() {
		return new ProductVO();
	}
	@RequestMapping(value="/product")
	public String pro(@ModelAttribute("product")ProductVO product, String pid, SessionStatus s) {
		if (pid == null) {
			s.setComplete();
			return "productView";
		}
		if (pid.equals("p001"))
			product.setAppleNum(1);
		else if (pid.equals("p002"))
			product.setBananaNum(1); 
		else if (pid.equals("p003"))
			product.setHanrabongNum(1);
		return "productView";
	}
}
