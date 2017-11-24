<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="css/mainpage.css" type="text/css" rel="stylesheet">
<link href="css/practicecss.css" type="text/css" rel="stylesheet">
<script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
<script type="text/javascript">
</script>
</head>
<body>
<!-- 顶部导航文字 -->
	<div id="layer6">
		<a href="#" style="color:#FBB448;font-family:方正姚体">每日推荐</a>&nbsp; &nbsp;
		<a href="#" style="color:#CAC1BB;font-family:方正姚体">网上订餐</a> &nbsp; &nbsp;
		<a href="#" style="color:#CAC1BB;font-family:方正姚体">健康饮食</a>&nbsp; &nbsp;
		<a href="#" style="color:#CAC1BB;font-family:方正姚体">美食论</a>&nbsp; &nbsp;&nbsp; &nbsp;
	</div>
<!-- 软件名-->
	<div id="layer7">
		<font style="color:#FBB448;font-family:方正姚体;font-size:23px;"><b>今日美食</b><span style="color:#FFFFF9">.</span></font>
	</div>
	<!-- 页面主题语 -->
	<div id="layer8">
		<font style="color:#FFFFF9;font-family:华文行楷;font-size:80px;">Say&nbsp;hello！</font><br><br>
		<font style="color:#FBB448;font-family:方正姚体;font-size:25px;">“再简单的食物都有自己的灵魂，人生有很多味道无法复制。”</font>
	</div>
	<!--图片图层  -->
	<div id="layer2">
		<img alt="" src="images/3b2.jpg" width="100%" >
		<img alt="" src="images/3b2.jpg" width="100%" height="700px">
		<img alt="" src="images/3b2.jpg" width="100%" >
	</div>
	<!--透明度图层  -->
	<div id="layer3"></div>
	<!--透明度图层2  -->
	<div id="layers3"></div>
	<!--中间留白图层  -->
	<div id="layer4">
	<!-- <div id="layer13">
	</div> -->
	<div id="layer14">
		<br>
		<font size="6px" style="font-family: ">&nbsp;${cateid.cate_name}</font><br><br>
		<font size="4px" style="font-family: ">&nbsp;&nbsp;&nbsp;用料：</font><br>
		&nbsp;&nbsp;&nbsp;<textarea rows="4" cols="400" style="font-size:16px;width:700px;border:0;">${cateid.cate_burdening}</textarea>
		<br><br>
		<font size="4px" style="font-family: ">&nbsp;&nbsp;&nbsp;作法：</font><br>
		&nbsp;&nbsp;&nbsp;<textarea rows="10" cols="400" style="font-size:16px;width:700px;border:0;">${cateid.cate_make}</textarea><br><br><br>
		&nbsp;&nbsp;&nbsp;<img alt="今日美食" src="images/${cateid.cate_path}" />
	</div>
	
	</div>
	<!-- 最下部文字 -->
	<div id="layer12">
		<p style="color: white;"><b>GET IN TOUCH</b></p>
		<p style="color: #FBB448;"><b>PHONE：+123456789&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E-mail：TodayCate@xx.com&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Live Chat</b></p><br>
		<p style="color: white;"><b>GET SOCIAL</b></p>
		<p style="color: #FBB448;"><b>★&nbsp;◆&nbsp;■&nbsp;〓&nbsp;★&nbsp;▲</b></p><br><br>
		<hr width="60%" size="0.5px" color="#808080"/><br>
		<font size="2px" color="#808080">© 2016 Free HTML5. All Rights Reserved.</font><br>
		<font size="2px" color="#808080">More Cate <span style="color:#FBB448 ">关注今日美食</span> - Collect from <span style="color:#FBB448 ">今日美食</span></font>
	</div>
</body>
</html>