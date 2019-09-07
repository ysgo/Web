<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>R_Leaflet</title>
</head>
<body>
<h1>1인 가구에 대한 구별 정보 시각화</h1>
<c:if test="${!empty oneperson }">
	<iframe src="${ oneperson }" width="100%" height=500></iframe> 
</c:if>
<button onclick="history.back()">뒤로가기</button>
</body>
</html>