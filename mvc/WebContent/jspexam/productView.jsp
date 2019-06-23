<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="model.vo.ProductVO"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
h1{
	font-size : 15px;
}
	
button {
	font-size : 14px;
	background : linear-gradient(to right, yellow, green);
}
</style>
</head>
<body>
<h1>선택된 상품 정보는 다음과 같습니다.</h1>
<hr>
<% ProductVO vo = (ProductVO)session.getAttribute("cnt"); %>
<ul>
	<li>선택된 사과의 개수 : <%= vo.getAppleNum() %></li>
	<li>선택된 바나나의 개수 : <%= vo.getBananaNum() %></li>
	<li>선택된 한라봉의 개수 : <%= vo.getHanrabongNum() %></li> 
</ul>
<hr>
<button onclick="location.href='/mvc/htmlexam/product.html'">상품 선택화면</button>
</body>
</html>