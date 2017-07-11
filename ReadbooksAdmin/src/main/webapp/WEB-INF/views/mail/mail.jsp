<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="/resources/js/jquery.min.js"></script>
<script src="/resources/js/jquery.jqplot.min.js"></script>
<script src="/resources/js/jqplot.pointLabels.min.js"></script>
<script src="/resources/js/jqplot.categoryAxisRenderer.min.js"></script>
<link rel="stylesheet" type="text/css"
	href="/resources/css/jquery.jqplot.min.css" />
<script type="text/javascript">
	$(document).ready(
			function() {
				$.jqplot.config.enablePlugins = true;
				var gross = new Array();
				var orderyear = new Array();
				<c:forEach var="itemList" items="${grossprofit}" >
				gross.push("${itemList.getGross()}");
				orderyear.push("${itemList.getOrderyear()}")
				</c:forEach>
				var maxgross = gross.reduce(function(previous, current) {
					return previous > current ? previous : current;
				});
				plot1 = $.jqplot('chart1', [ gross ], {
					seriesDefaults : {
						renderer : $.jqplot.BarRenderer,
						pointLabels : {
							show : true
						}
					},
					axes : {
						xaxis : {
							renderer : $.jqplot.CategoryAxisRenderer,
							ticks : orderyear
						},
						yaxis : {
							max : parseInt(maxgross) + 50000,
							min : 0
						}
					},
					highlighter : {
						show : false
					}
				});
				$('#chart1').bind(
						'jqplotDataClick',
						function(ev, seriesIndex, pointIndex, data) {
							$('#info1').html(
									'series: ' + seriesIndex + ', point: '
											+ pointIndex + ', data: ' + data);
						});
				var grossmonth = new Array();
				var ordermonth = new Array();
				<c:forEach var="itemList" items="${grossprofitmonth}" >
				grossmonth.push("${itemList.getGrossmonth()}");
				ordermonth.push("${itemList.getOrdermonth()}")
				</c:forEach>
				var maxgross2 = grossmonth.reduce(function(previous, current) {
					return previous > current ? previous : current;
				});
				plot2 = $.jqplot('chart2', [ grossmonth ], {
					seriesDefaults : {
						renderer : $.jqplot.BarRenderer,
						pointLabels : {
							show : true
						}
					},
					axes : {
						xaxis : {
							renderer : $.jqplot.CategoryAxisRenderer,
							ticks : ordermonth
						},
						yaxis : {
							max : parseInt(maxgross2) + 50000,
							min : 0
						}
					},
					highlighter : {
						show : false
					}
				});
				$('#chart2').bind(
						'jqplotDataClick',
						function(ev, seriesIndex, pointIndex, data) {
							$('#info2').html(
									'series: ' + seriesIndex + ', point: '
											+ pointIndex + ', data: ' + data);
						});
				var grosskorea = new Array();
				var orderyearkorea = new Array();
				var grossforeign = new Array();
				var orderyearforeign = new Array();
				<c:forEach var="itemList" items="${grossprofitkorea}" >
				grosskorea.push("${itemList.getGrosskorea()}");
				orderyearkorea.push("${itemList.getOrderyearkorea()}")
				</c:forEach>
				<c:forEach var="itemList" items="${grossprofitforeign}" >
				grossforeign.push("${itemList.getGrossforeign()}");
				orderyearforeign.push("${itemList.getOrderyearforeign()}")
				</c:forEach>
				var maxgross3 = grosskorea.reduce(function(previous, current) {
					return previous > current ? previous : current;
				});
				var maxgross4 = grossforeign
						.reduce(function(previous, current) {
							return previous > current ? previous : current;
						});
				plot3 = $.jqplot('chart3', [ grosskorea, grossforeign ], {
					seriesDefaults : {
						renderer : $.jqplot.BarRenderer,
						pointLabels : {
							show : true
						}
					},
					axes : {
						xaxis : {
							renderer : $.jqplot.CategoryAxisRenderer,
							ticks : orderyear
						},
						yaxis : {
							max : parseInt(maxgross) + 50000,
							min : 0
						}
					},
					highlighter : {
						show : false
					}
				});
				$('#chart3').bind(
						'jqplotDataClick',
						function(ev, seriesIndex, pointIndex, data) {
							$('#info3').html(
									'series: ' + seriesIndex + ', point: '
											+ pointIndex + ', data: ' + data);
						});
			});
</script>
<title>리드북스 통계</title>
</head>
<body>
	<jsp:include page="../nav.jsp"></jsp:include>
	<div>
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span>You
			Clicked: </span><span id="info1">Nothing yet</span>
	</div>
	<div id="chart1"
		style="margin-top: 20px; margin-left: 100px; width: 1000px; height: 400px;"></div>
	<div>
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span>You
			Clicked: </span><span id="info2">Nothing yet</span>
	</div>
	<div id="chart2"
		style="margin-top: 20px; margin-left: 100px; width: 1000px; height: 400px;"></div>
	<div>
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span>You
			Clicked: </span><span id="info3">Nothing yet</span>
	</div>
	<div id="chart3"
		style="margin-top: 20px; margin-left: 100px; width: 1000px; height: 400px;"></div>
</body>
</html>