package kr.pe.bsk.persistence;

import java.util.List;
import java.util.Map;

import kr.pe.bsk.domain.BoardVO;
import kr.pe.bsk.domain.Criteria;

public interface BoardDAO {
	public void create(BoardVO vo) throws Exception;
	
	public BoardVO read(int bno) throws Exception;
	
	public void update(Map map) throws Exception;
	
	public BoardVO delete(Map map) throws Exception;
	
	public List<BoardVO> listAll() throws Exception;
	
	public List<BoardVO> listPage(int page) throws Exception;
	
	public List<BoardVO> listCriteria(Criteria cri) throws Exception;
}
