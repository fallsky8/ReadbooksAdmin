<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript"
	src="http://code.jquery.com/jquery-latest.js"></script>
<link rel="stylesheet" href="/resources/css/nav.css">
<link rel="stylesheet" href="/resources/css/common.css">
<script type="text/javascript" src="/resources/js/nav.js"></script>



</head>
<body>

	<nav class='sidebar sidebar-menu-collapsed'>
		<a href='' id='justify-icon'> <span
			class='glyphicon glyphicon-align-justify'></span>
		</a>
		<ul>
			<li class='active'><a class='expandable' href='/admin.do'
				title='Dashboard'> <span
					class='glyphicon glyphicon-home collapsed-element'></span> <span
					class='expanded-element'>홈</span>
			</a></li>

			<li><a class='expandable' href='/booklist.do' title='Account'>
					<span class='glyphicon glyphicon-book collapsed-element'></span> <span
					class='expanded-element'>상품 조회</span>
			</a></li>
			<li><a class='expandable' href='/orderlist.do' title='OrderList'>
					<span class='glyphicon glyphicon-shopping-cart collapsed-element'></span>
					<span class='expanded-element'>주문 조회</span>
			</a></li>
			<li><a class='expandable' href='/userlist.do' title='UserList'>
					<span class='glyphicon glyphicon-user collapsed-element'></span> <span
					class='expanded-element'>회원 조회</span>
			</a></li>
			<li><a class='expandable' href='/faqlist.do' title='FAQList'>
					<span class='glyphicon glyphicon-question-sign collapsed-element'></span> <span
					class='expanded-element'>FAQ게시판</span>
			</a></li>
			<li><a class='expandable' href='/mail.do' title='Email'> <span
					class='glyphicon glyphicon-envelope collapsed-element'></span> <span
					class='expanded-element'>메일 작성</span>
			</a></li>
		</ul>
		<a href='/login.do' id='logout-icon' title='Logout'> <span
			class='glyphicon glyphicon-off'></span>
		</a>
	</nav>
</body>
</html>