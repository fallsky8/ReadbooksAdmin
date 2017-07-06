<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
				var s1 = [ 2, 6, 7, 10 ];
				var ticks = [ 'a', 'b', 'c', 'd' ];

				plot1 = $.jqplot('chart1', [ s1 ], {
					seriesDefaults : {
						renderer : $.jqplot.BarRenderer,
						pointLabels : {
							show : true
						}
					},
					axes : {
						xaxis : {
							renderer : $.jqplot.CategoryAxisRenderer,
							ticks : ticks
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
			});
</script>
<title>리드북스 통계</title>
</head>
<body>
	<div>
		<span>You Clicked: </span><span id="info1">Nothing yet</span>
	</div>
	<div id="chart1"
		style="margin-top: 20px; margin-left: 20px; width: 300px; height: 300px;"></div>
</body>
</html>