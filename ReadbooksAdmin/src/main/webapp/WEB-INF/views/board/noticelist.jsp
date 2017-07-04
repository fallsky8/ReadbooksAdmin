<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>공지사항 게시판</title>
<script type="text/javascript"
	src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript">
	//제목 클릭시 상세페이지 이동
	$(function() {
		var admin_id = "${sessionScope.admin_id}";

		$(".goDetail").click(function() {


			if (admin_id == "admin") {

			var noticeboard_number = $(this).parents("tr").attr("data-num");
			$("#noticeboard_number").val(noticeboard_number);
			console.log("번호 : " + noticeboard_number);
			//상세페이지로 이동하기위해 form 추가 (id : detailForm)
			$("#detailForm").attr({
				"method" : "GET",
				"action" : "/noticedetail.do"
			});
			$("#detailForm").submit();
			} else {
				alert("권한이 없습니다 로그인 해주세요")
			}});
		$("#btninsert").click(function() {
			// 			alert(admin_id)
			if (admin_id == "admin") {

				location.href = "/noticeinsertpage.do";
			} else {
				alert("권한이 없습니다 로그인 해주세요")
			}
		});

	});
</script>
<style type="text/css">
#noticeform {
	margin: 100px;
}
</style>
</head>
<body>
	<div id="notice">
		<jsp:include page="../nav.jsp"></jsp:include>
		<div id="noticeform">

			<!--for demo wrap-->
			<h1>공지사항 게시판</h1>
			<div class="tbl-header">

				<form name="detailForm" id="detailForm">
					<input type="hidden" name="noticeboard_number"
						id="noticeboard_number">
				</form>
				<table>
					<thead>
						<tr>
							<th>번호</th>
							<th>제목</th>
							<th>내용</th>
							<th>작성자</th>
							<th>등록일</th>

						</tr>
					</thead>
				</table>
			</div>
			<!-- 상세페이지 이동을 위한 form -->

			<div class="tbl-content">

				<table>
					<tbody>
						<c:forEach var="noticelist" items="${noticelist}"
							varStatus="status">
							<tr data-num="${noticelist.noticeboard_number}">
								<td>${noticelist.noticeboard_number }</td>
								<td><span class="goDetail">${noticelist.noticeboard_title }</span></td>
								<td>${noticelist.noticeboard_contents }</td>
								<td>${noticelist.noticeboard_writer }</td>
								<td>${noticelist.noticeboard_registerdate }</td>
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