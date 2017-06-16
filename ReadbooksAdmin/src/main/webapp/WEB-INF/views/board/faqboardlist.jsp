<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>리드북스 주문 게시판</title>
<style type="text/css">
h1 {
	font-size: 30px;
	color: #fff;
	text-transform: uppercase;
	font-weight: 300;
	text-align: center;
	margin-bottom: 15px;
}

table {
	width: 100%;
	table-layout: fixed;
}

.tbl-header {
	background-color: rgba(255, 255, 255, 0.3);
}

.tbl-content {
	height: 300px;
	overflow-x: auto;
	margin-top: 0px;
	border: 1px solid rgba(255, 255, 255, 0.3);
}

th {
	padding: 20px 15px;
	text-align: left;
	font-weight: 500;
	font-size: 12px;
	color: #fff;
	text-transform: uppercase;
}

td {
	padding: 15px;
	text-align: left;
	vertical-align: middle;
	font-weight: 300;
	font-size: 12px;
	color: #fff;
	border-bottom: solid 1px rgba(255, 255, 255, 0.1);
}

/* demo styles */
@import
	url(https://fonts.googleapis.com/css?family=Roboto:400,500,300,700);

body {
	background: -webkit-linear-gradient(left, #25c481, #25b7c4);
	background: linear-gradient(to right, #25c481, #25b7c4);
	font-family: 'Roboto', sans-serif;
}

section {
	margin: 50px;
}

/* follow me template */
.made-with-love {
	margin-top: 40px;
	padding: 10px;
	clear: left;
	text-align: center;
	font-size: 10px;
	font-family: arial;
	color: #fff;
}

.made-with-love i {
	font-style: normal;
	color: #F50057;
	font-size: 14px;
	position: relative;
	top: 2px;
}

.made-with-love a {
	color: #fff;
	text-decoration: none;
}

.made-with-love a:hover {
	text-decoration: underline;
}

/* for custom scrollbar for webkit browser*/
::-webkit-scrollbar {
	width: 6px;
}

::-webkit-scrollbar-track {
	-webkit-box-shadow: inset 0 0 6px rgba(0, 0, 0, 0.3);
}

::-webkit-scrollbar-thumb {
	-webkit-box-shadow: inset 0 0 6px rgba(0, 0, 0, 0.3);
}
</style>
</head>
<body>
	<div id="order">
		<div id="orderform">
			>
			<!--for demo wrap-->
			<h1>리드북스 주문 리스트</h1>
			<div class="tbl-header">
				<table cellpadding="0" cellspacing="0" border="0">
					<thead>
						<tr>
							<th>유저 아이디</th>
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
				<c:forEach var="orderbook" items="${adminorderlist}"
					varStatus="status">
					<table cellpadding="0" cellspacing="0" border="0">
						<tbody>
							<tr>
								<td>${orderbook.user_id }</td>
								<td>${orderbook.book_number }</td>
								<td>${orderbook.order_orderer }</td>
								<td>${orderbook.order_date }</td>
								<td>${orderbook.order_paymentdate }</td>
								<td>${orderbook.order_receiptaddress }</td>
								<td>${orderbook.order_requirement }</td>
								<td>${orderbook.order_status }</td>
								<td>${orderbook.order_way }</td>
								<td>${orderbook.order_quantity }</td>
							</tr>
						</tbody>
					</table>
				</c:forEach>

			</div>
		</div>
	</div>
</body>
</html>