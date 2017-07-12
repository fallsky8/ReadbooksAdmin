<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>FAQ</title>
<script type="text/javascript"
	src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript">
<<<<<<< HEAD
=======
	
>>>>>>> dc23175f359e6982e593324a9d627034fedb9bc4
</script>
<script type="text/javascript">
	$(function() {

		var admin_id = "${sessionScope.admin_id}";

		$("#btnedit").click(function() {
			if (admin_id == "admin") {
				$("#editfaqform").attr({
					"method" : "POST",
					"action" : "/faqupdate.do"
				});
				$("#editfaqform").submit();

			} else {
				alert("권한이 없습니다 로그인 해주세요")
			}

		});

		$("#btneditcancle").click(function() {
			location.href = "/faqlist.do"
			// 		history.go(-1)
		});

		$("#faq_status").change(function() {
			var a = $
			{
				faqdetail.faq_status
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

#faqform {
	margin: 100px 100px 100px 150px;
}

th {
	width: 10%;
}

td textarea {
	color: #25b7c4;
	width: 95%;
	height: 150px;
}

td select {
	color: #25b7c4;
	width: 200px;
}

#editfaqform table thead tr td input[type='image'] {
	width: 150px;
	height: 200px;
}
</style>
</head>
<body>
	<div id="faq">
		<jsp:include page="../nav.jsp"></jsp:include>
		<div id="faqform">

			<!--for demo wrap-->
			<h1>FAQ</h1>
			<div class="tbl-content">
				<form id="editfaqform" name="editfaqform">
					<input type="hidden" id="faqboard_number" name="faqboard_number"
						value="${faqdetail.faqboard_number }">
					<table>
						<thead>
							<tr>
								<th>NO.${faqdetail.faqboard_number }</th>
								<td><select id="faqboard_type" name="faqboard_type"
									size="1">
										<option value="${faqdetail.faqboard_type }">현재 유형:
											${faqdetail.faqboard_type }</option>
										<option value="회원">회원</option>
										<option value="상품">상품</option>
										<option value="주문">주문</option>
								</select></td>
							</tr>
						</thead>
						<tbody>
							<tr>
								<th>Question</th>
								<td><textarea id="faqboard_question"
										name="faqboard_question">${faqdetail.faqboard_question }</textarea></td>
							</tr>
							<tr>
								<th>Answer</th>
								<td><textarea id="faqboard_answer" name="faqboard_answer">${faqdetail.faqboard_answer }</textarea></td>
							</tr>


						</tbody>
					</table>
<<<<<<< HEAD

=======
>>>>>>> dc23175f359e6982e593324a9d627034fedb9bc4
					<input type="button" id="btnedit" name="btnedit" value="수정">
					<input type="button" id="btneditcancle" name="btneditcancle"
						value="취소">
				</form>
			</div>
		</div>
	</div>
</body>
</html>