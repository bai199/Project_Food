<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>home</title>
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
			height:1848px;
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
			height:700px;
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
			left:1120px;
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
			width:500px;
			top: 260px;
			left: 350px;
		}
		#layer9{
		position: absolute;
			z-index:9;
			height:700px;
			width:1000px;
			top: 600px;
			left: 400px;
		}
		#layer10{
		position: absolute;
			z-index:10;
			height:700px;
			width:1400px;
			top: 800px;
			left: 400px;
		}
		
		#layer10 img:hover {
		cursor: pointer;
		transition: all 0.55s; 
   		transform: scale(1.1);
		}
		
		#layer11{
		position: absolute;
			z-index:11;
			height:548px;
			width:100%;
			top: 1300px;
			left: 0px;
			opacity:0.5;
			filter:alpha(opacity=30);
			background-color:black; 
		}
		#layer12 {
		position: absolute;
			z-index:12;
			height:300px;
			width:100%;
			top: 1400px;
			text-align: center;
			}
		#layer13 {
		position: absolute;
			z-index:13;
			height:60px;
			width:100px;
			top: 23px;
			left: 1780px;
			}	
			
		#layer14 {
			position: absolute;
			z-index:14;
			height:250px;
			width:200px;
			top: 200px;
			left: 1400px;
			opacity:0.3;
			filter:alpha(opacity=80);
			background-color:black; 
			}	
		a{
		text-decoration: none;
		}
	</style>
	<script type="text/javascript" src="js/jquery-1.8.3.js"></script>
	<script type="text/javascript">
	 $(function(){
		 
		 var logon=$("#logon").val();
		 var person=$("#persen").val();
		 
		/* 改变登陆为用户名 */
		 if(person!=""){
			
			 $("#logon").val("用户:"+person);
		 }
		 /* 点击登陆按钮显示div */
		$("#layer13").click(function(){
			
		 $("#layer14").show("1000");
		})
		//判断登录
		$(".order1").click(function(){
			alert("请先登录");
			 $("#layer14").show("1000");
	
		})
	})
	
	</script>
</head>
<body>
	<!-- 最底层图层 -->
	<div id="layer1"></div>
	<!--图片图层  -->
	<div id="layer2">
		<img alt="" src="images/img_bg_3.jpg" width="100%" >
		<img alt="" src="images/img_bg_1.jpg" width="100%" >
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
		<a href="TodayCate.jsp" style="color:#CAC1BB;font-family:华文新魏;font-size:18px;">今日美食&nbsp; &nbsp;</a>
		<a href="OnlineMeal.jsp" style="color:#FBB448;font-family:华文新魏;font-size:18px;">网上订餐 &nbsp; &nbsp;</a>
		<a href="Health1.jsp" style="color:#CAC1BB;font-family:华文新魏;font-size:18px;">健康饮食&nbsp; &nbsp;</a>
		<a href="TalkFood1.jsp" style="color:#CAC1BB;font-family:华文新魏;font-size:18px;">美食论</a>
		
	</div>
	<!-- 软件名-->
	<div id="layer7">
		<font style="color:#FBB448;font-family:华文行楷;font-size:30px;">今日美食</font>
	</div>
	<!-- 页面主题语 -->
	<div id="layer8">
		<font style="color:#FFFFF9;font-family:华文行楷;font-size:80px;">Say&nbsp;hello！</font><br><br>
		<font style="color:#FBB448;font-family:华文行楷;font-size:25px;">您还在为奔波在吃饭的路上而烦恼吗？</font><br><br>
		<!-- <font style="color:#FFFFF9;font-family:华文行楷;font-size:80px;">Say&nbsp;hello！</font> -->
		
	</div>
	<!-- 中间留白地方文本 -->
	<div id="layer9">
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${error}
	<br>
	<table align="center">
		<tr align="center">
			<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<font style="color:#FBB448;font-family:华文行楷;font-size:60px;">We&nbsp;Services</font>
			</td>
		</tr>
		<tr>
			<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<font style="color:#808080;font-family:方正姚体;font-size:20px;">Dignissimos asperiores vitae velit veniam totam fuga molestias accusamus alias </font>
			</td>
		</tr>
		<tr align="center">
			<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<font style="color:#808080;font-family:方正姚体;font-size:20px;">autem provident. Odit ab aliquam dolor eius.</font>
			</td>
		</tr>
	</table>
	</div>
	
	<!-- 中间留白地方文本 -->
	<div id="layer10">
	<!-- 网上订餐的登录判断 -->
		<c:if test="${userByTel.user_tel!=null}" >
			<a href="OnlineMeal_order.jsp">
		</c:if>
		
		<c:if test="${userByTel.user_tel==null}" >
			<a href="#" class="order1">
		</c:if>	
		<img alt="" src="images/8.bmp">&nbsp;&nbsp;&nbsp;&nbsp;</a>
		<!-- 个人信息查询登录判断 -->
		<c:if test="${userByTel.user_tel!=null}" >
			<a href="searchByTelPerson.action?user_tel=${userByTel.user_tel}">
		</c:if>
		<c:if test="${userByTel.user_tel==null}" >
			<a href="#" class="order1">
		</c:if>
		<img alt="" src="images/6.bmp">&nbsp;&nbsp;&nbsp;&nbsp;</a>
		<a href="OnlineMeal_business.jsp"><img alt="" src="images/7.bmp"></a>
		
	</div>
	
	<!-- 底部透明度 -->
	<div id="layer11">
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
	
	<!--用户登陆按钮  -->
	<div id="layer13">
		<form action="">
		<input type="button" value="用户登录"  id="logon" style="width:90px;height:35px;background-color: transparent; border: 0;color:#FBB448;"/>
		<c:set value="${userByTel}" scope="session" var="userByTel"/>
		<input type="hidden" value="${userByTel.user_tel}" id="persen"/>
		
		</form>
	</div>
	<!-- 用户登陆框显示和隐藏 -->
		<div id="layer14" style="display: none" >
		<br>
			
			&nbsp;&nbsp;<form action="searchByTel.action" method="post">
			&nbsp;&nbsp;<input placeholder="电话号码。。" name="user_tel"/><br><br>
			&nbsp;&nbsp;<input type="password" placeholder="用户名密码。。" name="user_pass"/><br><br>
			&nbsp;&nbsp;<input type="checkbox" checked="checked"/><font color="white" size="2">我已同意用户使用协议</font><br><br>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<input type="submit" value="登陆" style="width:90px;height:25px;border: 0;"/>
		</form>
		
	</div>
</body>
</html>