﻿<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EL 테스트</title>
</head>
<body>
<h2>EL의 연산자들</h2>
<hr>
\${200+100} :  ${200+100} <br><%--\가 붙으면 일반 문자열로 인식한다 --%> 
\${200-100} :  ${200-100} <br>
\${200/100} :  ${200/100} <br>
\${200>100} :  ${200>100} <br>
\${200==100} :  ${200==100} <br>
\${200!=100} :  ${200!=100} <br>
<%--\${ '10' - 10 } : ${ '10' - 10 }<br> 
\${10 * "10" } : ${10 * "10" }<br> 
\${40 div 5 } : ${40 div 5 }<br>이클립스에러로 el에서 사용가능한 연산자 div는 정상수행됨 --%>
\${40 mod 5 } : ${40 mod 5 }<br>
\${ 10 eq 10 } : ${ 10 eq 10 }<br>  
\${ 10 lt 10 } : ${ 10 lt 10 }<br> 
\${ 10 gt 10 } : ${ 10 gt 10 }<br>
\${ 10 le 10 } : ${ 10 le 10 }<br>
\${ 10 ge 10 } : ${ 10 ge 10 }<br>
\${10 > 5?'A':'B'} : ${10 > 5?'A':'B'}<br>
\${100 + 200 + 300 } : ${100 + 200 + 300 }<br>
\${100 += 200 += 300 } : ${100 += 200 += 300 }<br>
\${"EL" += 12 += 34 += "-문자열 결합연산" } : ${"EL" += 12 += 34 += "-문자열 결합연산" }
</body>
</html>