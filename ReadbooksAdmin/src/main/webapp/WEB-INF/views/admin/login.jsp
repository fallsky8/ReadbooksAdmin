<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<title>로그인 페이지</title>
<script type="text/javascript"
	src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript">
	$(function() {
		event.preventDefault();
		 
		
		$("#login").click(function() {
			$("#loginform").attr({
				"method" : "POST",
				"action" : "/checklogin.do"
			});
			$("#loginform").submit();
			 $('.form').fadeOut(500);
			 $('.wrapper').addClass('form-success');

		});
		$("#btnlogout").click(function() {
			$.ajax({
				type : "POST",
				url : "/logout.do",
				success : function(data) {
					location.href = "/admin.do"
					
					
				}
			});
		});
			
	});
</script>

<style type="text/css">
@import
	url(https://fonts.googleapis.com/css?family=Source+Sans+Pro:200,300);

* {
	box-sizing: border-box;
	margin: 0;
	padding: 0;
	font-weight: 300;
}

body {
	font-family: 'Source Sans Pro', sans-serif;
	color: white;
	font-weight: 300;
}

body ::-webkit-input-placeholder {
	/* WebKit browsers */
	font-family: 'Source Sans Pro', sans-serif;
	color: white;
	font-weight: 300;
}

body :-moz-placeholder {
	/* Mozilla Firefox 4 to 18 */
	font-family: 'Source Sans Pro', sans-serif;
	color: white;
	opacity: 1;
	font-weight: 300;
}

body ::-moz-placeholder {
	/* Mozilla Firefox 19+ */
	font-family: 'Source Sans Pro', sans-serif;
	color: white;
	opacity: 1;
	font-weight: 300;
}

body :-ms-input-placeholder {
	/* Internet Explorer 10+ */
	font-family: 'Source Sans Pro', sans-serif;
	color: white;
	font-weight: 300;
}

.wrapper {
	background: #50a3a2;
	background: linear-gradient(top left, #50a3a2 0%, #53e3a6 100%);
	background: linear-gradient(to bottom right, #50a3a2 0%, #53e3a6 100%);
	position: absolute;
	top: 30%;
	left: 0;
	width: 100%;
	height: 400px;
	margin-top: -100px;
	overflow: hidden;
}

.wrapper.form-success .container h1 {
	transform: translateY(85px);
}

.container {
	max-width: 600px;
	margin: 0 auto;
	padding: 80px 0;
	height: 400px;
	text-align: center;
}

.container h1 {
	font-size: 40px !important;
	transition-duration: 1s;
	transition-timing-function: ease-in- put;
	font-weight: 200;
	font-family: 'Source Sans Pro', sans-serif;
	color: white;
}

form {
	padding: 20px 0;
	position: relative;
	z-index: 2;
}

form input {
	appearance: none;
	outline: 0;
	border: 1px solid rgba(255, 255, 255, 0.4);
	background-color: rgba(255, 255, 255, 0.2);
	width: 250px;
	border-radius: 3px;
	padding: 10px 15px;
	margin: 0 auto 10px auto;
	display: block;
	text-align: center;
	font-size: 18px;
	color: white;
	-webkit-transition-duration: 0.25s;
	transition-duration: 0.25s;
	font-family: 'Source Sans Pro', sans-serif;
	color: white;
	font-weight: 300;
}

form input:hover {
	background-color: rgba(255, 255, 255, 0.4);
}

form input:focus {
	background-color: white;
	width: 300px;
	color: #53e3a6;
}

form button {
	appearance: none;
	outline: 0;
	background-color: white;
	border: 0;
	padding: 10px 15px;
	color: #53e3a6;
	border-radius: 3px;
	width: 250px;
	cursor: pointer;
	font-size: 18px;
	transition-duration: 0.25s;
}

form input[type='button']:hover {
	background-color: #f5f7f9;
}
</style>
</head>
<body>
	<div class="wrapper">
		<jsp:include page="../nav.jsp"></jsp:include>
		<div class="container">
			<c:choose>
				<c:when test="${empty sessionScope.admin_id }">
			<h1>Welcome</h1>
					<form class="form" id="loginform" name="loginform">
						<input type="text" id="admin_id" name="admin_id"
							placeholder="AdminID"><input type="password"
							id="admin_pw" name="admin_pw" placeholder="Password">
						<button type="submit" id="login">Login</button>
					</form>
				</c:when>
				<c:otherwise>
				<form >
				<h1>"${sessionScope.admin_id}"님 로그인 중입니다.</h1>
				<button type="submit" id="btnlogout" na>Logout</button>
				</form>
				
				
				</c:otherwise>
			</c:choose>
		</div>
	</div>
</body>
</html>