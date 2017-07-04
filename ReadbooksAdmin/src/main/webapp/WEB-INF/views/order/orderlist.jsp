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
				<table>
					<thead>
						<tr>
							<th>주문번호</th>
							<th>아이디</th>
							<th>상품 이름</th>
							<th>주문자 이름</th>
							<th>주문 날짜</th>
							<th>입금날짜</th>
							<th>배송지</th>
							<th>요구사항</th>
							<th>배송상태</th>
							<th>결제방법</th>
							<th>수량</th>
						</tr>
					</thead>
				</table>
			</div>
			<div class="tbl-content">
				<c:forEach var="orderlist" items="${orderlist}" varStatus="status">
					<table>
						<tbody>
							<tr>
								<td>${orderlist.order_number }</td>
								<td>${orderlist.user_id }</td>
								<td>${orderlist.book_number }</td>
								<td>${orderlist.order_orderer }</td>
								<td>${orderlist.order_date }</td>
								<td>${orderlist.order_paymentdate }</td>
								<td>${orderlist.order_receiptaddress }</td>
								<td>${orderlist.order_requirement }</td>
								<td>${orderlist.order_status }</td>
								<td>${orderlist.order_way }</td>
								<td>${orderlist.order_quantity }</td>
							</tr>
						</tbody>
					</table>
				</c:forEach>

			</div>
		</div>
	</div>
</body>
</html>