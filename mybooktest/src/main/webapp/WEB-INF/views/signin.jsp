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
  <input type="email" id="userId" name="userId"  class="form-control" placeholder="example@exam.com" required autofocus>
  <span class="check_font" id="id_check"></span>
  <label for="inputPassword" class="sr-only"></label>
  <input type="password" id="userPass" name="userPass" class="form-control" placeholder="***********" required>
  <span class="check_font" id="pass_check"></span>
  <div class="checkbox mb-3 text-left" >
    <label>
      <input type="checkbox" value="remember-me"> 아이디 저장
    </label>
  </div>
  <button id="signin" class="btn btn-lg btn-primary btn-block" type="submit">로그인</button>
  </div>
  <p class="mt-5 mb-3 text-muted">아직 회원가입을 안하셨나요? <a href="/mybooktest/signup?action=signup&id=2">회원가입</a></p>
</form>
<script>
//이메일아이디 검사 정규식 : -_특수문자 가능하며 중앙에 @ 필수 그리고 . 뒤에 2~3글자 필요
var mailJ = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
//비밀번호 정규식 : A~Z, a~z,,0~9로 시작하는 4~12자리 비밀번호 가능
var pwJ = /^[A-Za-z0-9]{4,16}$/;

//이메일아이디 정규식
$("#userId").blur(function() {
	if(mailJ.test($("#userId").val())) {
		$("#id_check").text("");
		$("#signin").attr("disabled", false);
	} else {
		$("#id_check").text("유효하지 않은 양식입니다.");
		$("#id_check").css("color", "red");
		$("#signin").attr("disabled", true);
	}
});

//비밀번호 유효성 검사(숫자, 문자로만 4~12자리)
$("#userPass").blur(function() {
	if(pwJ.test($("#userPass").val())) {
		$("#pass_check").text("");
		$("#signin").attr("disabled", false);
	} else {
		$("#pass_check").text("숫자 or 문자로만 4~12자리 입력");
		$("#pass_check").css("color", "red");
		$("#signin").attr("disabled", true);
	}
});
</script>
</body>
</html>