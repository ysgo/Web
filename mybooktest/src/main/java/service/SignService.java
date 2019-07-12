package service;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.SignDAO;
import vo.MemberVO;

@Service
public class SignService {
	@Autowired
	private SignDAO dao;
	
	// 회원가입
	public void signup(MemberVO vo) {
		dao.signup(vo);
	}
	// 로그인
	public MemberVO signin(MemberVO vo) {
		return dao.signin(vo);
	}
	// 로그아웃
	public void signout(HttpSession session) {
		session.invalidate();
	}
}
