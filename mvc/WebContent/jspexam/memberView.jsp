<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="model.vo.MemberVO"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>회원 정보</h1>
<hr>
<% MemberVO vo = (MemberVO)request.getAttribute("data"); %>
<ul>
	<li>회원 이름 : <%= vo.getName() %></li>
	<li>회원 계정 : <%= vo.getId() %></li>
	<li>회원 암호 : <%= vo.getPwd() %></li>
	<li>회원 전화번호 : <%= vo.getPhone() %></li>
</ul>
</body>
</html>