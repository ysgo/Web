<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="model.vo.NewsVO, java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>뉴스 게시판</title>
<style>
body {
	text-align:center;
}
table {
	margin-left: 27%;
	margin-right: 27%;
}
td, th {
	border-bottom: 1px dotted green;
}
tr:hover {
	backgroiund-color: yellow;
	font-weight: bold;
}
td:nth-child(3) {
	width: 300px;
}
</style>
</head>
<body>
<div id="view_div">
<% 
	ArrayList<NewsVO> list = (ArrayList<NewsVO>)request.getAttribute("list"); 
	if(list != null) {
%>
<h1>뉴스 게시판</h1>
<table>
	<tr>
		<th style="color:blue">번호</th>
		<th style="color:red">제목</th>
		<th style="color:pink">작성자</th>
		<th style="color:orange">작성일</th>
		<th style="color:green">조회수</th>
	</tr>
<%
	for(NewsVO vo : list) {
%>
	<tr>
		<td class='<%=vo.getId() %>'><%= vo.getId() %></td>
		<td class='<%=vo.getId() %>'>
		<a href="/mvc/news?select=true&id=<%=vo.getId()%>&title=<%=vo.getTitle()%>
		&writer=<%=vo.getWriter()%>&content=<%=vo.getContent()%>"><%= vo.getTitle() %></a></td>
		<td class='<%=vo.getId() %>'><%= vo.getWriter() %></td>
		<td class='<%=vo.getId() %>'><%= vo.getWritedate() %></td>
		<td class='<%=vo.getId() %>'><%= vo.getCnt() %></td>
		<td style="display:none" class='<%=vo.getId() %>'><%= vo.getContent() %></td>		
	</tr>
<%
		}
%>
</table>
<%
	}
%>
</div>
<form method="GET" action="/mvc/news">
<select name="searchType">
	<option value="num">번호</option>
	<option value="title">제목</option>
	<option value="writer">작성자</option>
	<option value="writeTime">작성일</option>
	<option value="numView">조회수</option>
</select>
<input type="text" name="search">
<input type="submit" value="뉴스검색">
</form>
<input type="button" value="뉴스 홈" onclick="location.href='/mvc/news'">
<input type="submit" value="뉴스작성" onclick="writeNews()">
<div id="write" style="display:none">
	<h2>뉴스 내용</h2>
	<form method="POST" action="/mvc/news">
		<input type="hidden" name="action" value="insert">
		<input type="text" id="m_writer" name="writer"  placeholder="작성자명을 입력해주세요">
		<br>	
		<input type="text" id="m_title" name="title" placeholder="제목을 입력해주세요">
		<br>	
		<textarea id="m_content" name="content" placeholder="내용을 입력해주세요"></textarea>
		<br>
		<input id="first" type="submit" value="저장">
		<input id="second" type="reset" value="재작성">
		<input id="third" type="button" value="취소" onclick="display(2)">	
	</form>
</div>

<%
	if(request.getParameter("select") != null) {
%>

<div id="select">
	<h2>뉴스 내용</h2>
	<form method="POST" action="/mvc/news">
		<input type="hidden" name="action" value='<%= request.getParameter("id")%>'>
		<br>
		<input type="text" name="writer" value='<%=request.getParameter("writer")%>'>
		<br>	
		<input type="text" name="title"	value='<%=request.getParameter("title")%>'>
		<br>	
		<textarea name="content">
			<%= request.getParameter("content") %>
		</textarea>
		<br>
		<input id="first" type="button" value="확인" onclick="selectNews(null)">
		<input id="second" type="submit" value="수정">
		<input id="third" type="button" value="삭제" onclick='selectNews(<%=request.getParameter("id")%>)'>
	</form>
</div>
<%
	}
%>
<script>
function display(type) {
	 if(type == 1) 
		document.getElementById("write").style.display='block';		
	 else if(type == 2) 
		document.getElementById("write").style.display='none';
	 else if(type == 3) 
		document.getElementById("select").style.display='block';
	 else if(type == 4)
		document.getElementById("select").style.display='none';
}
function writeNews() {
	display(1);
	display(4);
 	document.getElementById("m_writer").value="";
	document.getElementById("m_title").value="";
	document.getElementById("m_content").value="";
	document.getElementById("first").value="저장";
	document.getElementById("first").type="submit";
	document.getElementById("second").value="재작성";
	document.getElementById("second").type="reset";
	document.getElementById("third").value="취소";
	document.getElementById("third").type="button";
	document.getElementById("third").onclick=function() {
		document.getElementById("write").style.display='none';
	}
	document.querySelector("#write [type=hidden]").value="insert";
}

function selectNews(cv) {
	var doms = document.getElementsByClassName(cv);
	if(cv == null) {
		document.getElementById("select").style.display='none';
	} else {
		document.location.href="/mvc/news?action=delete&&id="+cv;
	}
} 
</script>
</body>
</html>