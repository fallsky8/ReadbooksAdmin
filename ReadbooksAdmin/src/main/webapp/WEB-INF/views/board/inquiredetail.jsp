<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>inquire</title>
<script type="text/javascript"
	src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript">
	
</script>
<script type="text/javascript">
	$(function() {

		var admin_id = "${sessionScope.admin_id}";

		$("#btnedit").click(function() {
			if (admin_id == "admin") {
				$("#editinquireform").attr({
					"method" : "POST",
					"action" : "/inquireupdate.do"

				});
				$("#editinquireform").submit();

			} else {
				alert("권한이 없습니다 로그인 해주세요")
			}

		});

		$("#btneditcancle").click(function() {
			location.href = "/inquirelist.do"
			// 		history.go(-1)
		});

	});
</script>
<style type="text/css">
.tbl-content {
	width: 800px;
	height: auto !important;
}

#inquireform {
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

#editinquireform table thead tr td input[type='image'] {
	width: 150px;
	height: 200px;
}
</style>
</head>
<body>
	<div id="inquire">
		<jsp:include page="../nav.jsp"></jsp:include>
		<div id="inquireform">

			<!--for demo wrap-->
			<h1>1:1 문의</h1>
			<div class="tbl-content">
				<form id="editinquireform">
					<input type="hidden" id="inquireboard_number"
						name="inquireboard_number"
						value="${inquiredetail.inquireboard_number }">
					<table>
						<thead>
							<tr>
								<th>NO.${inquiredetail.inquireboard_number }</th>
								<td><input id="inquireboard_type" name="inquireboard_type"
									value="${inquiredetail.inquireboard_type }" disabled="disabled">
								</td>
								<th>작성자 :</th>
								<td><input id="user_id" name="user_id"
									value="${inquiredetail.user_id }" disabled="disabled"></td>
							</tr>
						</thead>
						<tbody>
							<tr>

								<th>제목 :</th>
								<td colspan="3"><input id="inquireboard_title"
									name="inquireboard_title"
									value="${inquiredetail.inquireboard_title }"
									disabled="disabled"></td>
							</tr>
							<tr>
								<th>내용 :</th>
								<td colspan="3"><textarea id="inquireboard_contents"
										name="inquireboard_contents" disabled="disabled">${inquiredetail.inquireboard_contents }</textarea></td>
							</tr>

							<tr>
								<th>답변 :</th>
								<td colspan="3"><textarea id="inquireboard_answer"
										name="inquireboard_answer">${inquiredetail.inquireboard_answer }</textarea></td>
							</tr>
							<tr>
								<th>첨부파일<input hidden="hidden" type="text"
									id="inquireboard_attachmentfile"
									name="inquireboard_attachmentfile"
									value="${inquiredetail.inquireboard_attachmentfile }"></th>

								<td colspan="3"><input type="image"
									src="resources/image/${inquiredetail.inquireboard_attachmentfile }"
									disabled="disabled"></td>

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