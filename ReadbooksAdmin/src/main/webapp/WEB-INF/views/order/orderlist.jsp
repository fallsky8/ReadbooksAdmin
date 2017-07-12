<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>리드북스 주문 게시판</title>
<script type="text/javascript"
	src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript">
	//제목 클릭시 상세페이지 이동
	$(function() {

		$(".goDetail").click(function() {

			var admin_id = "${sessionScope.admin_id}";
			if (admin_id == "admin") {

				var order_number = $(this).parents("tr").attr("data-num");
				$("#order_number").val(order_number);
				console.log("번호 : " + order_number);
				//상세페이지로 이동하기위해 form 추가 (id : detailForm)
				$("#detailForm").attr({
					"method" : "GET",
					"action" : "/orderdetail.do"
				});
				$("#detailForm").submit();
			} else {
				alert("권한이 없습니다 로그인 해주세요")
			}
		});
		$("#btninsert").click(function() {
			// 			alert(admin_id)
			if (admin_id == "admin") {

				location.href = "/orderinsertpage.do";
			} else {
				alert("권한이 없습니다 로그인 해주세요")
			}
		});

	});
</script>
<style type="text/css">
#orderform {
	margin: 100px;
}
</style>
</head>
<body>
	<div id="order">
		<jsp:include page="../nav.jsp"></jsp:include>
		<div id="orderform">

			<!--for demo wrap-->
			<h1>리드북스 주문 리스트</h1>
			<div class="tbl-header">
				<form name="detailForm" id="detailForm">
					<input type="hidden" name="order_number" id="order_number">
				</form>
				<table>
					<thead>
						<tr>
							<th>고유번호</th>
							<th>주문번호</th>
							<th>아이디</th>
							<th>상품 이름</th>
							<th>주문 날짜</th>
							<th>입금날짜</th>
							<th>배송상태</th>
							<th>수량</th>
						</tr>
					</thead>
				</table>
			</div>
			<div class="tbl-content">
				<table id="keyword">
					<tbody>
						<c:forEach var="orderlist" items="${orderlist}" varStatus="status">
							<tr data-num="${orderlist.order_number}">
								<td>${orderlist.order_number }</td>
								<td><span class="goDetail">${orderlist.order_ordernumber}</span></td>
								<td>${orderlist.user_id }</td>
								<td>${orderlist.book_number }</td>
								<td>${orderlist.order_date }</td>
								<td>${orderlist.order_paymentdate }</td>
								<td>${orderlist.order_status }</td>
								<td>${orderlist.order_quantity }</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>

			</div>
		</div>
	</div>
</body>
</html>