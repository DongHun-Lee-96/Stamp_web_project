<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>STAMP LOGIN</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="<c:url value="/images/icons/favicon.ico"/>">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<c:url value="/vendor/bootstrap/css/bootstrap.min.css"/>">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<c:url value="/fonts/font-awesome-4.7.0/css/font-awesome.min.css"/>">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<c:url value="/fonts/Linearicons-Free-v1.0.0/icon-font.min.css"/>">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<c:url value="/vendor/animate/animate.css"/>">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="<c:url value="/vendor/css-hamburgers/hamburgers.min.css"/>">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<c:url value="/vendor/select2/select2.min.css"/>">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<c:url value="/css/util.css"/>">
	<link rel="stylesheet" type="text/css" href="<c:url value="/css/main.css"/>">
<!--===============================================================================================-->
   <script type="text/javascript">
    
       
    </script>
</head>

<body>

	<div class="limiter">
		<div class="container-login100" style="background-image: url('../images/img-01.jpg');">
			<div class="wrap-login100 p-t-190 p-b-30">
				<form action="<c:url value="/login/req" />" method="post" class="login100-form validate-form">
					<div class="login100-form-avatar">
						<a href="/"><img src="<c:url value="/images/KakaoTalk_20200709_150427803.jpg"/>" alt="avatar"></a>
					</div>

					<span class="login100-form-title p-t-20 p-b-45">
						STAMP Log In
					</span>

					<div class="wrap-input100 validate-input m-b-10" data-validate = "Valid email is: a@b.c">
						<input class="input100" type="text" name="userid" placeholder="이메일">
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-user"></i>
						</span>
					</div>
					
					<div class="wrap-input100 validate-input m-b-10" data-validate = "Password is required">
						<input class="input100" type="password" name="password" placeholder="비밀번호">
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-lock"></i>
						</span>
					</div>
					
			        <div class="form-group">
			            <input type="hidden" name="${ _csrf.parameterName }" value="${ _csrf.token }" >
			        </div>
			        
					<div class="container-login100-form-btn p-t-10">
						<button type="submit" class="login100-form-btn">
							로그인
						</button>														
					</div>
				</form>
					<div class="container-login100-form-btn p-t-10">
						<button type="submit" class="login100-form-btn">
							<a href="/register">회원가입</a></button>														
					</div>
			</div>
		</div>
	</div>
	
	

	
<!--===============================================================================================-->	
	<script src="<c:url value="/vendor/jquery/jquery-3.2.1.min.js"/>"></script>
<!--===============================================================================================-->
	<script src="<c:url value="/vendor/bootstrap/js/popper.js"/>"></script>
	<script src="<c:url value="/vendor/bootstrap/js/bootstrap.min.js"/>"></script>
<!--===============================================================================================-->
	<script src="<c:url value="/vendor/select2/select2.min.js"/>"></script>
<!--===============================================================================================-->
	<script src="<c:url value="/js/main.js"/>"></script>
  <script src="/resources/moment.min.js"></script>

</body>
</html>