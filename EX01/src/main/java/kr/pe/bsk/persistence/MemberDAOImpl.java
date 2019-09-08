package kr.pe.bsk.persistence;


import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.pe.bsk.domain.MemberVO;

@Repository
public class MemberDAOImpl implements MemberDAO{
	
	@Autowired
	private SqlSession session;
	
	@Override
	public void create(MemberVO vo) throws Exception {
		session.insert("member.create", vo);
		
	}

	@Override
	public List<MemberVO> listAllMem() throws Exception {
		return session.selectList("member.listAll");
	}

	@Override
	public MemberVO readMem(MemberVO member) {
		return session.selectOne("member.readMem", member);
	}
	
	 // 01_01. 회원 로그인체크
	@Override
	public boolean loginCheck(MemberVO vo) {
		String ID = session.selectOne("member.loginCheck", vo);
        return (ID == null) ? false : true;

	}
	
	// 01_02. 회원 로그인 정보
	@Override
	public MemberVO viewMember(MemberVO vo) {
		return  session.selectOne("member.viewMember", vo);
	}
	
	// 02. 회원 로그아웃
	@Override
	public void logout(HttpSession session) {
		
	}
	//아이디 체크
	@Override
	public boolean idCheck(MemberVO vo, String idc) {
		String ID =session.selectOne("member.idCheck", vo);
		return (ID == idc) ? false : true;
	}



}
