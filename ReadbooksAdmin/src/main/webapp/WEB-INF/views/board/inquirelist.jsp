<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE>
<html>
<head>
<title>1:1문의 사항</title>
<script type="text/javascript"
	src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript">
	//제목 클릭시 상세페이지 이동
	$(function() {
		var admin_id = "${sessionScope.admin_id}";

		$(".goDetail").click(function() {
			if (admin_id == "admin") {

				var inquire_number = $(this).parents("tr").attr("data-num");
				$("#inquireboard_number").val(inquire_number);
				//상세페이지로 이동하기위해 form 추가 (id : detailForm)
				$("#detailForm").attr({
					"method" : "GET",
					"action" : "/inquiredetail.do"
				});
				$("#detailForm").submit();
			} else {
				alert("권한이 없습니다 로그인 해주세요")
			}
		});
		$("#btninsert").click(function() {
			// 			alert(admin_id)
			if (admin_id == "admin") {

				location.href = "/inquireinsertpage.do";
			} else {
				alert("권한이 없습니다 로그인 해주세요")
			}
		});

	});
</script>
<style type="text/css">
#inquireform {
	margin: 100px;
}
</style>
</head>
<body>
	<div id="inquire">
		<jsp:include page="../nav.jsp"></jsp:include>
		<div id="inquireform">

			<!--for demo wrap-->
			<h1>inquire 게시판</h1>
			<div class="tbl-header">

				<form name="detailForm" id="detailForm">
					<input type="hidden" name="inquireboard_number"
						id="inquireboard_number">
				</form>
				<table>
					<thead>
						<tr>
							<th>번호</th>
							<th>질문 제목</th>
							<th>질문내용</th>
							<th>작성자</th>
							<th>답변 내용</th>
							<th>칠문유형</th>

						</tr>
					</thead>
				</table>
			</div>
			<!-- 상세페이지 이동을 위한 form -->

			<div class="tbl-content">

				<table>
					<tbody>
						<c:forEach var="inquirelist" items="${inquirelist}"
							varStatus="status">
							<tr data-num="${inquirelist.inquireboard_number}">
								<td>${inquirelist.inquireboard_number }</td>
								<td><span class="goDetail">${inquirelist.inquireboard_title }</span></td>
								<td>${inquirelist.inquireboard_contents}</td>
								<td>${inquirelist.user_id}</td>
								<td>${inquirelist.inquireboard_answer }</td>
								<td>${inquirelist.inquireboard_type }</td>
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