<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE>
<html>
<head>
<title>리드북스 유저 상세정보</title>
<script type="text/javascript"
	src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript">
	$(function() {
		$("#user_out").click(function() {
			var sysdate = new Date().toISOString().substr(0, 10).replace('T', ' ');
			alert(sysdate);
			
			$("#user_outdate").val(sysdate);
			$("#user_outreason").val("규정위반");

		});
		var admin_id = "${sessionScope.admin_id}";
		$("#btnedit").click(function() {
			if (admin_id == "admin") {
				$("#edituserform").attr({
					"method" : "POST",
					"action" : "/userupdate.do"
				});
				$("#edituserform").submit();
			} else {
				alert("권한이 없습니다 로그인 해주세요")
			}

		});

		$("#btneditcancle").click(function() {
			location.href = "/userlist.do"
			// 		history.go(-1)
		});

		$("#user_status").change(function() {
			var a = $
			{
				userdetail.user_status
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

#userform {
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

#edituserform table thead tr td input[type='image'] {
	width: 150px;
	height: 200px;
}
</style>
</head>
<body>
	<div id="user">
		<jsp:include page="../nav.jsp"></jsp:include>
		<div id="userform">

			<!--for demo wrap-->
			<h1>리드북스 유저 상세정보</h1>
			<div class="tbl-content">

				<form id="edituserform">

					<table>

						<tbody>
							<tr>
								<th>아이디</th>
								<td><input type="text" id="user_id" name="user_id"
									value="${userdetail.user_id }" readonly="readonly"></td>
							</tr>

							<tr>
								<th>이름</th>
								<td><input type="text" id="user_name" name="user_name"
									value="${userdetail.user_name }" readonly="readonly"></td>
							</tr>
							<tr>
								<th>이메일</th>
								<td><input type="text" id="user_email" name="user_email"
									value="${userdetail.user_email }" readonly="readonly"></td>
							</tr>

							<tr>
								<th>연락처</th>
								<td><input type="text" id="user_phonenumber"
									name="user_phonenumber" value="${userdetail.user_phonenumber }"
									readonly="readonly"></td>
							</tr>

							<tr>
								<th>주소</th>
								<td><textarea id="user_address" name="user_address"
										readonly="readonly">${userdetail.user_address }</textarea></td>
							</tr>

							<tr>
								<th>등록일</th>
								<td><input type="text" id="user_registerdate"
									name="user_registerdate"
									value="${userdetail.user_registerdate }" readonly="readonly"></td>
							</tr>

							<tr>
								<th>이용약관 동의여부</th>
								<td><input type="text" id="user_serviceagreement"
									name="user_serviceagreement"
									value="${userdetail.user_serviceagreement }"
									readonly="readonly"></td>
							</tr>

							<tr>
								<th>개인정보 수집 동의여부</th>
								<td><input type="text" id="user_collectiveagreement"
									name="user_collectiveagreement"
									value="${userdetail.user_collectiveagreement }"
									readonly="readonly"></td>
							</tr>

							<tr>
								<th>개인정보처리위탁 동의여부</th>
								<td><input type="text" id="user_referralagreement"
									name="user_referralagreement"
									value="${userdetail.user_referralagreement }"
									readonly="readonly"></td>
							</tr>

							<tr>
								<th>탈퇴 이유</th>
								<td><input type="text" id="user_outreason"
									name="user_outreason" value="${userdetail.user_outreason }"
									readonly="readonly"></td>
							</tr>


							<tr>
								<th>탈퇴일자</th>
								<td><input type="text" id="user_outdate"
									name="user_outdate" value="${userdetail.user_outdate }"
									readonly="readonly"> <input type="button" id="user_out"
									name="user_out" value="탈퇴 처리"></td>
							</tr>

						</tbody>
					</table>

					<input type="button" id="btnedit" value="수정"> <input
						type="button" id="btneditcancle" value="취소">
				</form>
			</div>
		</div>
	</div>
</body>
</html>