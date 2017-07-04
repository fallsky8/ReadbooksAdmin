<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script src="/resources/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="/resources/bootstrap-3.3.7-dist/css/bootstrap.min.css" />
<link rel="stylesheet"
	href="/resources/bootstrap-3.3.7-dist/css/bootstrap-theme.min.css" />
<!-- font awesome 새로 추가됨 -->
<!-- <link rel="stylesheet" href="css/font-awesome.min.css" media="screen" title="no title"  charset="utf-8"> -->
<!-- Custom style 새로 추가-->
<!-- <link rel="stylesheet" href="css/style.css" media="screen" title="no title"  charset="utf-8"> -->
<script type="text/javascript">
	$(function() {
		var writeEnumber = $("#writeEnumber");
		var idCheckBtn = $("#idCheckBtn");
		var memberEmail = $("#memberEmail");
		var authNumHidden = $("#authNumHidden");
		var eNumcheckHidden = $("#eNumcheckHidden");
		//비동기 메일 전송
		function sendEmail() {

			$.ajax({
				url : "/sendEmail.do",
				type : "POST",
				data : $("#memberJoinForm").serialize(),
				error : function() {
					alert("메일인 인증 실패!! 정확한 주소입력하세요");
				},
				success : function(authNum) {
					if (authNum) {
						alert("메일 보내기 성공");
						$("#authNumHidden").val(authNum);

					} else {
						alert("메일 보내기 실패");
					}
				}
			});
		}

		//인증번호 확인버튼 클릭
		$("#checkEnumBtn").click(function() {
			if (writeEnumber.val() == null || writeEnumber.val() == "") {
				alert("인증번호 입력하세요");
			} else {
				if (writeEnumber.val() == authNumHidden.val()) {
					alert("인증 완료");
					eNumcheckHidden.val("y");

				} else {
					alert("인증 실패");
				}
			}
			if (eNumcheckHidden.val() == "n") {
				alert("인증번호를 확인하세요")
				writeEnumber.focus();
				return false;
			}

			if (writeEnumber.val() != authNumHidden.val()) {
				alert("인증번호가 틀렸습니다")
				writeEnumber.focus();
				return false;
			}
			if (writeEnumber.val() == null || writeEnumber.val() == "") {
				alert("인증번호를 입력하세요");
				writeEnumber.focus();
				return false;
			}
		});
		//이메일 보내기
		$("#sendEmailBtn").click(function() {
			sendEmail()
		});

		//취소버튼 클릭
		$("#cancelBtn").click(function() {
			location.href = "/join/loginTest.do";
		});

	});
</script>
<style type="text/css">
#joinTextArea1, #joinTextArea2, #joinTextArea3 {
	resize: none;
}
</style>
<title>회원가입 페이지</title>
</head>
<body>


	<div class="container">

		<section id="joinFormSection">
			<div class="page-header">
				<h1>회원가입</h1>
			</div>
			<div class="col-md-6 col-md-offset-3">
				<form role="form" id="memberJoinForm" name="memberJoinForm">

					<div class="form-group">
						<label>이메일</label>
						<div class="input-group">
							<input type="email" id="user_email" name="user_email"
								class="form-control">
							<!-- <input type="button" id="sendEmailBtn"
                  name="sendEmailBtn" value="메일인증"> -->
							<span class="input-group-btn">
								<button type="button" id="sendEmailBtn" name="sendEmailBtn"
									class="btn btn-success">
									메일인증<i class="fa fa-mail-forward spaceLeft"></i>
								</button>
							</span>
						</div>
					</div>
					<div class="form-group">
						<label>인증번호</label>
						<div class="input-group">
							<input type="text" id="writeEnumber" name="writeEnumber"
								class="form-control" size="5" maxlength="5">
							<!--    <input type="button" id="checkEnumBtn" value="확인"> -->
							<span class="input-group-btn">
								<button type="button" id="checkEnumBtn" class="btn btn-success">
									확인<i class="fa fa-mail-forward spaceLeft"></i>
								</button>
							</span>
						</div>
					</div>


					<div class="form-group text-center">
						<input type="button" id="joinBtn" name="joinBtn" value="가입"
							class="btn btn-info btn-lg"> <input type="button"
							id="cancelBtn" name="cancelBtn" value="취소"
							class="btn btn-warning btn-lg">
					</div>
					<input type="hidden" name="authNumHidden" id="authNumHidden"
						value="1"> <input type="hidden" name="idCheckHidden"
						id="idCheckHidden" value="n"> <input type="hidden"
						name="eNumcheckHidden" id="eNumcheckHidden" value="n">
				</form>
			</div>

		</section>

	</div>

</body>
</html>