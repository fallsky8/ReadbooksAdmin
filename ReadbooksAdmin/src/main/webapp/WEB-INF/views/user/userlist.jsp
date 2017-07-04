<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>리드북스 관리자페이지 유저조회리스트</title>
<script type="text/javascript"
	src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript">
//제목 클릭시 상세페이지 이동
$(function() {

	var admin_id = "${sessionScope.admin_id}";

	$(".goDetail").click(function() {
		if (admin_id == "admin") {

		var user_id = $(this).parents("tr").attr("data-num");
		$("#user_id").val(user_id);
		console.log("책번호 : " + user_id);
		//상세페이지로 이동하기위해 form 추가 (id : detailForm)
		$("#detailForm").attr({
			"method" : "get",
			"action" : "/userdetail.do"
		});
		$("#detailForm").submit();
		} else {
			alert("권한이 없습니다 로그인 해주세요")
		}
	});

});
</script>
<style type="text/css">
#userform {
	margin: 100px;
}

</style>
</head>
<body>
	<div id="user">
		<jsp:include page="../nav.jsp"></jsp:include>
		<div id="userform">

			<!--for demo wrap-->
			<h1>리드북스 유저 리스트</h1>
			<div class="tbl-header">
			<!-- 상세페이지 이동을 위한 form -->
				<form name="detailForm" id="detailForm">
					<input type="hidden" name="user_id" id="user_id">
				</form>
				<table>
					<thead>
						<tr>
							<th>이름</th>
							<th>아이디</th>
							<th>이메일</th>
							<th>전화번호</th>
							<th>주소</th>
							<!-- 							<th>비밀번호찾기 질문</th> -->
							<th>등록일</th>

							<th>이용약관동의</th>
							<th>개인정보수집동의</th>
							<th>개인정보처리위탁</th>
							<th>탈퇴 사유</th>
							<th>탈퇴 일자</th>

						</tr>
					</thead>
				</table>
			</div>
			<div class="tbl-content">
				<c:forEach var="userlist" items="${userlist}" varStatus="status">
					<table>
						<tbody>
							<tr data-num="${userlist.user_id}">


								<td>${userlist.user_name }</td>
								<td><span class="goDetail">${userlist.user_id }</span></td>
								<td>${userlist.user_email }</td>
								<td>${userlist.user_phonenumber }</td>
								<td>${userlist.user_address }</td>
								<%-- 								<td>${userlist.user_pwquestion }</td> --%>
								<td>${userlist.user_registerdate }</td>
								<td>${userlist.user_serviceagreement }</td>
								<td>${userlist.user_collectiveagreement }</td>
								<td>${userlist.user_referralagreement }</td>
								<td>${userlist.user_outreason }</td>
								<td>${userlist.user_outdate }</td>
							</tr>
						</tbody>
					</table>
				</c:forEach>

			</div>
		</div>
	</div>
</body>
</html>