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
	
	// 이메이ID 체크기능
	@RequestMapping(value = "/idCheck", method = RequestMethod.GET)
	@ResponseBody
	public int idCheck(String userId) {
		return service.userIdCheck(userId);
	}
}
