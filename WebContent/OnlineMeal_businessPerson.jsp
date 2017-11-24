<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>business</title>
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
			width:400px;
			top: 800px;
			left: 300px;
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
		#layer15{
			position: absolute;
			z-index:15;
			height:700px;
			width:800px;
			top: 770px;
			left: 1000px;
		}
		#layer16{
			position: absolute;
			z-index:16;
			height:300px;
			width:100px;
			top: 770px;
			left: 650px;
			 
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
		//ajax
		var business_id=$("#businessord").val();
		var business_name=$("#businessname").val();	
		/* $("#showOrder").click(function(){ */
			 $.ajax({
						type:"post",
						url:"searchByBusinessId.action?business_id="+business_id,
						dataType:"json",
						// 遍历后台传的值，data是参数 
						success:function(data){//data：集合
							$(data).each(function(index,entity){
								var tr="<tr><td><a href='#'  onclick='ss("+entity.order_id+")' style='list-style:none;text-decoration:none;'>"+entity.send_time+"&nbsp;&nbsp;&nbsp;&nbsp;"+entity.order_location+"&nbsp;&nbsp;&nbsp;&nbsp;"+entity.user_tel+"&nbsp;&nbsp;&nbsp;&nbsp;"+entity.pay_type+"&nbsp;&nbsp;&nbsp;&nbsp;"+entity.order_sum+"</a></td></tr>"
									$("#table").append(tr);	
								//searchByOrderAjax.action?business_name="+business_name+"&business_id="+entity.business_id+"&order_id="+entity.order_id+"'
							})
						}
					})
		/* }) */
		function ss(a){
				 $.ajax({
						type:"post",
						url:"searchByOrderAjax.action?order_id="+a,
						dataType:"json",
						// 遍历后台传的值，data是参数 
						success:function(data){//data：集合
							$(data).each(function(index,entity){
								var tr="<tr><td>"+entity.food_name+"&nbsp;&nbsp;&nbsp;&nbsp;"+entity.shop_count+"</td></tr>";
									$("#table1").append(tr);	
								//searchByOrderAjax.action?business_name="+business_name+"&business_id="+entity.business_id+"&order_id="+entity.order_id+"'
							})
						}
					})
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
	<!-- 中间留白地方文本 -->
	<div id="layer9">
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
				 <input type="hidden" value="${bus.business_id}" id="businessord">
				 <input type="hidden" value="${bus.business_name}" id="businessname">
				<%--  <c:set value="${bus.business_name}" scope="session" var="business_name"/> --%>
	    用户名称：<input name="business_name" value="${bus.business_name}" readonly="readonly"  style="border-color: #FFFFF9;"><br>
			
			商家类型：<select name="businessClass_id" style="border-color: #FFFFF9;">
					<option value="${bus.businessClass_id}" selected="selected">${bus.businessClass_id}</option>
					</select><br>	
			商家电话：<input name="business_tel" value="${bus.business_tel}" readonly="readonly" style="border-color: #FFFFF9;"><br>
			商家位置：<input name="business_location" value="${bus.business_location}" readonly="readonly" style="border-color: #FFFFF9;"><br>
			<%-- 商家收入：${bus.business_income}<br> --%>
			商家单量：${bus.business_bill}<br>
			商家资质：<input name="intelligence" value="${bus.intelligence}" readonly="readonly" style="border-color: #FFFFF9;"><br>
			商家公告：<input name="announcement" value="${bus.announcement}" readonly="readonly" style="border-color: #FFFFF9;"><br>
			起送价：<input name="startPrice" size="3" value="${bus.startPrice}" readonly="readonly" style="border-color: #FFFFF9;">-元<br>
			送餐价：<select name="sendPrice" readonly="readonly" style="border-color: style="border-color: #FFFFF9;">
						<option value="${bus.sendPrice}">${bus.sendPrice}元</option>
						<option value="1">1元</option>
						<option value="2">2元</option>
						<option value="3">3元</option>
						<option value="4">4元</option>
						<option value="5">5元</option>
					</select><br>
			餐盒价：<select name="boxPrice" readonly="readonly" style="border-color: #FFFFF9;">
						<option value="${bus.boxPrice}" selected="selected">${bus.boxPrice}</option>
						<option value="0">0元</option>
						<option value="1">1元</option>
						<option value="2">2元</option>
						<option value="3">3元</option>
					</select><br>
				预计送餐时间:<input name="sendTime" size="3" value="${bus.sendTime}" readonly="readonly" style="border-color: #FFFFF9;">-分钟<br>
				 
		 
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
	<!--商家登陆按钮  -->
	<div id="layer13">
		<form action="">
		<input type="button" value="商家登录"  id="logon" style="width:90px;height:35px;background-color: transparent; border: 0;color:#FBB448;"/>
		<input type="hidden" value="${bus.business_name}" id="persen"/>
		
	</form>
	</div>
	<!-- 商家登陆框显示和隐藏 -->
		<div id="layer14" style="display: none" >
		<br>
			&nbsp;&nbsp;<form action="searchBusinessByName.action" method="post">
			&nbsp;&nbsp;<input placeholder="商家店铺名（用户名）。。" name="business_name"/><br><br>
			&nbsp;&nbsp;<input type="password" placeholder="用户名密码。。" name="business_pass"/><br><br>
			&nbsp;&nbsp;<input type="checkbox" checked="checked"/><font color="white" size="2">我已同意用户使用协议</font><br><br>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<input type="submit" value="登陆" style="width:90px;height:25px;border: 0;"/>
		</form>
	</div>
	<div id="layer15">
		 <!-- <input type="button" value="查看订单" id="showOrder"><br> -->
		<table id="table">
			<tr>
			<td>客户电话&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			客户地址&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			订餐时间&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;支付方式&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;总金额</td>
			</td>
			</tr>
		</table>
	</div>
	 <div id="layer16">
		<table id="table1">
		</table>
	</div> 
</body>
</html>