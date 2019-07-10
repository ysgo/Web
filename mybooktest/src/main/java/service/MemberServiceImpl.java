package service;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;

import dao.MemberDAO;
import vo.MemberVO;

@Service
public class MemberServiceImpl implements MemberService {

	@Inject
	private MemberDAO dao;

	// 회원 가입
	@Override 
	public boolean signup(MemberVO vo) throws Exception {
		return dao.signup(vo);		
	}
	
//	// 로그인
//	@Override
//	public MemberVO signin(MemberVO vo) throws Exception {
//		return dao.signin(vo);
//	}

	// 로그아웃
	@Override
	public void signout(HttpSession session) throws Exception {
		session.invalidate();  // 세션 정보를 제거
	}
	//회원 로그인 체크
	@Override
	public boolean loginCheck(MemberVO vo, HttpSession session) {
		boolean result = dao.loginCheck(vo);
		if(result) {	// true일 경우 세션 등록
			MemberVO vo2 = viewMember(vo);
			// 세션 등록
			session.setAttribute("userId", vo2.getUserId());
			session.setAttribute("userPass", vo2.getUserPass());
			return result;
		}
		return false;
	}
	//회원 로그인 정보
	@Override
	public MemberVO viewMember(MemberVO vo) {
		return dao.viewMember(vo);
	}
} 
