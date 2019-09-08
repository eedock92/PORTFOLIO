package kr.pe.bsk.service;

import java.util.List;
import java.util.Map;

import kr.pe.bsk.domain.BoardVO;
import kr.pe.bsk.domain.Criteria;

public interface BoardService {
	public void regist(BoardVO board) throws Exception;
	
	public BoardVO read(int bno) throws Exception;
	
	public void modify(Map map) throws Exception;
	
	public void remove(Map map) throws Exception;
	
	public List<BoardVO> listAll() throws Exception;
	
	public List<BoardVO> listCriteria(Criteria cri) throws Exception;
}
