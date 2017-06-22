<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<!-- Bootstrap -->
<link href='<c:url value="/css/bootstrap.min.css" />' rel="stylesheet">
<link href='<c:url value="/css/kfonts2.css" />' rel="stylesheet">

<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src='<c:url value="/jquery/jquery-1.11.3.min.js" />'></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src='<c:url value="/js/bootstrap.min.js"  />'></script>
<style type="text/css">
#mailform {
	margin: 50px;
}
</style>
<title>메일 보내기</title>

</head>
<body>
<div>
	<jsp:include page="../nav.jsp"></jsp:include>
	<div class="tbl-header">
	<h1>메일 보내기</h1>
		<form id="mailform"
			<%-- 		${pageContext.request.contextPath} --%>
			action="/mail/mailSending.do"
			method="post">
			<table>
				<tbody>
					<tr>
						<td>
							<!-- 받는 사람 이메일 --> <input type="text" name="tomail" size="120"
							style="width: 100%" placeholder="상대의 이메일" class="form-control">
						</td>

					</tr>
					<tr>
						<td>
							<!-- 제목 --> <input type="text" name="title" size="120"
							style="width: 100%" placeholder="제목을 입력해주세요" class="form-control">
						</td>
					</tr>
					<tr>
						<td>
							<!-- 내용 --> <textarea name="content" cols="120" rows="12"
								style="width: 100%; resize: none" placeholder="내용#"
								class="form-control"></textarea>
						</td>
					</tr>
					<tr>
						<td><input type="submit" value="메일 보내기"
							class="btn btn-warning"></td>
					</tr>
				</tbody>
			</table>
		</form>
	</div>
</div>
</body>
</html>
