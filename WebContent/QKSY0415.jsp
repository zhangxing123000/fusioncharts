<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="zh">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title></title>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<link rel="stylesheet" type="text/css" href="./css/wbcss/styleQK.css">
	<link rel="stylesheet" type="text/css" href="./css/wbcss/resetQK.css">
	<link rel="stylesheet" type="text/css" href="./css/wbcss/font-awesome.minQK.css">
	<style>
		.TopLi{
			width: 45%;
			padding: 10px;
			float: left;
			list-style-type:none;
		}
		.TopDiv{
			background-color:#ffffff;
			border-style:solid;
			border-width: 1px;
			height: 350px;
			border-color: #bfc2c1;
			width: 100%;
			border-radius:8px 8px 8px 8px;
		}
		.TopUL{
			list-style-type:none;
		}
		#gallery {font:11px verdana,arial,sans-serif; width:95%; padding:15px 0 0 0; line-height:15px;}
		#gallery div.off {margin-right: 10px;margin-left: 5%;;border-radius:8px 8px 0px 0px;color:#000; height:33px; margin-right:2px; line-height:33px; padding:0 20px; float:left;border:1px solid #ddd; border-bottom-color:#000; cursor:pointer; position:relative; z-index:20;}
		#gallery div.on {border-radius:8px 8px 0px 0px;10px;margin-left: 5%;background-color:#fff;color:#329cd5; padding:0 20px; margin-right:2px; margin-top:1px; float:left;  border:1px solid #ddd; cursor:pointer; border-bottom:0; height:33px; line-height:32px; position:relative; z-index:100;}
		
		div.hide {display:none; width:0; overflow:hidden;}
		div.show1 {margin-right: 10px;margin-bottom: 10px;background-color:#fff;clear:left;width:95%; margin-top:0; top:-1px; border:0px solid #000;padding:20px; position:relative; z-index:50; font:11px verdana, arial, sans-serif; line-height:18px;}
	

</style>
</head>
<body>
<div id="ef_region_inqu" title="" style="overflow:hidden;height:auto;width:100%;margin-left: auto;margin-right: auto;">
<div style="overflow:hidden;height:auto;width:100%;margin-left: auto;margin-right: auto;background-color: #fff" >
	<div>
		<ul class="TopUL">
			<li class="TopLi">
				<div class="TopDiv">
					<div style="height:13%;width: 50%">
						<span style="margin-left:15%; margin-right:20%;margin-top:15px;position: absolute;font-size: 20px;font-family:'微软雅黑';">维保健康度评价</span>
					</div>
					<div style="width:100%;margin-top:10px;float: left">
						<hr  style="border : 1px dashed #000;" />
					</div>
					<div   style="height:auto;width: 100%;float:left">
					<div  style="height:auto;width: 29%;font-size: 14px;font-family:'微软雅黑';float:left" >
								<ul style="list-style-type:none;margin-top:35%;margin-left:5% ">
									<li style="margin-top: 5px"><img src ='./images/qk-r.jpg'/>&nbsp;危险(0-30)分</li>
									<li style="margin-top: 5px"><img src ='./images/qk-j.jpg'/>&nbsp;不健康(31-50)分</li>
									<li style="margin-top: 5px"><img src ='./images/qk-y.jpg'/>&nbsp;亚健康(51-70)分</li>
									<li style="margin-top: 5px"><img src ='./images/qk-q.jpg'/>&nbsp;健康(71-90)分</li>
									<li style="margin-top: 5px"><img src ='./images/qk-b.jpg'/>&nbsp;非常健康(91-100)分</li>
								</ul>
						</div>
						<div style="height:auto;width: 70%;float:left" id = "chartdiv1501"></div>
					</div>
				</div>
			</li>
			<li class="TopLi">
				<div class="TopDiv">
					<div style="height:13%;width: 50%">
						<span style="margin-left:17%; margin-right:20%;margin-top:15px;position: absolute;font-size: 20px;font-family:'微软雅黑';">维保指标评价</span>
					</div>
					<div style="width:100%;margin-top:10px;float: left"">
						<hr  style="border : 1px dashed #000;" />
					</div>
					<div style="height:auto;width: 88%;margin-top:6%;margin-left: 10%"  id = "chartdiv1502">
					</div>
				</div>
				</div>
			</li>
		</ul>
		<ul class="TopUL">
			<li class="TopLi">
				<div class="TopDiv">
					<div style="height:13%;width: 50%">
						<span style="margin-left:15%; margin-right:20%;margin-top:15px;position: absolute;font-size: 20px;font-family:'微软雅黑';">维保公司近几年得分趋势</span>
					</div>
					<div style="width:100%;margin-top:10px;float: left">
						<hr  style="border : 1px dashed #000;" />
					</div>
						<div style="height:auto;width: 98%;" id = "someYear"></div>
				</div>
			</li>
			<li class="TopLi">
				<div class="TopDiv">
					<div style="height:13%;width: 50%">
						<span style="margin-left:17%; margin-right:20%;margin-top:15px;position: absolute;font-size: 20px;font-family:'微软雅黑';">维保指标分析</span>
					</div>
					<div style="width:100%;margin-top:10px;float: left"">
						<hr  style="border : 1px dashed #000;" />
					</div>
						<div id="gallery">
						<div class="on" title="Constable"><span>维保质量</span></div>
						<div class="off" title="Monet"><span>维保安全</span></div>
						<div class="off" title="Vincent"><span>维保效率</span></div>
					</div>
					<div id="Constable" class="show1">
						<div id = "chartdiv1"   style="float:left;overflow: hidden;width:97%;hight:auto;"></div>
					</div>
					<div id="Monet" class="hide">
						<div id = "chartdiv2"   style="float:left;overflow: hidden;width:97%;hight:auto;"></div> 
					</div>
					<div id="Vincent" class="hide">
						<div id = "chartdiv3"   style="float:left;overflow: hidden;width:97%;hight:auto;"></div> 
					</div>
					</div>
				</div>
				</div>
			</li>
		</ul>
	</div>
 </div>
</div>
	<script type="text/javascript" src="./js/wbjs/jquery-2.1.4.min.js"></script>
	<script type="text/javascript" src="./js/wbjs/d3.min.js"></script>
	<script type="text/javascript" src="./js/wbjs/d3script.js"></script>
	<script type="text/javascript" src="./FusionCharts/Charts/FusionCharts.js"></script>
	<script type="text/javascript" src="./QK/SY/QKSY0415.js"></script>
	<script type="text/javascript" src="./EF/iplat-ui-2.0.js"></script>
	<script type="text/javascript">
	    var line = new FusionCharts("FusionCharts/Charts/MSLine.swf","myChartId2", "100%","250","0","1");
	    line.setDataURL("line3.xml");
	    line.render("someYear");
	    var yibiaopan = new FusionCharts("FusionCharts/Charts/AngularGauge.swf","myChartId2", "100%","250","0","1");
	    yibiaopan.setDataURL("yibiaopan.xml");
	    yibiaopan.render("chartdiv1501");
	    var leidatu = new FusionCharts("FusionCharts/Charts/Radar.swf","myChartId2", "100%","250","0","1");
	    leidatu.setDataURL("leidatu2.xml");
	    leidatu.render("chartdiv1502");
	    //维保指标
	    var zhiliang = new FusionCharts("FusionCharts/Charts/MSColumn2D.swf","myChartId2", "100%","200","0","1");
	    zhiliang.setDataURL("zhiliang.xml");
	    zhiliang.render("chartdiv1");
	    var anquan = new FusionCharts("FusionCharts/Charts/MSColumn2D.swf","myChartId2", "100%","200","0","1");
	    anquan.setDataURL("anquan.xml");
	    anquan.render("chartdiv2");
	    var xiaolv = new FusionCharts("FusionCharts/Charts/MSColumn2D.swf","myChartId2", "100%","200","0","1");
	    xiaolv.setDataURL("xiaolv.xml");
	    xiaolv.render("chartdiv3");
	    window.onload = function() {
	    	var e, i = 0;
	    	while (e = document.getElementById('gallery').getElementsByTagName ('DIV') [i++]) {
	    		if (e.className == 'on' || e.className == 'off') {
	    		e.onclick = function () {
	    			var getEls = document.getElementsByTagName('DIV');
	    				for (var z=0; z<getEls.length; z++) {
	    				getEls[z].className=getEls[z].className.replace('show1', 'hide');
	    				getEls[z].className=getEls[z].className.replace('on', 'off');
	    				}
	    			this.className = 'on';
	    			var max = this.getAttribute('title');
	    			document.getElementById(max).className = "show1";
	    			}
	    		}
	    	}
	    }
    </script>
</body>
</html>
