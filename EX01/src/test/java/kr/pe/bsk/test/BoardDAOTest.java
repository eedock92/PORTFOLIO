package kr.pe.bsk.test;

import org.junit.Ignore;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import kr.pe.bsk.domain.BoardVO;
import kr.pe.bsk.persistence.BoardDAO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:spring/root-context.xml"})
public class BoardDAOTest {
	
	
	@Autowired
	private BoardDAO dao;
	
	private static final Logger logger = LoggerFactory.getLogger(BoardDAOTest.class);
	
	@Test @Ignore
	public void testCreate() throws Exception{
		BoardVO board = new BoardVO();
		board.setTitle("test");
		board.setContent("test");
		board.setWriter("user01");
		dao.create(board);
	}
	
	@Test  @Ignore
	public void testRead() throws Exception {
		logger.info(dao.read(1).toString());;
	}
	
	
	/*@Test @Ignore
	public void testUpdate() throws Exception{
		BoardVO board = new BoardVO();
		board.setBno(1);
		board.setTitle("수정된 글");
		board.setContent("수정 테스트");
		dao.update(b);
	}
	
	@Test @Ignore
	public void testDelete() throws Exception{
		dao.delete(1);
	}*/
	
	@Test
	public void testListPage() throws Exception {
		int page = 2;
		
		List<BoardVO> list = dao.listPage(page);
		
		for(BoardVO boardvo : list) {
			logger.info(boardvo.getBno() + " : " + boardvo.getTitle());
		}
	}
}
