package com.spring.mybooktest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import service.MemberService;

@Controller
public class CheckController {
	@Autowired
	private MemberService service;
	
	// 이메일ID 체크기능
	@RequestMapping(value = "/idCheck12", method = RequestMethod.GET)
	@ResponseBody
	public int idCheck(String userId) {
		return service.userIdCheck(userId);
	}
	
	// 아이디 찾기
	@RequestMapping(value="/searchId", method=RequestMethod.GET)
	public String searchId() {
		return "";
	}
	// 비밀번호 찾기
	@RequestMapping(value="/searchPass", method=RequestMethod.GET)
	public String searchPass() {
		return "";
	}
}
