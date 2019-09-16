<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	body { 
		background : url('https://is2-ssl.mzstatic.com/image/thumb/Purple128/v4/02/cc/21/02cc21f0-05f0-2efc-133a-ae36adc4036e/AppIcon-1x_U007emarketing-85-220-0-6.png/246x0w.jpg');
	}
</style>
</head>
<body>
<h2>파파고</h2>
<hr>
<form method="post"  action="/redu/translate">
	<input size="50" placeholder="변환하려는 한글 문장을 입력하세요"  name="koreng">
	<input type="submit" value="번역요청" >
</form>
<hr>
<form method="post"  action="/redu/translate">
	<input size="50" placeholder="변환하려는 영어 문장을 입력하세요"  name="engkor">
	<input type="submit" value="번역요청" >
</form>
<div></div>

<% 
	String result = (String)request.getAttribute("result");
	if (result != null) {
		
%>
		<script>		    
		    var obj = JSON.parse('<%= result %>');	
		    var dom = document.getElementsByTagName("div")[0];
			dom.innerHTML = "<hr><h2>"+obj.message.result.translatedText+"</h2>";
		</script>
<%		
	}
%>
</body>
</html>