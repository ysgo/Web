<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="model.vo.MeetingVO, java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
td {
	border-bottom: 1px dotted green;
}
tr:hover {
	background-color: pink;
	font-weight: bold;
}
td:nth-child(3) {
	width: 300px;
}
</style>
</head>
<body>
<%
	ArrayList<MeetingVO> list = (ArrayList<MeetingVO>)request.getAttribute("list");
	if(list != null) {
%>
	<h2>미팅 스케쥴(2)</h2>
	<hr>
	<table>
<%
	for(MeetingVO vo : list) {
%>
	<tr>
	<td class='<%= vo.getId() %>'><%= vo.getName() %></td>
	<td class='<%= vo.getId() %>'><%= vo.getTitle() %></td>
	<td class='<%= vo.getId() %>'><%= vo.getMeetingDate() %></td>
	<td class='<%= vo.getId() %>'><a href='/mvc/meeting?action=delete&id=<%= vo.getId() %>'>
		<img src="/mvc/images/delete.png" width="30"></a>
	</td>
	<td class='<%= vo.getId() %>'><a href='/mvc/meeting?action=update&id=<%= vo.getId() %>'>
		<img src="/mvc/images/edit.png" width="30"></a>
	</td>
	</tr>
<%
		}
%>
	</table>
<%
	}
	if(request.getAttribute("msg") != null) {
%>
	<script>
		alert('${ msg }');
	</script>
<%
	}
%>
<hr>
<button onclick="displayDiv(1)">미팅 정보 작성</button>
<button onclick="displayDiv(2)">미팅 정보 검색</button>
<script>
function displayDiv(type) {
	if(type == 1) {
		document.getElementById("write").style.display='block';
		document.getElementById("search").style.display='none';
	} else if(type == 2) {
		document.getElementById("write").style.display='none';
		document.getElementById("search").style.display='block';
	}
}
</script>
<div id="write" style="display:none">
	<form method="post" action="/mvc/meeting">
		미팅 대상 이름 : <input type="text" name="name"><br>
		날짜와 시간 : <input type="datetime-local" name="meetingDate"><br>
		미팅 목적 : <br>
		<textarea name="title" rows="5" cols="40"></textarea><br>
		<input type="submit" value="등록">
		<input type="reset" value="재작성">
	</form>
</div>
<br>
<div id="search" style="display:none">
<form method="get" action="/mvc/meeting">
	검색어 : <input type="search" name="keyword">
	<input type="submit" value="검색">
	<br>
	<button onclick="schedule()">미팅 스케쥴 보기</button>
</form>
</div>
<div id="update">
<form method="get" action="/mvc/meeting">
	<button>수정하기</button>
</form>
</div>
</body>
</html>