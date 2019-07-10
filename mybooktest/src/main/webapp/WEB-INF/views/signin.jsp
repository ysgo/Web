<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>홈페이지명</title>
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
<!-- Custom styles for this template -->
<link rel="stylesheet" type="text/css" href="css/signin.css">
</head>
<body class="text-center">
<form class="form-signin" action="/mybooktest/signin" method="POST" >
  <!-- <img class="mb-4" src="/docs/4.3/assets/brand/bootstrap-solid.svg" alt="" width="72" height="72"> --><!-- 로고 이미지 추가하고 싶으면 사용 -->
  <h1 class="h3 mb-3 font-weight-normal">로고</h1>
  <div id="login_container">
  <label for="inputEmail" class="sr-only"></label>
  <input type="email" id="userId" name="userId"  class="form-control" placeholder="이메일을 입력해주세요." required autofocus>
  <label for="inputPassword" class="sr-only"></label>
  <input type="password" id="userPass" name="userPass" class="form-control" placeholder="비밀번호를 입력해주세요." required>
  <div class="checkbox mb-3 text-left" >
    <label>
      <input type="checkbox" value="remember-me"> 아이디 저장
    </label>
  </div>
  <button class="btn btn-lg btn-primary btn-block" type="submit">로그인</button>
  </div>
  <p class="mt-5 mb-3 text-muted">아직 회원가입을 안하셨나요? <a href="/mybooktest/signup?action=signup&id=2">회원가입</a></p>
</form>
<script>

</script>
</body>
</html>