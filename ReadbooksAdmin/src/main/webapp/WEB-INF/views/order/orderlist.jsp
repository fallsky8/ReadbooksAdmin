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
<link rel="stylesheet" href="/resources/css/nav.css">
<link rel="stylesheet" href="/resources/css/common.css">
<script type="text/javascript" src="/resources/js/nav.js"></script>
<style type="text/css">
#orderform {
	margin: 50px;
}
</style>
</head>
<body>
	<div id="order">
		<nav class='sidebar sidebar-menu-collapsed'>
			<a href='#' id='justify-icon'> <span
				class='glyphicon glyphicon-align-justify'></span>
			</a>
			<ul>
				<li class='active'><a class='expandable' href=''
					title='Dashboard'> <span
						class='glyphicon glyphicon-home collapsed-element'></span> <span
						class='expanded-element'>홈</span>
				</a></li>
				<li><a class='expandable' href='/bookinsert.do'
					title='BookInsert'> <span
						class='glyphicon glyphicon-wrench collapsed-element'></span> <span
						class='expanded-element'>상품 등록</span>
				</a></li>
				<li><a class='expandable' href='/booklist.do' title='Account'>
						<span class='glyphicon glyphicon-user collapsed-element'></span> <span
						class='expanded-element'>상품 조회</span>
				</a></li>
				<li><a class='expandable' href='/orderlist.do'
					title='OrderList'> <span
						class='glyphicon glyphicon-cog collapsed-element'></span> <span
						class='expanded-element'>주문 조회</span>
				</a></li>
				<li><a class='expandable' href='/userlist.do' title='UserList'>
						<span class='glyphicon glyphicon-user collapsed-element'></span> <span
						class='expanded-element'>회원 조회</span>
				</a></li>
				<li><a class='expandable' href='/mail.do' title='Email'> <span
						class='glyphicon glyphicon-user collapsed-element'></span> <span
						class='expanded-element'>메일 작성</span>
				</a></li>
			</ul>
			<a href='/login.do' id='logout-icon' title='Logout'> <span
				class='glyphicon glyphicon-off'></span>
			</a>
		</nav>
		<div id="orderform">

			<!--for demo wrap-->
			<h1>리드북스 주문 리스트</h1>
			<div class="tbl-header">
				<table>
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
				<c:forEach var="orderbook" items="${orderlist}" varStatus="status">
					<table>
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