<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<!-- Bootstrap -->
<link href='<c:url value="/css/bootstrap.min.css" />' rel="stylesheet">
<link href='<c:url value="/css/kfonts2.css" />' rel="stylesheet">

<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src='<c:url value="/jquery/jquery-1.11.3.min.js" />'></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src='<c:url value="/js/bootstrap.min.js"  />'></script>
<link rel="stylesheet" href="/resources/css/nav.css">
<link rel="stylesheet" href="/resources/css/common.css">
<script type="text/javascript" src="/resources/js/nav.js"></script>
<style type="text/css">
#mailform {
	margin: 50px;
}
</style>
<title>메일 보내기</title>

</head>
<body>
<div>
	<nav class='sidebar sidebar-menu-collapsed'>
		<a href='' id='justify-icon'> <span
			class='glyphicon glyphicon-align-justify'></span>
		</a>
		<ul>
			<li class='active'><a class='expandable' href=''
				title='Dashboard'> <span
					class='glyphicon glyphicon-home collapsed-element'></span> <span
					class='expanded-element'>홈</span>
			</a></li>
			<li><a class='expandable' href='/bookinsert.do'
				title='BookInsert'> <span
					class='glyphicon glyphicon-wrench collapsed-element'></span> <span
					class='expanded-element'>상품 등록</span>
			</a></li>
			<li><a class='expandable' href='/booklist.do' title='Account'>
					<span class='glyphicon glyphicon-user collapsed-element'></span> <span
					class='expanded-element'>상품 조회</span>
			</a></li>
			<li><a class='expandable' href='/orderlist.do' title='OrderList'>
					<span class='glyphicon glyphicon-cog collapsed-element'></span> <span
					class='expanded-element'>주문 조회</span>
			</a></li>
			<li><a class='expandable' href='/userlist.do' title='UserList'>
					<span class='glyphicon glyphicon-user collapsed-element'></span> <span
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
	<div class="tbl-header">
	<h1>메일 보내기</h1>
		<form id="mailform"
			<%-- 		${pageContext.request.contextPath} --%>
			action="/mail/mailSending.do"
			method="post">
			<table>
				<tbody>
					<tr>
						<td>
							<!-- 받는 사람 이메일 --> <input type="text" name="tomail" size="120"
							style="width: 100%" placeholder="상대의 이메일" class="form-control">
						</td>

					</tr>
					<tr>
						<td>
							<!-- 제목 --> <input type="text" name="title" size="120"
							style="width: 100%" placeholder="제목을 입력해주세요" class="form-control">
						</td>
					</tr>
					<tr>
						<td>
							<!-- 내용 --> <textarea name="content" cols="120" rows="12"
								style="width: 100%; resize: none" placeholder="내용#"
								class="form-control"></textarea>
						</td>
					</tr>
					<tr>
						<td><input type="submit" value="메일 보내기"
							class="btn btn-warning"></td>
					</tr>
				</tbody>
			</table>
		</form>
	</div>
</div>
</body>
</html>
