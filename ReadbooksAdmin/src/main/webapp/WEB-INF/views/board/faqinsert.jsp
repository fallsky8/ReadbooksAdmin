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
		$("#btnfaqinsert").click(function() {
			$("#faqinsertform").attr({
				"method" : "POST",
				"action" : "/faqinsert.do"
			});
			$("#faqinsertform").submit();
		});

		$("#btnfaqcancle").click(function() {
			history.go(-1)
		});
	});
</script>

<style type="text/css">
#faqinsertform {
	margin: 50px;
}

th {
	width: 100px;
}

td input,td select {
	width: 60%;
	color: #25b7c4;
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
	<div>

		<h1>FAQ 게시판 등록</h1>
		<form id="faqinsertform" name="faqinsertform">
			<input id="admin_id" name="admin_id" type="hidden"
				value="${sessionScope.admin_id }">
			<table>

				<tr>
					<th>분류</th>
					<td><select id="faqboard_type" name="faqboard_type" size="1">


							<option value="상품">상품관련</option>
							<option value="회원">회원관련</option>
							<option value="주문">주문관련</option>
					</select></td>
				</tr>


				<tr>
					<th>Q</th>
					<td colspan="3"><textarea id="faqboard_question" name="faqboard_question"></textarea></td>
				</tr>
				<tr>
					<th>A</th>
					<td colspan="3"><textarea id="faqboard_answer" name="faqboard_answer"></textarea></td>
				</tr>

				<tr>
				<th colspan="2"></th>
					<td><input type="button" id="btnfaqinsert"
						value="등록하기"></td>

					<td><input type="button" id="btnfaqcancle"
						value="취소"></td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>