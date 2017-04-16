<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'upUserPic.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	
<script type="text/javascript" >
	
	$(window).load(function() {
    var options =
    {
        thumbBox: '.thumbBox',
        spinner: '.spinner',
        imgSrc: 'images/avatar.png'
    }
    var cropper = $('.imageBox').cropbox(options);
    $('#upload-file').on('change', function(){
        var reader = new FileReader();
        reader.onload = function(e) {
            options.imgSrc = e.target.result;
            cropper = $('.imageBox').cropbox(options);
        }
        reader.readAsDataURL(this.files[0]);
        this.files = [];
    })
    $('#btnCrop').on('click', function(){
        var img = cropper.getDataURL();
        $('.cropped').html('');
        $('.cropped').append('<img src="´ img ´" align="absmiddle" '
              'style="width:64px;margin-top:4px;border-radius:64px;'
              'box-shadow:0px 0px 12px #7E7E7E;" ><p>64px*64px</p>');
        $('.cropped').append('<img src="' img '" align="absmiddle" '
              'style="width:128px;margin-top:4px;border-radius:128px;'
              'box-shadow:0px 0px 12px #7E7E7E;"><p>128px*128px</p>');
        $('.cropped').append('<img src="' img '" align="absmiddle" '
              'style="width:180px;margin-top:4px;border-radius:180px;'
              'box-shadow:0px 0px 12px #7E7E7E;"><p>180px*180px</p>');
    })
    $('#btnZoomIn').on('click', function(){
        cropper.zoomIn();
    })
    $('#btnZoomOut').on('click', function(){
        cropper.zoomOut();
    })
});
	</script>

  </head>
  
  <body>
  <div class="container">
    <div class="imageBox">
        <div class="thumbBox"></div>
        <div class="spinner" style="display: none">Loading...</div>
    </div>
    <div class="action">
        <!-- <input type="file" id="file" style=" width: 200px">-->
        <div class="new-contentarea tc">
            <a href="javascript:void(0)" class="upload-img"> <label
                for="upload-file">上传图像</label>
            </a> <input type="file" class="" name="upload-file" id="upload-file" />
        </div>
        <input type="button" id="btnCrop" class="Btnsty_peyton" value="裁切">
            <input type="button" id="btnZoomIn" class="Btnsty_peyton" value=" ">
                <input type="button" id="btnZoomOut" class="Btnsty_peyton"
                value="-">
    </div>
    <div class="cropped"></div>
</div>





  </body>
</html>
