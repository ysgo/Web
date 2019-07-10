<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>홈페이지명</title>
<!-- Bootstrap CSS CDN -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<style>
      .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        -ms-user-select: none;
        user-select: none;
      }

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }
</style>
</head>
<body>
<div class="d-flex flex-column flex-md-row align-items-center p-3 px-md-4 mb-3 bg-white border-bottom shadow-sm fixed-top">
	<a class="my-0 mr-md-auto" href="/mybooktest/"><img src="images/logo.svg" width="38" height="37" style="border: 1px solid black;"></a>
  <!-- <h5 class="my-0 mr-md-auto font-weight-normal">로고</h5> -->
  <nav class="my-2 my-md-0 mr-md-3">
    <a class="p-2 text-dark" href="/mybooktest/mylibrary?action=mylibrary&id=3">내 서재</a>
    <a class="p-2 text-dark" href="#">내 정보</a>
  </nav>
  <nav class="my-2 my-md-0 mr-md-3">
	<c:if test="${empty msg }">
  		<a class="btn btn-outline-primary" href="/mybooktest/signin?action=signin&id=2">로그인</a>
  		<a class="btn btn-outline-primary" href="/mybooktest/signup?action=signup&id=1">회원가입</a>
	</c:if>
	<c:if test="${!empty msg }">
  		<a class="btn btn-outline-primary" href="/mybooktest/signout">로그아웃</a>
	</c:if>
  </nav>
	<%-- <div id = "wrap">
        <p>
            <button class="btn btn-success" onclick="changeView(0)">HOME</button>
        <c:if test="${empty sessionID }">
        <%
            // 로그인 안되었을 경우 - 로그인, 회원가입 버튼을 보여준다.
            if(session.getAttribute("sessionID")==null){ 
        %>
            <button id="loginBtn" class="btn btn-primary" onclick="changeView(1)">로그인</button>
            <button id="joinBtn" class="btn btn-primary" onclick="changeView(2)">회원가입</button>
        
        </c:if>    
        <%
        
            // 로그인 되었을 경우 - 로그아웃, 내정보 버튼을 보여준다.
            }else{ 
        %>
        <c:if test="${!empty sessionID }">
            <button id="logoutBtn" class="btn btn-primary" onclick="changeView(3)">로그아웃</button>
            <button id="updateBtn" class="btn btn-primary" onclick="changeView(4)">내정보</button>
        <%    }    %>    
 		</c:if>
            <button id="memberViewBtn" class="btn btn-warning">회원보기</button>
        </p>
    </div> --%>
</div>
<script>
        /* function changeView(value){
            
            if(value == "0") // HOME 버튼 클릭시 첫화면으로 이동
            {
                location.href="/mybooktest/";
            }
            else if(value == "1") // 로그인 버튼 클릭시 로그인 화면으로 이동
            {
                location.href="/mybooktest/signin";
            }
            else if(value == "2") // 회원가입 버튼 클릭시 회원가입 화면으로 이동
            {
                location.href="/mybooktest/signup";
            }
            else if(value == "3") // 로그아웃 버튼 클릭시 로그아웃 처리
            {
                location.href="/mybooktest/signout";
            }
            else if(value == "4") // 내정보 버튼 클릭시 회원정보 보여주는 화면으로 이동
            {
                location.href="/mybooktest/mylibrary";
            }
        } */
    </script>
</body>
</html>