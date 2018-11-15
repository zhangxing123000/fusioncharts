<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>FusionCharts Example</title>
</head>
<body>
	<div style="float:left">
	<p>这是一个饼图的例子</p>
	<div id="pie"></div>
	</div>
	<div style="float:left">
	<p>这是一个环图的例子</p>
	<div id="doughunt" ></div>
	</div>
	<div  style="float:left">
	<p>这是一个柱状图的例子</p>
	<div id="column"></div>
	</div>
	<div  style="float:left">
	<p>这是一个折线图的例子</p>
	<div id="line"></div>
	</div>
</body>
</html>
<script type="text/javascript" src="FusionCharts.js"></script>
<script type="text/javascript">
	var pie = new FusionCharts("FusionCharts/Charts/Pie2D.swf","myChartId2", "100%","300","0","1");
	pie.setDataURL("pie.xml");
	pie.render("pie");
    var doughunt = new FusionCharts("FusionCharts/Charts/Doughnut2D.swf","myChartId2", "100%","300","0","1");
    doughunt.setDataURL("pie.xml");
    doughunt.render("doughunt");
    var column = new FusionCharts("FusionCharts/Charts/Column2D.swf","myChartId2", "100%","300","0","1");
    column.setDataURL("column.xml");
    column.render("column");
    var line = new FusionCharts("FusionCharts/Charts/MSLine.swf","myChartId2", "100%","300","0","1");
    line.setDataURL("line.xml");
    line.render("line");

    </script>