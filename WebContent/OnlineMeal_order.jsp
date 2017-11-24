<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>order</title>
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
			background-color:#F7F7F7;
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
			width:1150px;
			top: 600px;
			left: 380px;
		}
		#layer10{
		position: absolute;
			z-index:10;
			height:35px;
			width:1150px;
			top: 670px;
			left: 380px;
			background-color:#FFFFF9; 
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
		a{
		text-decoration: none;
		direction: none;
		}
		.gray{
		color: #FFFFF9;
		width: 100px;
		}
		#fudong{
		float: left;
		}
	</style>
	<script type="text/javascript">
		function delete1(){
			document.getElementById("search").value=null;
		}
	</script>
	<script type="text/javascript" src="js/jquery-1.8.3.js"></script>
	<script type="text/javascript">
		$(function(){
			$(window).scrollTop(500);
			 sessionStorage.removeItem("order_idsession");
			var businessClassList=$("#businessClassList").val();
			if(businessClassList==""||businessClassList==null){
			window.location.href="searchBusinessClassAll.action";
			}
		
			//显示用户名 
			 var logon=$("#logon").val();
			 var person=$("#persen").val();
				 
			/* 改变登陆为用户名 */
			 if(person!=""){
					
					 $("#logon").val("用户:"+person);
			 }

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
		<a href="#" style="color:#CAC1BB;font-family:华文新魏;font-size:18px;">今日美食&nbsp; &nbsp;</a>
		<a href="OnlineMeal.jsp" style="color:#FBB448;font-family:华文新魏;font-size:18px;">网上订餐 &nbsp; &nbsp;</a>
		<a href="#" style="color:#CAC1BB;font-family:华文新魏;font-size:18px;">健康饮食&nbsp; &nbsp;</a>
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
	<!-- 中间留白地方文本  搜索-->
	<div id="layer9">
	<br>
	<table >
		<tr>
		<td width="800px">
			当前位置：${userByTel.user_location}&nbsp;<a href=""><font size="2">切换地址</font></a> <form action=""></form><select style="display: none"></select> 
			</td>
			<td>
				<!--老方法  -->
				<!-- <input type="text" value="搜索商家，美食.." onmousemove="delete1()" id="search"/> -->
				<form action="searchBusinessBySearch.action">
					<input type="text" placeholder="搜索商家，美食.." name="business_name">
					<!-- <input type="hidden" value="" name="business_id"/> -->
					<input type="submit" value="搜索"/>
				</form>
			</td>
		</tr>
		
	</table>
	</div>
	
	<!-- 中间留白地方文本  导航分类#FBB448-->
	<div id="layer10">
		<table>
				<tr align="center" height="35px">
					<td  class="gray" style="color: #FBB448" bgcolor="#FFFFF9" ><font size="2">&nbsp;商家分类：</font></td>
					<td  class="gray" bgcolor="#FFFFF9"><a href="searchBusinessAll.action"><font size="2">全部商家</font></a></td>
					
					<c:forEach items="${businessClassList}" var="li">
						<td  class="gray" bgcolor="#FFFFF9"> <a href="searchBusinessByType.action?businessClass_id=${li.businessClass_id}"><font size="2">${li.businessClass}</font></a></td>
					</c:forEach>
					
				</tr>
		</table>
		<input type="hidden" value="${businessClassList}" id="businessClassList">
		<br><br>
		<c:forEach items="${businessByType}" var="blist">
		<table id="fudong">
			<tr>
				<td ><a href="searchMenuByBusinessShowUser.action?business_id=${blist.business_id}" ><img alt="" src="images/${blist.other}" width="180px" height="150px"></a><br>
					<font size="2" color="gray">${blist.business_name}<br>
					销量：${blist.business_bill}单<br>
					配送费：${blist.sendPrice}元<br>
					送达时间：${blist.sendTime}分钟<br>
					</font>
				<td>
				
		</table>
			
		</c:forEach>
		
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
	<!--用户显示登录  -->
	<div id="layer13">
		<form action="">
		<input type="button" value="用户登录"  id="logon" style="width:90px;height:35px;background-color: transparent; border: 0;color:#FBB448;"/>
		<c:set value="${userByTel}" scope="session" var="userByTel"/>
		<input type="hidden" value="${userByTel.user_tel}" id="persen"/>
		
		</form>
	</div>
</body>
</html>