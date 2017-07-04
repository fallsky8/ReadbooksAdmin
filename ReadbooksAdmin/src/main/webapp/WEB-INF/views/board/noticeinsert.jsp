<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>공지사항 등록</title>
<script type="text/javascript"
	src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript">
	$(function() {
		var admin_id="${sessionScope.admin_id}";
			
		$("#btnnoticeinsert").click(function() {
		if(admin_id=="admin"){
			$("#noticeinsertform").attr({
				"method" : "POST",
				"action" : "/noticeinsert.do"
			});
			$("#noticeinsertform").submit();
		}else {
			alert("권한이 없습니다 로그인 해주세요")
		}
		});

		$("#btnnoticecancle").click(function() {
			history.go(-1)
		});
	});
</script>

<style type="text/css">
#noticeinsertform {
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
#noticeform {
		margin: 100px 100px 100px 150px;
}

</style>
</head>
<body>
	<jsp:include page="../nav.jsp"></jsp:include>
	<div id="noticeform">

		<h1>공지사항 등록</h1>
		<form id="noticeinsertform" name="noticeinsertform">
			<input id="admin_id" name="admin_id" type="hidden"
				value="${sessionScope.admin_id }">
			<table>

				<tr>
					<th>제목</th>
					<td colspan="3"><input type="text" id="noticeboard_title" name="noticeboard_title"></td>
				</tr>
				<tr>
					<th>내용</th>
					<td colspan="3"><textarea id="noticeboard_contents" name="noticeboard_contents"></textarea></td>
				</tr>

				<tr>
				<th colspan="2"></th>
					<td><input type="button" id="btnnoticeinsert"
						value="등록하기"></td>

					<td><input type="button" id="btnnoticecancle"
						value="취소"></td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>