﻿package my.spring.springedu;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import dao.HiveDAO;
import vo.FruitsVO;
@Controller
public class HiveController {
	@Autowired
	HiveDAO dao;
	@RequestMapping("/hivecreate")
	ModelAndView createTable() {
		ModelAndView mav = new ModelAndView();
		boolean result = dao.create();
		if( result )
			mav.addObject("msg", "테이블 생성 성공!");
		else 
			mav.addObject("msg", "테이블 생성 실패!");
		mav.setViewName("hiveView1");
		return mav;	
	}
	@RequestMapping("/hivedrop")
	ModelAndView dropTable() {
		ModelAndView mav = new ModelAndView();
		boolean result = dao.drop();
		if( result )
			mav.addObject("msg", "테이블 삭제 성공!");
		else 
			mav.addObject("msg", "테이블 삭제 실패!");
		mav.setViewName("hiveView1");
		return mav;	
	}
	@RequestMapping("/hiveload")
	ModelAndView loadTable() {
		ModelAndView mav = new ModelAndView();
		boolean result = dao.load();
		if( result )
			mav.addObject("msg", "데이터 로드 성공!");
		else 
			mav.addObject("msg", "데이터 로드 실패!");
		mav.setViewName("hiveView1");
		return mav;	
	}
	@RequestMapping("/hiveinsert")
	ModelAndView insertTable(FruitsVO vo) {
		ModelAndView mav = new ModelAndView();
		boolean result = dao.insert(vo);
		if( result )
			mav.addObject("msg", "데이터 입력 성공!");
		else 
			mav.addObject("msg", "데이터 입력 실패!");
		mav.setViewName("hiveView1");
		return mav;	
	}
	@RequestMapping("/hiveselect1")
	ModelAndView selectData1() {
		ModelAndView mav = new ModelAndView();
		List<FruitsVO> list = dao.select1();
		mav.addObject("list1", list);
		mav.setViewName("hiveView1");
		return mav;	
	}
	@RequestMapping("/hiveselect2")
	ModelAndView selectData2() {
		ModelAndView mav = new ModelAndView();
		List<FruitsVO> list = dao.select2();
		mav.addObject("list2", list);
		mav.setViewName("hiveView1");
		return mav;	
	}
	@RequestMapping("/hiveselect3")
	ModelAndView selectData3() {
		ModelAndView mav = new ModelAndView();
		List<FruitsVO> list = dao.select3();
		mav.addObject("list3", list);
		mav.setViewName("hiveView1");
		return mav;	
	}
}
