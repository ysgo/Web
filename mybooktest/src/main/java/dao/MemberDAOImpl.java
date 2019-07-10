package dao;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import vo.MemberVO;

@Repository
public class MemberDAOImpl implements MemberDAO {
	@Inject
	SqlSession session = null;	
	
	// 회원 가입
	@Override
	public boolean signup(MemberVO vo) throws Exception {
		boolean result=true;
		String statement = "resource.MemberMapper.signup";
		if(session.insert(statement, vo) != 1)
			result = false;
		return result;
	}
	
	// 로그인
	@Override
	public MemberVO signin(MemberVO vo) throws Exception {
		MemberVO loginVO = null;
		String statement = "resource.MemberMapper.signin";
		loginVO = session.selectOne(statement, vo);
		return loginVO;
	}
	//로그인 체크
	@Override
	public boolean loginCheck(MemberVO vo) {
		String statement = "resource.MemberMapper.loginCheck";
		String name = session.selectOne(statement, vo);
		return (name == null)? false : true;
	}
	// 회원 로그인 정보
	@Override
	public MemberVO viewMember(MemberVO vo) {
		String statement = "resource.MemberMapper.viewMember";
		return session.selectOne(statement, vo);
	}
	// 회원 로그아웃
	@Override
	public void logout(HttpSession session) {
		
	}

}