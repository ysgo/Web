package board.service;

import java.util.List;

import board.dto.BoardDto;
import board.dto.PageDto;

public interface BoardService {
	public List<BoardDto> boardList(String keyfield, String keyword);
	public BoardDto findBySeq(int seq);
	public BoardDto viewContent(int seq);
	public void insertBoard(BoardDto board);
	public int updateBoard(BoardDto board, String pass);
	public String deleteView(int seq);
	public int deleteBoard(int seq, String storPass);
	public void replyBoard(BoardDto board);
	public void replyUpPos(BoardDto board);
	public PageDto pagingProc(int nowPage, int nowBlock, int totalRecord);
}
