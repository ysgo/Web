<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글 읽기</title>
<style>
@import url(http://fonts.googleapis.com/earlyaccess/nanumgothic.css);
body {
	font-family: 'Nanum Gothic', sans-serif;
}
</style>
<script>
	function move(url) {
		location.href=url;
	}
	function boardViewCheck() {
		var form = document.BoardViewForm;
		return true;
	}
</script>
</head>
<body>
	<form name="BoardViewForm" method="POST">
	<table summary="전체 테이블 구성">
		<tr>
			<td><div align="center"><h3><b>글 읽기</b></h3></div></td>
		</tr>
		<tr>
			<td colspan=2>
			<table border="1" summary="목록 테이블 구성">
		<tr>
			<td align=center>작성자</td>
			<td align=center>누구</td>
			<td align=center>작성일</td>
			<td align=center>2019/06/30</td>
		</tr>
		<tr>
			<td align=center>E-mail</td>
			<td align=center>nugu@google.com</td>
			<td align=center>홈페이지</td>
			<td><a href="http://hunit.tistory.com" target="_new">http://hunit.tistory.com</a></td>
		</tr>
		<tr>
			<td align=center>제목</td>
			<td colspan=3>게시판 글입니다</td>
		</tr>
		<tr>
			<td colspan=4><br>가나다라마바사<br></td>
		</tr>
		<tr>
			<td colspan=4 align=right>조회수 : </td>
		</tr>
			</table>
			</td>
		</tr>
		<tr>
			<td align="center" colspan=2>
			<hr size=1>
			<div align="center">
			[ <input type="button" value="목록" onclick="move('Board_List.jsp');"> |
			<input type="button" value="수정" onclick="move('Board_Update.jsp');"> |
			<input type="button" value="답변" onclick="move('Board_Reply.jsp');"> |
			<input type="button" value="삭제" onclick="move('Board_Delete.jsp');">]<br>
			</div>
			</td>
		</tr>
	</table>
	</form>
</body>
</html>