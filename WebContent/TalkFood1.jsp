<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
#layer1{
			position: absolute;
			z-index:1;
		}
		#layer2{
			position: absolute;
			z-index:2;
			height:100%;
			width:100%;
			top: 0px;
			left: 0px;
		}
		#layer3{
		position: absolute;
			z-index:4;
			height:1968px;
			width:100%;
			top: 0px;
			left: 0px;
			opacity:0.5;
			filter:alpha(opacity=30);
			background-color:black; 
		}
		#layer4{
		position: absolute;
			z-index:5;
			height:900px;
			width:100%;
			top: 600px;
			left: 0px;
			background-color:white;
		}
		#layer5{
		position: absolute;
			z-index:3;
			height:10px;
			width:100%;
			top: 70px;
			left: 0px;
		}
	#layer6{
		position: absolute;
			z-index:6;
			height:70px;
			width:400px;
			top: 30px;
			left: 1120px;
		}
		#layer7{
		position: absolute;
			z-index:7;
			height:70px;
			width:200px;
			top: 30px;
			left: 420px;
		}
		#layer8{
		position: absolute;
			z-index:8;
			height:350px;
			width:300px;
			top: 260px;
			left: 350px;
		}
		#layer9{
		position: absolute;
			z-index:9;
			height:700px;
			width:1910px;
			top: 600px;
			left:-5px;
			/* background-image: url("images/123.jpg"); */
		}
		#layer12{
		position: absolute;
			z-index:12;
			height:300px;
			width:100%;
			top: 1550px;
			left: 0px;
			text-align: center;
		}
		
		a{
		text-decoration: none;
		}

		a{text-decoration: none;}
		#div1{
		background-image: url("images/美食.jpg");
		filter:alpha(opacity=70);
		}
		
		
		
		#div4{
		margin-left: 400px;
		margin-top: -60px;
		}
		
		
</style>
</head>
<body>

	<div id="layer1"></div>
	<!--图片图层  -->
	<div id="layer2">
		<img alt="" src="images/3.jpg" width="100%" >
		<img alt="" src="images/3.jpg" width="100%" height="120px">
		<img alt="" src="images/3.jpg" width="100%" >
	</div>
	<!--透明度图层  -->
	<div id="layer3"></div>
	<!--中间留白图层  -->
	<div id="layer4"></div>
	<!-- 顶部导航栏<hr> -->
	<div id="layer5">
		<hr/>
	</div>
	<!-- 顶部导航文字 -->
	<div id="layer6">
		<a href="#" style="color:#CAC1BB;font-family:华文新魏;font-size:18px;">今日美食&nbsp; &nbsp;</a>
		<a href="OnlineMeal.jsp" style="color:#CAC1BB;font-family:华文新魏;font-size:18px;">网上订餐 &nbsp; &nbsp;</a>
		<a href="Health1.jsp" style="color:#CAC1BB;font-family:华文新魏;font-size:18px;">健康饮食&nbsp; &nbsp;</a>
		<a href="TalkFood1.jsp" style="color:#FBB448;font-family:华文新魏;font-size:18px;">美食论</a>
		
	</div>
	<!-- 软件名-->
	<div id="layer7">
		<font style="color:#FBB448;font-family:方正姚体;font-size:30px;">今日美食</font>
	</div>
	<!-- 页面主题语 -->
	<div id="layer8">
	<font style="color:#FFFFF9;font-family:华文行楷;font-size:80px;">Say&nbsp;hello！</font><br><br>
		<font style="color:#FBB448;font-family:方正姚体;font-size:30px;">民以食为天！！！</font>
		
	</div>
	<!-- 中间留白地方文本 -->
<div id="layer9">
	
	 <div id="div2"><h1 style="font-size: 40px;font-family:方正姚体;color:#FBB448;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</h1></div>
		
	<div id="div4">
		<table class="tb1"  cellspacing="100px"  >
			<tr height="250px">
				<td class="tb2" width="400px" align="center" style="background-color:#5BC9F9;font-family:方正姚体;"><a href="searchNoteById.action?talkClass_id=1" style="font-size: 60px;color:#FFFFFF;">综合餐区</a></td>
				<td class="tb2" width="400px" align="center" style="background-color:#5BC9F9;font-family:方正姚体;"><a href="searchNoteById.action?talkClass_id=2" style="font-size: 60px;color:#FFFFFF;">养生餐区</a></td>
			</tr>
			<tr height="250px">
				<td class="tb2" width="400px" align="center" style="background-color:#5BC9F9;font-family:方正姚体;"><a href="searchNoteById.action?talkClass_id=3" style="font-size: 60px;color:#FFFFFF;">运动餐区</a></td>
				<td class="tb2" width="400px" align="center" style="background-color:#5BC9F9;font-family:方正姚体;"><a href="searchNoteById.action?talkClass_id=4" style="font-size: 60px;color:#FFFFFF;">减肥餐区</a></td>
			</tr>
		
		</table>
	</div>
</div>
<!-- 最下部文字 -->
	<div id="layer12">
		<p style="color: white;"><b>GET IN TOUCH</b></p>
		<p style="color: #FBB448;"><b>PHONE：+123456789&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E-mail：TodayCate@xx.com&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Live Chat</b></p><br>
		<p style="color: white;"><b>GET SOCIAL</b></p>
		<p style="color: #FBB448;"><b>★&nbsp;◆&nbsp;■&nbsp;〓&nbsp;★&nbsp;▲</b></p><br><br>
		<hr width="60%" size="0.5px" color="#808080"/><br>
		<font size="2px" color="#808080">? 2016 Free HTML5. All Rights Reserved.</font><br>
		<font size="2px" color="#808080">More Cate <span style="color:#FBB448 ">关注今日美食</span> - Collect from <span style="color:#FBB448 ">今日美食</span></font>
    </div>
</body>
</html>