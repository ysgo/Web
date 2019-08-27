package board.service;

import java.util.List;

import javax.annotation.Resource;

import board.dao.BoardDao;
import board.dto.BoardDto;
import board.dto.PageDto;

public class BoardServiceImpl implements BoardService {
	@Resource(name="boardDaoImpl")
	private BoardDao boardDao;
	
	@Override
	public List<BoardDto> boardList(String keyfield, String keyword) {
		System.out.println("BoardService.BoardList( ) 접속됨");
		return boardDao.boardList(keyfield, keyword);
	}

	@Override
	public BoardDto findBySeq(int seq) {
		return boardDao.findBySeq(seq);
	}

	@Override
	public BoardDto viewContent(int seq) {
		return boardDao.viewContent(seq);
	}

	@Override
	public void insertBoard(BoardDto board) {
		boardDao.insertBoard(board);
	}

	@Override
	public int updateBoard(BoardDto board, String pass) {
		return boardDao.updateBoard(board, pass);
	}

	@Override
	public String deleteView(int seq) {
		return boardDao.deleteView(seq);
	}

	@Override
	public int deleteBoard(int seq, String storPass) {
		return boardDao.deleteBoard(seq, storPass);
	}

	@Override
	public void replyBoard(BoardDto board) {
		boardDao.replyBoard(board);
	}

	@Override
	public void replyUpPos(BoardDto board) {
		boardDao.replyUpPos(board);
	}
	// 페이지 기능 구현 
	@Override
	public PageDto pagingProc(int nowPage, int nowBlock, int totalRecord) {
		int numPerPage = 5;
		int pagePerBlock = 4;
		int totalPage = (int)Math.ceil((double)totalRecord / numPerPage);
		int beginPerPage = nowPage * numPerPage;
		int totalBlock = (int)Math.ceil((double)totalPage / pagePerBlock);
		
		PageDto page = new PageDto();
		
		page.setBeginPerPage(beginPerPage);
		page.setNowBlock(nowBlock);
		page.setNowPage(nowPage);
		page.setNumPerPage(numPerPage);
		page.setPagePerBlock(pagePerBlock);
		page.setTotalBlock(totalBlock);
		page.setTotalPage(totalPage);
		page.setTotalRecord(totalRecord);
		
		return page;
	}

}
