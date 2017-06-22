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
	//제목 클릭시 상세페이지 이동
	$(function() {

		$(".goDetail").click(function() {
			var book_number = $(this).parents("tr").attr("data-num");
			$("#book_number").val(book_number);
			console.log("책번호 : " + book_number);
			//상세페이지로 이동하기위해 form 추가 (id : detailForm)
			$("#detailForm").attr({
				"method" : "get",
				"action" : "/bookdetail.do"
			});
			$("#detailForm").submit();
		});
		$("#btninsert").click(function() {

			location.href = "/bookinsertpage.do";
		});

	});
</script>
<style type="text/css">
#bookform {
	margin: 50px;
}

</style>
</head>
<body>
	<div id="book">
		<jsp:include page="../nav.jsp"></jsp:include>
		<div id="bookform">

			<!--for demo wrap-->
			<h1>리드북스 상품 리스트</h1>
			<div class="tbl-header">

				<form name="detailForm" id="detailForm">
					<input type="hidden" name="book_number" id="book_number">
				</form>
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
							<!-- 							<th>책소개</th> -->
							<!-- 							<th>저자소개</th> -->
							<!-- 							<th>출판사리뷰</th> -->
							<th>이미지</th>
							<!-- 							<th>할인율</th> -->
							<th>상태</th>
							<th>출판일</th>
						</tr>
					</thead>
				</table>
			</div>
			<!-- 상세페이지 이동을 위한 form -->

			<div class="tbl-content">

				<table>
					<tbody>
						<c:forEach var="booklist" items="${booklist}" varStatus="status">
							<tr data-num="${booklist.book_number}">
								<td>${booklist.book_number }</td>
								<td><span class="goDetail">${booklist.book_name }</span></td>
								<td>${booklist.book_quantity }EA</td>
								<td>${booklist.book_price }원</td>
								<td>${booklist.book_country }</td>
								<td>${booklist.book_story }</td>
								<td>${booklist.book_writer }</td>
								<td>${booklist.book_publisher }</td>
								<%-- 								<td>${booklist.book_bookinfo }</td> --%>
								<%-- 								<td>${booklist.book_writerinfo }</td> --%>
								<%-- 								<td>${booklist.book_publisherreview }</td> --%>
								<td>${booklist.book_image }</td>
								<%-- 								<td>${booklist.book_discount }%</td> --%>
								<td>${booklist.book_status }</td>
								<td>${booklist.book_opening }</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
			<input type="button" id="btninsert" name="btninsert" value="등록">
		</div>
	</div>
</body>
</html>