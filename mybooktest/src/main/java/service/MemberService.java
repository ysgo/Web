package service;

import javax.servlet.http.HttpSession;

import vo.MemberVO;

public interface MemberService {

	// 회원 가입
	public boolean signup(MemberVO vo) throws Exception;
//
//	// 로그인
//	public MemberVO signin(MemberVO vo) throws Exception;
//	
	// 로그아웃
	public void signout(HttpSession session) throws Exception;
	
	// 로그인 체크
	public boolean loginCheck(MemberVO vo, HttpSession session);
	// 로그인 정보
	public MemberVO viewMember(MemberVO vo);
	
	
}