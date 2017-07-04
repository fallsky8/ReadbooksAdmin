<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE>
<html>
<head>
<title>FAQ 게시판</title>
<script type="text/javascript"
	src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript">
	//제목 클릭시 상세페이지 이동
	$(function() {
		var admin_id = "${sessionScope.admin_id}";

		$(".goDetail").click(function() {
			if (admin_id == "admin") {

			var faq_number = $(this).parents("tr").attr("data-num");
			$("#faqboard_number").val(faq_number);
			console.log("번호 : " + faq_number);
			//상세페이지로 이동하기위해 form 추가 (id : detailForm)
			$("#detailForm").attr({
				"method" : "GET",
				"action" : "/faqdetail.do"
			});
			$("#detailForm").submit();
			} else {
				alert("권한이 없습니다 로그인 해주세요")
			}});
		$("#btninsert").click(function() {
			// 			alert(admin_id)
			if (admin_id == "admin") {

				location.href = "/faqinsertpage.do";
			} else {
				alert("권한이 없습니다 로그인 해주세요")
			}
		});

	});
</script>
<style type="text/css">
#faqform {
	margin: 100px;
}
</style>
</head>
<body>
	<div id="faq">
		<jsp:include page="../nav.jsp"></jsp:include>
		<div id="faqform">

			<!--for demo wrap-->
			<h1>FAQ 게시판</h1>
			<div class="tbl-header">

				<form name="detailForm" id="detailForm">
					<input type="hidden" name="faqboard_number" id="faqboard_number">
				</form>
				<table>
					<thead>
						<tr>
							<th>번호</th>
							<th>질문</th>
							<th>답변</th>
							<th>작성자</th>
							<th>분류</th>
							<th>등록일</th>

						</tr>
					</thead>
				</table>
			</div>
			<!-- 상세페이지 이동을 위한 form -->

			<div class="tbl-content">

				<table>
					<tbody>
						<c:forEach var="faqlist" items="${faqlist}" varStatus="status">
							<tr data-num="${faqlist.faqboard_number}">
								<td>${faqlist.faqboard_number }</td>
								<td><span class="goDetail">${faqlist.faqboard_question }</span></td>
								<td>${faqlist.faqboard_answer}</td>
								<td>관리자 <%-- 								${faqlist.admin_id } --%>
								</td>
								<td>${faqlist.faqboard_type }</td>
								<td>${faqlist.faqboard_registerdate }</td>
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