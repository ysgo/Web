<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form method="GET" action="/mybooktest/searchId">
닉네임 : <input type="text" name="keyword">
<input type="submit" value="검색">
</form>
<input type="button" value="닫 기" onclick="self.close()" />
<input type="reset" value="재검색" onclick="moveClose()"/>
</body>
</html>