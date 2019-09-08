package kr.pe.bsk.persistence;


import java.util.List;

import javax.servlet.http.HttpSession;

import kr.pe.bsk.domain.MemberVO;

public interface MemberDAO {
	public void create(MemberVO vo) throws Exception;
	public MemberVO readMem(MemberVO member);
	public List<MemberVO> listAllMem() throws Exception;
	
	  // 01_01. 회원 로그인 체크
    public boolean loginCheck(MemberVO vo);
    // 01_02. 회원 로그인 정보
    public MemberVO viewMember(MemberVO vo);
    // 02. 회원 로그아웃
    public void logout(HttpSession session);
    
    public boolean idCheck(MemberVO vo, String idc);
}
