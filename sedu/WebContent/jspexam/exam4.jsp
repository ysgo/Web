<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>Query문자열 추출(GET&amp;POST)</h1>
<hr>
<%
	if(request.getMethod().equals("POST"))
		request.setCharacterEncoding("UTF-8");
%>
<h2>당신의 이름은 <%= request.getParameter("name") %>이군요</h2>

</body>
</html>