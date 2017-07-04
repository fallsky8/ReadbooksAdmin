<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>공지사항</title>
<script type="text/javascript"
	src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript">
	
</script>
<script type="text/javascript">
	$(function() {

		var admin_id = "${sessionScope.admin_id}";

		$("#btnedit").click(function() {
			if (admin_id == "admin") {
				$("#editnoticeform").attr({
					"method" : "POST",
					"action" : "/noticeupdate.do"
				});
				$("#editnoticeform").submit();

			} else {
				alert("권한이 없습니다 로그인 해주세요")
			}

		});

		$("#btneditcancle").click(function() {
			location.href = "/noticelist.do"
			// 		history.go(-1)
		});

	

	});
</script>
<style type="text/css">
.tbl-content {
	width: 800px;
	height: auto !important;
}

#noticeform {
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

#editnoticeform table thead tr td input[type='image'] {
	width: 150px;
	height: 200px;
}
</style>
</head>
<body>
	<div id="notice">
		<jsp:include page="../nav.jsp"></jsp:include>
		<div id="noticeform">

			<!--for demo wrap-->
			<h1>공지사항</h1>
			<div class="tbl-content">
				<form id="editnoticeform" name="editnoticeform">
<input type="hidden" id="noticeboard_number" name="noticeboard_number"
						value="${noticedetail.noticeboard_number }">
					<table>
						<thead>
							<tr>
								<th>NO.${noticedetail.noticeboard_number}</th>
								<td>작성자 : <input type="text" hidden="hidden" id="noticeboard_writer"
										name="noticeboard_writer" value="${noticedetail.noticeboard_writer}">${noticedetail.noticeboard_writer}</td>
							</tr>
						</thead>
						<tbody>
							<tr>
								<th>제목</th>
								<td><input type="text" id="noticeboard_title"
										name="noticeboard_title" value="${noticedetail.noticeboard_title }"></td>
							</tr>
							<tr>
								<th>내용</th>
								<td><textarea id="noticeboard_contents" name="noticeboard_contents">${noticedetail.noticeboard_contents }</textarea></td>
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