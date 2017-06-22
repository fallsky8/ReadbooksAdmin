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
	
</script>
<style type="text/css">
#userform {
	margin: 50px;
}
</style>
</head>
<body>
	<div id="aduser">
	<jsp:include page="../nav.jsp"></jsp:include>
		<div id="userform">

			<!--for demo wrap-->
			<h1>리드북스 유저 리스트</h1>
			<div class="tbl-header">
				<table>
					<thead>
						<tr>
							<th>아이디</th>
							<th>주소</th>
							<th>이름</th>
							<th>이메일</th>
							<th>전화번호</th>
<!-- 							<th>비밀번호찾기 질문</th> -->
							<th>등록일</th>
							<th>포인트</th>
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
				<c:forEach var="userlist" items="${userlistget}"
					varStatus="status">
					<table>
						<tbody>
							<tr>

								<td>${userlist.user_id }</td>

								<td>${userlist.user_address }</td>
								<td>${userlist.user_name }</td>
								<td>${userlist.user_email }</td>
								<td>${userlist.user_phonenumber }</td>
<%-- 								<td>${userlist.user_pwquestion }</td> --%>
								<td>${userlist.user_registerdate }</td>
								<td>${userlist.user_point }</td>
								<td>${userlist.user_serviceagreement }</td>
								<td>${userlist.user_collectiveagreement }</td>
								<td>${userlist.user_refferralagreement }</td>
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