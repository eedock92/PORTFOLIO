package kr.pe.bsk.service;


import java.util.List;

import javax.servlet.http.HttpSession;

import kr.pe.bsk.domain.MemberVO;

public interface MemberService {
	
	public void regist(MemberVO member) throws Exception;
	
	public List<MemberVO> listAllMem() throws Exception;

	 // 01_01. 회원 로그인 체크
    public boolean loginCheck(MemberVO member, HttpSession session);
    // 01_02. 회원 로그인 정보
    public MemberVO viewMember(MemberVO member);
    // 02. 회원 로그아웃
    public void logout(HttpSession session);
    
    public boolean idCheck(MemberVO member, String idc);
    
    public MemberVO readMem(MemberVO member);
}
