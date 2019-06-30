<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 목록</title>
<style>
@import url(http://fonts.googleapis.com/earlyaccess/nanumgothic.css);
body {
	font-family: 'Nanum Gothic', sans-serif;
}
table {
	width: 800px;
	height: 200px;
}
</style>
<script>
	function move(url) {
		location.href=url;
	}
</script>
</head>
<body>
	<marquee behavior="alternate" scrolldelay="100" direction="right">게시판 홈페이지</marquee>
	<table class="bbs" border="1">
		<colgroup>
			<col width="50" />
			<col width="500" />
			<col width="100" />
			<col width="50" />
		</colgroup>
		<thead>
			<tr>
				<th>번   호</th>
				<th>제   목</th>
				<th>작성자</th>
				<th>작성일</th>
				<th>조   회</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td align="center">3</td>
				<td><a href="Board_View.jsp">게시판 글입니다 3</a></td>
				<td align="center">누구</td>
				<td align="center">2019/06/30</td>
				<td align="center">1234</td>
			</tr>
			<tr>
				<td align="center">3</td>
				<td><a href="Board_View.jsp">게시판 글입니다 3</a></td>
				<td align="center">누구</td>
				<td align="center">2019/06/30</td>
				<td align="center">1234</td>
			</tr>
			<tr>
				<td align="center">3</td>
				<td><a href="Board_View.jsp">게시판 글입니다 3</a></td>
				<td align="center">누구</td>
				<td align="center">2019/06/30</td>
				<td align="center">1234</td>
			</tr>
		</tbody>
		<tfoot>
			<tr>
				<td align="center" colspan="5">1</td>
			</tr>
		</tfoot>
	</table>
		<input type="button" value="처음으로" onclick="move('Board_List.jsp');" />
		<input type="button" value="글쓰기" onclick="move('Board_Write.jsp');" />		
</body>
</html>