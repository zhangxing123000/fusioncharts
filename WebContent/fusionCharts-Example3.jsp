<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>FusionCharts Example</title>
</head>
<body>
	<div id="column" style="margin-left: 5%"></div>
</body>
</html>
<script type="text/javascript" src="FusionCharts.js"></script>
<script type="text/javascript">
    var line = new FusionCharts("FusionCharts/Charts/Column2D.swf","myChartId2", "90%","500","0","1");
    line.setDataURL("column.xml");
    line.render("column");
    </script>