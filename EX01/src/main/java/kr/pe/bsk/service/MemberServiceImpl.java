package kr.pe.bsk.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.pe.bsk.domain.MemberVO;
import kr.pe.bsk.persistence.MemberDAO;

@Service
public class MemberServiceImpl implements MemberService{
	
	@Autowired
	private MemberDAO dao;
	
	@Override
	public void regist(MemberVO member) throws Exception {
		dao.create(member);
		
	}

	@Override
	public List<MemberVO> listAllMem() throws Exception {
		return dao.listAllMem();
	}

	@Override
	public MemberVO readMem(MemberVO member){
		return dao.readMem(member);
	}
	

	
	 // 01_01. 회원 로그인체크
	@Override
	public boolean loginCheck(MemberVO member, HttpSession session) {
		 boolean result = dao.loginCheck(member);
	        if (result) { // true일 경우 세션에 등록
	            MemberVO vo2 = viewMember(member);
	            // 세션 변수 등록
	            session.setAttribute("ID", vo2.getID());
	        } 
	        return result;

	}
	
	// 01_02. 회원 로그인 정보
	@Override
	public MemberVO viewMember(MemberVO member) {
		return dao.viewMember(member);
	}
	
	// 02. 회원 로그아웃
	@Override
	public void logout(HttpSession session) {
		// 세션 변수 개별 삭제
        session.removeAttribute("ID");
        // 세션 정보를 초기화 시킴
        session.invalidate();
       
		
	}
	
	// 중복 아이디 체크
	@Override
	public boolean idCheck(MemberVO member,  String idc) {
		boolean result = dao.idCheck(member, idc);
		 if (result) { 
	            MemberVO vo2 = readMem(member);
	            
	           // session.setAttribute("ID", vo2.getID());
		 }
		return result;
	}

}
