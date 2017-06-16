<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>리드북스 상품 등록</title>
<script type="text/javascript"
	src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript">
	$(function() {
		$("#btnbookinsert").click(function() {
			$("#bookinsertform").attr({
				"method" : "POST",
				"action" : "/bookinsert.do"
			});
			$("#bookinsertform").submit();
		});

		$("#btnbookcancle").click(function() {
			history.go(-1)
		})
	});
</script>
<link rel="stylesheet" href="/resources/css/nav.css">
<link rel="stylesheet" href="/resources/css/common.css">
<script type="text/javascript" src="/resources/js/nav.js"></script>
<style type="text/css">
#bookinsertform {
	margin: 50px;
}
textarea {
	width: 80%;
	height: 80px;
}
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
	<div>
		<h1>상품 등록</h1>
		<form id="bookinsertform" name="bookinsertform">
			<table>
				<tr>
					<td>책 번호<input type="text" id="book_number" name="book_number"></td>
					<td>상품명 <input type="text" id="book_name" name="book_name"></td>
				</tr>

				<tr>
					<td>상품수량<input type="text" id="book_quantity"
						name="book_quantity"></td>
					<td>상품 가격<input type="text" id="book_price" name="book_price"></td>
				</tr>

				<tr>
					<td>국내외여부 <input type="text" id="book_country"
						name="book_country"></td>
					<td>장단편여부 <input type="text" id="book_story" name="book_story"></td>
				</tr>

				<tr>
					<td>저자 <input type="text" id="book_writer" name="book_writer"></td>
					<td>출판사<input type="text" id="book_publisher"
						name="book_publisher"></td>
				</tr>

				<tr>
					<td colspan="2">책소개 <textarea id="book_bookinfo"
							name="book_bookinfo"></textarea></td>
				</tr>
				<tr>
					<td colspan="2">저자소개 <textarea id="book_writerinfo"
							name="book_writerinfo"></textarea></td>
				</tr>
				<tr>
					<td colspan="2">출판사리뷰 <textarea id="book_publisherreview"
							name="book_publisherreview"></textarea></td>
				</tr>
				<tr>
					<td>상품이미지 <input type="text" id="book_image" name="book_image"></td>
					<td>출판일<input type="text" id="book_opening"
						name="book_opening"></td>
				</tr>

				<tr>
					<td><input type="button" id="btnbookinsert" value="등록하기"></td>
				</tr>
				<tr>
					<td><input type="button" id="btnbookcancle" value="취소"></td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>