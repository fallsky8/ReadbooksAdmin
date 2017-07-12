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
		function replaceBR() {

			document.bookinsertform.book_bookinfo.value = document.bookinsertform.book_bookinfo.value
					.replace(/\n/gi, '<br />');
			document.bookinsertform.book_writerinfo.value = document.bookinsertform.book_writerinfo.value
					.replace(/\n/gi, '<br />');
			document.bookinsertform.book_publisherreview.value = document.bookinsertform.book_publisherreview.value
					.replace(/\n/gi, '<br />');

			return true;

		}

		var admin_id = "${sessionScope.admin_id}";

		$("#btnbookinsert").click(function() {
			if (admin_id == "admin") {
				$("#bookinsertform").attr({
					"method" : "POST",
					"action" : "/bookinsert.do"
				});
				replaceBR();
				$("#bookinsertform").submit();
			} else {
				alert("권한이 없습니다 로그인 해주세요")
			}
		});

		$("#btnbookcancle").click(function() {
			history.go(-1)
		});
	});
</script>
<style type="text/css">
#bookform {
	margin: 100px 100px 100px 150px;
}

th {
	width: 100px;
}

td input {
	width: 60%;
}

#image_file {
	color: white !important;
}

td textarea {
	color: #25b7c4;
	width: 95%;
	height: 150px;
}
</style>
</head>
<body>
	<jsp:include page="../nav.jsp"></jsp:include>
	<div id="bookform">

		<h1>상품 등록</h1>
		<form id="bookinsertform" name="bookinsertform"
			enctype="multipart/form-data">
			<table>
				<tr>
					<th>책 번호</th>
					<td><input type="text" id="book_number" name="book_number"></td>
					<th>상품명</th>
					<td><input type="text" id="book_name" name="book_name"></td>
				</tr>

				<tr>
					<td>상품수량</td>
					<td><input type="text" id="book_quantity" name="book_quantity"></td>
					<td>상품 가격</td>
					<td><input type="text" id="book_price" name="book_price"></td>
				</tr>

				<tr>
					<td>국내외여부</td>
					<td><input type="text" id="book_country" name="book_country"></td>
					<td>장단편여부</td>
					<td><input type="text" id="book_story" name="book_story"></td>
				</tr>

				<tr>
					<td>저자</td>
					<td><input type="text" id="book_writer" name="book_writer"></td>
					<td>출판사</td>
					<td><input type="text" id="book_publisher"
						name="book_publisher"></td>
				</tr>

				<tr>
					<th>책소개</th>
					<td colspan="3"><textarea id="book_bookinfo"
							name="book_bookinfo"></textarea></td>
				</tr>
				<tr>
					<th>저자소개</th>
					<td colspan="3"><textarea id="book_writerinfo"
							name="book_writerinfo"></textarea></td>
				</tr>
				<tr>
					<th>출판사리뷰</th>
					<td colspan="3"><textarea id="book_publisherreview"
							name="book_publisherreview"></textarea></td>
				</tr>
				<tr>
					<th>상품이미지</th>
					<td><input type="file" id="image_file" name="image_file"></td>

					<th>출판일</th>
					<td><input type="text" id="book_opening" name="book_opening"></td>
				</tr>

				<tr>
					<th></th>
					<td><input type="button" id="btnbookinsert" value="등록하기"></td>

					<th></th>
					<td><input type="button" id="btnbookcancle" value="취소"></td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>