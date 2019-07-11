package dao;

import javax.servlet.http.HttpSession;

import vo.MemberVO;

public interface MemberDAO {

	// 회원 가입
	public boolean signup(MemberVO vo) throws Exception;
	
	// 로그인
	public MemberVO signin(MemberVO vo) throws Exception;
	
	// 회원 로그인 체크
	public boolean loginCheck(MemberVO vo);
	//회원 로그인 정보
	public MemberVO viewMember(MemberVO vo);
	// 회원 로그아웃
	public void logout(HttpSession session);
	
	public int checkOverId(String userId);
}
