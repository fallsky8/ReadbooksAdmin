<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>리드북스 상품 상세정보</title>
<script type="text/javascript"
	src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript">
	
</script>
<script type="text/javascript">
	$(function() {
		$("#btnedit").click(function() {
			$("#editbookform").attr({
				"method" : "POST",
				"action" : "/bookupdate.do"
			});
			$("#editbookform").submit();
		});

		$("#btneditcancle").click(function() {
			location.href = "/booklist.do"
			// 		history.go(-1)
		});

		$("#book_status").change(function() {
			var a = $
			{
				bookdetail.book_status
			}
			;
			this.val(a);

		});

	});
</script>
<style type="text/css">
.tbl-content {
	width: 800px;
	height: auto !important;
}

#bookform {
	margin: 50px;
}

th {
	width: 10%;
}

textarea {
	color: #25b7c4;
	width: 95%;
	height: 150px;
}

td select {
	color: #25b7c4;
	width: 200px;
}

#editbookform table thead tr td input[type='image'] {
	width: 150px;
	height: 200px;
}
</style>
</head>
<body>
	<div id="book">
		<jsp:include page="../nav.jsp"></jsp:include>
		<div id="bookform">

			<!--for demo wrap-->
			<h1>리드북스 상품 리스트</h1>
			<div class="tbl-content">
				<form id="editbookform" name="editbookform">

					<table>
						<thead>
							<tr>
								<th>이미지<input hidden="hidden" type="text" id="book_image"
									name="book_image" value="${bookdetail.book_image }"></th>
								<td><input type="image"
									src="resources/image/${bookdetail.book_image }"></td>
							</tr>
						</thead>
						<tbody>
							<tr>
								<th>번호</th>
								<td><input type="text" id="book_number" name="book_number"
									value="${bookdetail.book_number }"></td>
							</tr>
							<tr>
								<th>제목</th>
								<td><input type="text" id="book_name" name="book_name"
									value="${bookdetail.book_name }"></td>
							</tr>
							<tr>
								<th>수량</th>
								<td><input type="text" type="text" id="book_quantity"
									name="book_quantity" value="${bookdetail.book_quantity }"></td>
							</tr>
							<tr>
								<td>가격</td>
								<td><input type="text" id="book_price" name="book_price"
									value="${bookdetail.book_price }"></td>
							</tr>
							<tr>
								<td>국내/해외</td>
								<td><input type="text" id="book_country"
									name="book_country" value="${bookdetail.book_country }"></td>
							</tr>
							<tr>
								<th>장편/단편</th>
								<td><input type="text" id="book_story" name="book_story"
									value="${bookdetail.book_story }"></td>
							</tr>
							<tr>
								<th>저자</th>
								<td><input type="text" id="book_writer" name="book_writer"
									value="${bookdetail.book_writer }"></td>
							</tr>
							<tr>
								<th>출판사</th>
								<td><input type="text" id="book_publisher"
									name="book_publisher" value="${bookdetail.book_publisher }"></td>
							</tr>
							<tr>
								<th>책소개</th>
								<td><textarea id="book_bookinfo" name="book_bookinfo">${bookdetail.book_bookinfo }</textarea></td>
							</tr>
							<tr>
								<th>저자소개</th>
								<td><textarea id="book_writerinfo" name="book_writerinfo">${bookdetail.book_writerinfo }</textarea></td>
							</tr>
							<tr>
								<th>출판사리뷰</th>
								<td><textarea id="book_publisherreview"
										name="book_publisherreview">${bookdetail.book_publisherreview }</textarea></td>
							</tr>
							<tr>
								<th>할인율</th>
								<td><input id="book_discount" name="book_discount"
									type="text" value="${bookdetail.book_discount }">%</td>
							</tr>
							<tr>
								<th>상태</th>
								<td><select id="book_status" name="book_status" size="1">

										<option value="${bookdetail.book_status}">저장된 값 :
											${bookdetail.book_status}</option>
										<option value="판매중">판매중</option>
										<option value="판매중지">판매중지</option>
								</select></td>
							</tr>
							<tr>
								<th>출판일</th>
								<td><input type="text" id="book_opening"
									name="book_opening" value="${bookdetail.book_opening }"></td>
							</tr>

						</tbody>
					</table>

					<input type="button" id="btnedit" name="btnedit" value="수정">
					<input type="button" id="btneditcancle" name="btneditcancle"
						value="취소">
				</form>
			</div>
		</div>
	</div>
</body>
</html>