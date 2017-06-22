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
			var faq_number = $(this).parents("tr").attr("data-num");
			$("#faq_number").val(faq_number);
			console.log("번호 : " + faq_number);
			//상세페이지로 이동하기위해 form 추가 (id : detailForm)
			$("#detailForm").attr({
				"method" : "GET",
				"action" : "/faqdetail.do"
			});
			$("#detailForm").submit();
		});
		$("#btninsert").click(function() {

			location.href = "/faqinsertpage.do";
		});

	});
</script>
<style type="text/css">
#faqform {
	margin: 50px;
}
</style>
</head>
<body>
	<div id="faq">
		<jsp:include page="../nav.jsp"></jsp:include>
		<div id="faqform">

			<!--for demo wrap-->
			<h1>리드북스 faq 리스트</h1>
			<div class="tbl-header">

				<form name="detailForm" id="detailForm">
					<input type="hidden" name="faq_number" id="faq_number">
				</form>
				<table>
					<thead>
						<tr>
							<th>번호</th>
							<th>작성자</th>
							<th>분류</th>
							<th>질문</th>
							<th>답변</th>
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
								<td>관리자 <%-- 								${faqlist.admin_id } --%>
								</td>
								<td>${faqlist.faqboard_type }</td>
								<td><span class="goDetail">${faqlist.faqboard_question }</span></td>
								<td>${faqlist.faqboard_answer}</td>
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