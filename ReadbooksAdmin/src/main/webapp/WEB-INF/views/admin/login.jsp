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
		$("#login").click(function() {
			$("#loginform").attr({
				"method" : "POST",
				"action" : "/checklogin.do"
			});
			$("#loginform").submit();
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
<link rel="stylesheet" href="/resources/css/nav.css">
<link rel="stylesheet" href="/resources/css/common.css">
<script type="text/javascript" src="/resources/js/nav.js"></script>
<style type="text/css">
#loginform{
margin: 50px;
}
</style>
</head>
<body>
	<div>
		<div>
<nav class='sidebar sidebar-menu-collapsed'>
		<a href='#' id='justify-icon'> <span
			class='glyphicon glyphicon-align-justify'></span>
		</a>
		<ul>
			<li class='active'><a class='expandable' href=''
				title='Dashboard'> <span
					class='glyphicon glyphicon-home collapsed-element'></span> <span
					class='expanded-element'>홈</span>
			</a></li>
			<li><a class='expandable' href='/bookinsert.do' title='BookInsert'> <span
					class='glyphicon glyphicon-wrench collapsed-element'></span> <span
					class='expanded-element'>상품 등록</span>
			</a></li>
			<li><a class='expandable' href='/booklist.do' title='Account'> <span
					class='glyphicon glyphicon-user collapsed-element'></span> <span
					class='expanded-element'>상품 조회</span>
			</a></li>
			<li><a class='expandable' href='/orderlist.do' title='OrderList'> <span
					class='glyphicon glyphicon-cog collapsed-element'></span> <span
					class='expanded-element'>주문 조회</span>
			</a></li>
			<li><a class='expandable' href='/userlist.do' title='UserList'> <span
					class='glyphicon glyphicon-user collapsed-element'></span> <span
					class='expanded-element'>회원 조회</span>
			</a></li>
			<li><a class='expandable' href='/mail.do' title='Email'> <span
					class='glyphicon glyphicon-user collapsed-element'></span> <span
					class='expanded-element'>메일 작성</span>
			</a></li>
		</ul>
		<a href='/login.do' id='logout-icon' title='Logout'> <span
			class='glyphicon glyphicon-off'></span>
		</a>
	</nav>
			<form id="loginform" name="loginform">
				<h1>로그인</h1>
				<div class="tbl-content">
					<input type="hidden" name="csrf" value="${CSRF_TOKEN} ">
					<table>
						<thead>
							
							
							<c:choose>
								<c:when test="${empty sessionScope.admin_id }">
									<tr>

										<th><input type="text" id="admin_id" name="admin_id"
											placeholder="아이디"></th>
										<th><input type="password" id="admin_pw" name="admin_pw"
											placeholder="비밀번호"></th>
										<th><input type="button" id="login"
											name="login" value="로그인"></th>
									</tr>
								</c:when>
								<c:otherwise>
									<tr>
										<td>관리자님 환영합니다.</td>
										<td><input type="button" id="btnlogout" name="btnlogout"
											value="로그아웃"></td>
									</tr>

								</c:otherwise>
							</c:choose>
						</thead>
					</table>
				</div>
			</form>

		</div>
	</div>
</body>
</html>