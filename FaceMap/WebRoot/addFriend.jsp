<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>

<head>
    <meta charset="utf-8">
    <title>FaceMap</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <!-- Le styles -->
    <script type="text/javascript" src="<%=basePath%>assets2/js/jquery.min.js"></script>

   <!--  <link rel="stylesheet" href="<%=basePath%>assets2/css/style.css"> -->
    <link rel="stylesheet" href="<%=basePath%>assets2/css/loader-style.css">
    <link rel="stylesheet" href="<%=basePath%>assets2/css/bootstrap.css">
    <link rel="stylesheet" href="<%=basePath%>assets2/css/signin.css">
    

    <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
        <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
        <![endif]-->
    <!-- Fav and touch icons 
    <link rel="shortcut icon" href="assets2/ico/minus.png">-->
</head>

<body> 
    <!-- Preloader -->
    <div id="preloader">
        <div id="status">&nbsp;</div>
    </div>
    
    <div class="container">



        <div class="" id="login-wrapper">
            <div class="row">
                <div class="col-md-4 col-md-offset-4">
                    <div id="logo-login">
                        <h1>添加好友
                            <span>FaceMap</span>
                        </h1>
                    </div>
                </div>

            </div>

            <div class="row">
                <div class="col-md-4 col-md-offset-4">
                    <div class="account-box"> 
                    
                        <form role="form" action="<%=basePath%>/friend/add.do" method="post">
                            <div class="form-group">
                                <!--a href="#" class="pull-right label-forgot">Forgot email?</a-->
                                <label for="inputUsernameEmail">好友账号</label>
                         <span><input type="text" id="inputUsernameEmail" class="form-control" name="username" hint="adfasef">
                          </span>
                            </div>
                          <!-- 
                            <div class="checkbox pull-left">
                                <label>
                                    <input type="checkbox">记住用户名</label>
                            </div>
                             -->  
                         
                           <label>
                            <input  class="btn btn btn-primary pull-right" type="submit" value="搜索" >
                            </input>
                          </label>
                           
                        </form>
                        
                        <!-- 做好隐藏的作用 -->
                         <table   height="50px" width="250px">
                            <tr>
                             <td >账号</td>
                             <td style="margin-left: 20px">昵称</td>
                             <td style="margin-left: 20px">操作</td>
                           </tr>
                           
                          <tr>
                             <td >${userlist.id}</td>
                             <td style="margin-left: 20px">${userlist.username}</td>
                             <td style="margin-left: 20px"><a href="<%=basePath%>/friDesc.jsp" style="cursor: pointer;">添加</a></td>
                          </tr>
 
                         </table>
                         <a class="forgotLnk" href="index.html"></a>
                           <div class="row-block">
	                        <div class="row">
		                    </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

 		<p>&nbsp;</p>
 		
    </div>
    <div id="test1" class="gmap3"></div>

    <!--  END OF PAPER WRAP -->

    <!-- MAIN EFFECT -->
    <script type="text/javascript" src="<%=basePath%>assets2/js/preloader.js"></script>
    <script type="text/javascript" src="<%=basePath%>assets2/js/bootstrap.js"></script>
    <script type="text/javascript" src="<%=basePath%>assets2/js/app.js"></script>
    <script type="text/javascript" src="<%=basePath%>assets2/js/load.js"></script>
    <script type="text/javascript" src="<%=basePath%>assets2/js/main.js"></script>
    
<!-- googele的地图显示 -->
   <script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=6GrEiAhGzOD6etwnHgHkq9pGIrMqPTb4"></script>
    <script type="text/javascript" src="<%=basePath%>assets2/js/map/gmap3.js"></script>
 
</body>

</html>

