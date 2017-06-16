<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>리드북스 상품 리스트</title>
<script type="text/javascript"
	src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript">
	
</script>
<link rel="stylesheet" href="/resources/css/nav.css">
<link rel="stylesheet" href="/resources/css/common.css">
<script type="text/javascript" src="/resources/js/nav.js"></script>
<style type="text/css">
#bookform {
	margin: 50px;
}
</style>
</head>
<body>
	<div id="book"><nav class='sidebar sidebar-menu-collapsed'>
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
		<div id="bookform">

			<!--for demo wrap-->
			<h1>리드북스 상품 리스트</h1>
			<div class="tbl-header">
				<table>
					<thead>
						<tr>
							<th>번호</th>
							<th>제목</th>
							<th>수량</th>
							<th>가격</th>
							<th>국내/해외</th>
							<th>장편/단편</th>
							<th>저자</th>
							<th>출판사</th>
							<th>책소개</th>
							<th>저자소개</th>
							<th>출판사리뷰</th>
							<th>이미지</th>
							<th>할인율</th>
							<th>상태</th>
							<th>출판일</th>


						</tr>
					</thead>
				</table>
			</div>
			<div class="tbl-content">
				<c:forEach var="booklist" items="${booklistget}" varStatus="status">
					<table>
						<tbody>
							<tr>

								<td>${booklist.book_number }</td>
								<td>${booklist.book_name }</td>
								<td>${booklist.book_quantity }</td>
								<td>${booklist.book_price }</td>
								<td>${booklist.book_country }</td>
								<td>${booklist.book_story }</td>
								<td>${booklist.book_writer }</td>
								<td>${booklist.book_publisher }</td>
								<td>${booklist.book_bookinfo }</td>
								<td>${booklist.book_writerinfo }</td>
								<td>${booklist.book_publisherreview }</td>
								<td>${booklist.book_image }</td>
								<td>${booklist.book_discount }%</td>
								<td>${booklist.book_status }</td>
								<td>${booklist.book_opening }</td>
							</tr>
						</tbody>
					</table>
				</c:forEach>

			</div>
		</div>
	</div>
</body>
</html>