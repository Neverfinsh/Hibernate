<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="viewport" content="initial-scale=1.0, user-scalable=no" />
	<title>添加弧线</title>
	<script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=6GrEiAhGzOD6etwnHgHkq9pGIrMqPTb4"></script>
	<script type="text/javascript" src="http://api.map.baidu.com/library/CurveLine/1.5/src/CurveLine.min.js"></script>

	<style type="text/css">
		html,body{
			width:100%;
			height:100%;
			margin:0;
			background:#CCE8CF
			overflow:hidden;
			font-family:"微软雅黑";
		}
	</style>
</head>
<body>
	<div style="width:100%;height:100%;border:1px solid gray" id="container"></div>
</body>
</html>
<script type="text/javascript">
	// 百度地图API功能
	var map = new BMap.Map("container");
	map.centerAndZoom(new BMap.Point(118.454, 32.955), 6);
	map.enableScrollWheelZoom();
	
	//现在的距离
	var beijingPosition=new BMap.Point(116.432045,39.910683),
		hangzhouPosition=new BMap.Point(120.129721,30.314429);//家的距离
	
		
	var points = [beijingPosition,hangzhouPosition];

    //弧线的属性
	var curve = new BMapLib.CurveLine(points, {strokeColor:"red", strokeWeight:10, strokeOpacity:0.5}); //创建弧线对象
	map.addOverlay(curve); //添加到地图中
	//curve.enableEditing(); //开启编辑功能
</script>