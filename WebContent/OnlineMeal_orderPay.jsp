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
			height:500px;
			width:500px;
			top: 670px;
			left: 920px;
			background-color:#FFFFF9; 
		}
		#layer10{
		position: absolute;
			z-index:10;
			height:350px;
			width:350px;
			top: 670px;
			left: 500px;
			background-color:#FFFFF9; 
		}
		
		/* #layer10 img:hover {
		cursor: pointer;
		transition: all 0.55s; 
   		transform: scale(1.1);
		} */
		
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
			//计算总金额
			
			var boxPrice=parseFloat($("#boxPrice").val());
			var sendPrice=parseFloat($("#sendPrice").val());
			var sum=boxPrice+sendPrice+0;
			$(".sum").each(function(){
				var a= $(this).attr("id");
				var aa=parseFloat(a);
				sum=sum+aa;
			})
			$("#ordersum").val(sum+"元");
			$("#order_sum").val(sum);
			//提交订单获取时间
			$("#submit").mouseover(function(){
				var date = new Date();
				var year = date.getFullYear();
				var month = date.getMonth()+1;
				var day = date.getDate();
				var hour = date.getHours();
				var minute = date.getMinutes();
				var second = date.getSeconds();
				
				$("#order_time").val(date.toLocaleString( ));
			})
			//订单的默认时间
			var date = new Date();
			var year = date.getFullYear();
			var month = date.getMonth()+1;
			var day = date.getDate();
			var hour = date.getHours();
			var minute = date.getMinutes();
			var second = date.getSeconds();
			
			$("#order_time1").val(date.toLocaleString( ));
			
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
		<a href="#" style="color:#CAC1BB;font-family:华文新魏;font-size:18px;">美食论</a>
		
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
	
	
	<!-- 中间留白地方文本  订单列表-->
	<div id="layer10">
		<br>&nbsp;&nbsp;订单详情：<br/><hr>
		<table>
			<tr>
				<td width="130px" align="center">商品</td>
				<td width="130px" align="center">份数</td>
				<td width="130px" align="center">小计</td>
			</tr>
		
			<c:forEach items="${orderListBy}" var="li" varStatus="s">
				<tr>
					<td width="130px" align="center">
						${li.food_name}
					</td>
					<td width="130px" align="center">
						${li.shop_count}
					</td>
					<td width="130px" align="center">
						${li.shop_count*li.food_price}
					</td>
				</tr>
				
				<input type="hidden" class="sum" id="${li.shop_count*li.food_price}">
				<input type="hidden" id="boxPrice" value="${businessById.boxPrice}">
				<input type="hidden" id="sendPrice" value="${businessById.sendPrice}">
			</c:forEach>
			<tr><td width="130px" align="center"><br>餐盒价：${businessById.boxPrice}元</td><td></td><td></td><tr>
			<tr><td width="130px" align="center">配送费：${businessById.sendPrice}元</td><td></td><td></td><tr>
	
		<tr>
				<td  align="center"></td>
				<td  align="right">总金额：</td>
				<td  align="center"><input style="border: none" readonly="readonly" value="" id="ordersum"></td>
		<tr>
		</table>	
	
	</div>
	<div id="layer9">
	<form action="addOrder.action" method="post">
		<br>
	<input type="hidden" value="${business_id}" name="business_id"/>
	<input type="hidden" value="${userByTel.user_tel}" name="user_tel"/>
	<input type="hidden" value="${order_id}" name="order_id"/>
	<input type="hidden" value="" name="food_id"/><!-- 不需要 -->
	&nbsp;&nbsp;收货地址：<br>
	&nbsp;&nbsp;&nbsp;&nbsp;<input name="order_location" value="${userByTel.user_location}"/><br><br>
	&nbsp;&nbsp;订餐时间:<br>
	&nbsp;&nbsp;&nbsp;&nbsp;<input name="send_time" id="order_time1"/><br><br>
	&nbsp;&nbsp;支付方式：<br>
	&nbsp;&nbsp;&nbsp;&nbsp;<select name="pay_type">
								<option value="餐到付款">餐到付款</option>
							</select><br><br>
	
	&nbsp;&nbsp;&nbsp;&nbsp;
	&nbsp;&nbsp;&nbsp;&nbsp;<input type="hidden" name="order_time" id="order_time"/><br>
	<input type="hidden" name="order_sum" id="order_sum"><br>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" value="确定" id="submit">
	
	
	
</form>
	
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
	
</body>
</html>