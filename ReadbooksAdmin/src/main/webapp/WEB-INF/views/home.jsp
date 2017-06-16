<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>리드북스 관리자페이지</title>
<script type="text/javascript"
	src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript" src="/resources/js/nav.js"></script>
<link rel="stylesheet" href="/resources/css/nav.css">
<style type="text/css">
</style>
</head>

<body>
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
</body>
</html>