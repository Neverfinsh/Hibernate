<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
String company_name=request.getParameter("name");
%>



<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="initial-scale=1.0, user-scalable=no" />
<style type="text/css">
body, html,#allmap {width: 100%;height: 100%;overflow: hidden;margin:0;font-family:"微软雅黑";}
</style>
<script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=6GrEiAhGzOD6etwnHgHkq9pGIrMqPTb4"></script>
<title>个性化地图</title>
</head>
<body>
<div id="allmap"></div>
</body>
</html>

<script type="text/javascript">
var map = new BMap.Map('allmap');
map.centerAndZoom(new BMap.Point(116.404269,39.916042), 12);

var  mapStyle ={ 
        features: ["road", "building","water","land"],//隐藏地图上的poi
        style : "dark"  //设置地图风格为高端黑
    }
map.setMapStyle(mapStyle);
 
function checkhHtml5()   
        {   
            if (typeof(Worker) === "undefined")     
            {   
                if(navigator.userAgent.indexOf("MSIE 9.0")<=0)  
				   {  
				 	 alert("定制个性地图示例：IE9以下不兼容，推荐使用百度浏览器、chrome、firefox、safari、IE10");   
				   }  
                
            }  
        }
 checkhHtml5();     
</script>

