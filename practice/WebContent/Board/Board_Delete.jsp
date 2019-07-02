<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글 삭제하기</title>
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
	function boardWriteCheck() {
		var form = document.BoardDeleteForm;
		return true;
	}
</script>
</head>
<body>
	<center>
	<br><br>
	<table width='50%' cellspacing='0' cellpadding='3'>
		<tr>
			<td align=center>작성자의 비밀번호를 입력해 주세요.</td>
		</tr>
	</table>
	
	<table width='70%' cellspacing='0' cellpadding='2'>
		<form name="BoardDeleteForm" method="POST" action="Board_Delete_action.jsp"
			onsubmit="return BoardDeleteCheck();">
			<tr>
				<td align='center'>
				<table align='center' border='0' width='91%'>
			<tr>
				<td align='center'>
				<input type="password" name="password" size="17" maxlength="15">
				</td>
			</tr>
			<tr>
				<td><hr size=1></td>
			</tr>	
			<tr>
				<td align="center">
				<input type="submit" value="삭제완료">
				<input type="button" value="뒤로" onclick="history.go(-1)">
				</td>
			</tr>
			</table>
			</td>
			</tr>
		</form>
	</table>
	</center>
</body>
</html>