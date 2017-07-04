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
<script type="text/javascript">
   $(function() {

      //아이디 찾기 버튼 클릭시 
      $("#searchIdBtn").click(function() {
         searchId();
      })

      //아이디 찾기 함수
      function searchId() {

         $.ajax({
            url : "/searchId.do",
            type : "POST",
            data : $("#searchIdForm").serialize(),
            error : function() {
               alert("시스템 오류 입니다. 관리자에게 문의 하세요");
            },
            success : function(idResult) {
               if (idResult) {
                  $("#user_id").html(idResult);
               } else {
                  $("#user_id").html("정확한 이름과 연락처를 입력하세요");
               }
            }
         });

      }
//        function searchPwd() {
      
//       $.ajax({
//          url : "/searchPwd.do",
//          type : "POST",
//          data : $("#searchPwdForm").serialize(),
//          error : function() {
//             alert("시스템 오류 입니다. 관리자에게 문의 하세요" );
//          },
//          success : function(pwdResult) {
//             if (pwdResult) {
//                location.href="changePwd/changePwdForm.do";
//             } else {
//                $("#pwdCheck").html("정보가 일치하지 않습니다");
//             }
//          }
//       });

//       } 

      $("#searchCancelBtn").click(function() {
         location.href = "/admin.do";
      });
   })
</script>

<style type="text/css">
.form-group {
   width: 40%
}

#idPwdSearchWrapper {
   margin-top: 5%
}

#searchIdForm {
   margin-top: 3%
}

#idSearchFieldSet {
   border: solid 1px #BDBDBD!important;
   border-bottom: none;
   padding-left: 5%;
}

#searchIdLegend {
   width: auto !important;
   border: none;
}

#searchPwdFieldset {
   border: solid 1px #BDBDBD !important;
   border-bottom: none;
   padding-left: 5%;
}

#searchPwdLegend {
   width: auto !important;
   border: none;
}
</style>
<title>아이디 비밀번호 찾기</title>
</head>
<body>




   <div class="container" id="idPwdSearchWrapper">
      <section>
         <div class="page-header">
            <h1>아이디|비밀번호 찾기 서비스</h1>
         </div>
         <form role="form" id="searchIdForm" name="searchIdForm">
            <fieldset id="idSearchFieldSet">

               <legend id="searchIdLegend">아이디 찾기</legend>
               <div class="form-group">
                  <label>이름</label> <input type="text" id="user_name"
                     name="user_name" class="form-control" required="required">
               </div>
               <div class="form-group">
                  <label>이메일</label> <input type="text" id="user_email"
                     name="user_email" placeholder="user@readbooks.com"
                     class="form-control" required="required">
               </div>
               <div class="form-group">
                  <label>아이디:</label> <span id="user_id"></span>
               </div>

               <div class="form-group">
                  <input type="button" name="searchIdBtn" id="searchIdBtn"
                     value="확인" class="btn btn-info">
               </div>
            </fieldset>
         </form>

         <br> <br>


         <form role="form" action="/searchIdPwd/searchPwd.do" method="post"
            id="searchPwdForm" name="searchPwdForm">
            <fieldset id="searchPwdFieldset">

               <legend id="searchPwdLegend">비밀번호 찾기</legend>

               <div class="form-group">
                  <label>아이디</label> <input type="text" id="user_id"
                     name="user_id" class="form-control" required="required">
               </div>
               <div class="form-group">
                  <label>이름</label> <input type="text" id="user_name"
                     name="user_name" class="form-control" required="required">
               </div>
               <div class="form-group">
                  <label>이메일</label> <input type="email" id="user_email"
                     name="user_email" class="form-control" placeholder="가입시 등록 이메일"
                     required="required">
               </div>
               <c:if test="${msg=='조회실패'}">
                  <span>입력하신 정보가 맞지 않습니다</span>
               </c:if>
               <div class="form-group">
                  <input type="submit" name="searchPwdBtn" id="searchPwdBtn"
                     value="확인" class="btn btn-info"> <input type="button" name="searchCancelBtn"
                     id="searchCancelBtn" value="취소" class="btn btn-info">
               </div>


            </fieldset>
         </form>
      </section>
   </div>
  

</body>
</html>