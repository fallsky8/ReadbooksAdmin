<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>agreement</title>
<script type="text/javascript"
	src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript">
	
</script>
<script type="text/javascript">
	$(function() {

		var admin_id = "${sessionScope.admin_id}";

		$("#btnedit").click(function() {
			if (admin_id == "admin") {
				$("#editagreementform").attr({
					"method" : "POST",
					"action" : "/agreementupdate.do"
				});
				$("#editagreementform").submit();
				alert("수정했습니다.")
			} else {
				alert("권한이 없습니다 로그인 해주세요")
			}

		});

		$("#btneditcancle").click(function() {
			location.href = "/agreement.do"
			// 		history.go(-1)
		});

	});
</script>
<style type="text/css">
.tbl-content {
	width: 800px;
	height: auto !important;
}

#agreementform {
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

#editagreementform table thead tr td input[type='image'] {
	width: 150px;
	height: 200px;
}
</style>
</head>
<body>
	<div id="agreement">
		<jsp:include page="../nav.jsp"></jsp:include>
		<div id="agreementform">

			<!--for demo wrap-->
			<h1>이용약관</h1>
			<div class="tbl-content">
				<form id="editagreementform" name="editagreementform">

					<table>

						<tbody>
							<tr>
								<th>이용약관 동의</th>
								<td><textarea id="agreement_serviceagreement"
										name="agreement_serviceagreement">${agreementlist.agreement_serviceagreement }</textarea></td>
							</tr>
							<tr>
								<th>개인정보 수집 동의</th>
								<td><textarea id="agreement_collectiveagreement"
										name="agreement_collectiveagreement">${agreementlist.agreement_collectiveagreement }</textarea></td>
							</tr>
							<tr>
								<th>개인정보 처리 위탁 동의</th>
								<td><textarea id="agreement_referralagreement"
										name="agreement_referralagreement">${agreementlist.agreement_referralagreement }</textarea></td>
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