<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>주문 상세정보</title>
<script type="text/javascript"
	src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript">
	
</script>
<script type="text/javascript">
	$(function() {

		var admin_id = "${sessionScope.admin_id}";

		$("#btnedit").click(function() {
			if (admin_id == "admin") {
				$("#editorderform").attr({
					"method" : "POST",
					"action" : "/orderupdate.do"
				});
				$("#editorderform").submit();

			} else {
				alert("권한이 없습니다 로그인 해주세요")
			}

		});

		$("#btneditcancle").click(function() {
			location.href = "/orderlist.do"
			// 		history.go(-1)
		});

	});
</script>
<style type="text/css">
.tbl-content {
	width: 800px;
	height: auto !important;
}

#orderform {
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

#editorderform table thead tr td input[type='image'] {
	width: 150px;
	height: 200px;
}
</style>
</head>
<body>
	<div id="order">
		<jsp:include page="../nav.jsp"></jsp:include>
		<div id="orderform">

			<!--for demo wrap-->
			<h1>공지사항</h1>
			<div class="tbl-content">
				<form id="editorderform" name="editorderform">
					<input type="hidden" id="order_number" name="order_number"
						value="${orderdetail.order_number }">
					<table>
						<thead>
							<tr>
								<th>NO.${orderdetail.order_number}</th>
								<td>주문자 ID : <input type="text" hidden="hidden"
									id="user_id" name="user_id" value="${orderdetail.user_id}">${orderdetail.user_id}</td>
							</tr>
						</thead>
						<tbody>
							<tr>
								<th>주문번호</th>
								<td><input type="text" id="order_ordernumber"
									name="order_ordernumber"
									value="${orderdetail.order_ordernumber }"></td>
							</tr>
							<tr>
								<th>책번호</th>
								<td><input type="text" id="book_number" name="book_number"
									value="${orderdetail.book_number }"></td>
							</tr>
							<tr>
								<th>주문자명</th>
								<td><input type="text" id="order_orderer"
									name="order_orderer" value="${orderdetail.order_orderer }"></td>
							</tr>

							<tr>
								<th>수신자명</th>
								<td><input type="text" id="order_recipient"
									name="order_recipient" value="${orderdetail.order_recipient }"></td>
							</tr>
							<tr>
								<th>주문일</th>
								<td><input type="text" id="order_date" name="order_date"
									value="${orderdetail.order_date }"></td>
							</tr>

							<tr>
								<th>배송지</th>
								<td><textarea id="order_receiptaddress"
										name="order_receiptaddress">${orderdetail.order_receiptaddress }</textarea></td>
							</tr>
							<tr>
								<th>결제일</th>
								<td><input type="text" id="order_paymentdate"
									name="order_paymentdate"
									value="${orderdetail.order_paymentdate }"></td>
							</tr>
							<tr>
								<th>주문상태</th>
								<td><input type="text" id="order_status"
									name="order_status" value="${orderdetail.order_status }"></td>
							</tr>

							<tr>
								<th>주문수량</th>
								<td><input type="text" id="order_quantity"
									name="order_quantity" value="${orderdetail.order_quantity }"></td>
							</tr>

							<tr>
								<th>주문가격</th>
								<td><input type="text" id="order_price" name="order_price"
									value="${orderdetail.order_price }"></td>
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