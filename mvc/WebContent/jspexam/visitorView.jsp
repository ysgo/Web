<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="model.vo.VisitorVO, java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%--노란색 에러는 jsp에서 제너릭스를 제대로 지원을 안하기에 뜨기에 무시해도 됨 --%>
<%
	ArrayList<VisitorVO> list = (ArrayList<VisitorVO>)request.getAttribute("list");
	if(list != null) {
%>
	<h2>방명록 글 리스트</h2>
	<table border="1">
<%
	for(VisitorVO vo : list) {	
%>
	<tr>
	<td><%= vo.getName() %></td>
	<td><%= vo.getWriteDate() %></td>
	<td><%= vo.getMomo() %></td>
	</tr>
<%
		}
%>
	</table>
<%
	} else {
%>
	<h2>${msg}</h2>
<%
	}
%>
<hr>
<a href='<%= request.getHeader("referer") %>'>방명록 홈 화면으로 가기</a>
</body>
</html>