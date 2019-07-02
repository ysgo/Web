package board.dao;

import java.util.List;

import board.dto.BoardDto;

public interface BoardDao {
//	/Select절로 DTO에서 하나씩 가져오지만 여러개를 뽑아와야 되니 배열형식으로 사용.
	public List<BoardDto> boardList(String keyfield, String keyword);
	// preView는 select절이지만 Ajax기능으로 DTO를 쓰지 않음
	public String preView(int seq);
	// select절로 DTO에서 시퀀스로 하나씩 가져옴.
	public BoardDto findBySeq(int seq);
	public BoardDto viewContent(int seq);
	// inset절이기에 return값이 필요하지 않음.
	public void insertBoard(BoardDto board);
	public void replyBoard(BoardDto board);
	public void replyUpPos(BoardDto board);
	//update부분으로 글수정이 성공되면 번호를 부여하기 위해 int 타입 글에 해당하는 board / 패스워드에 해당하는 pass
	public int updateBoard(BoardDto board, String pass);
	// deleteBoard는 삭제후 성공되면 번호를 부여하기 위해 int 타입 deleteView는 삭제후 넘어가는 화면
	public String deleteView(int seq);
	public int deleteBoard(int seq, String storPass);
}
