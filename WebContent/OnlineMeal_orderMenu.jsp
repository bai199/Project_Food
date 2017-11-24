<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<META HTTP-EQUIV="pragma" CONTENT="no-cache"> 
<META HTTP-EQUIV="Cache-Control" CONTENT="no-cache, must-revalidate"> 
<META HTTP-EQUIV="expires" CONTENT="Wed, 26 Feb 1997 08:21:57 GMT"> 
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
			width:1400px;
			top: 770px;
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
			#layer15 {
			position: absolute;
			z-index:15;
			height:400px;
			width:900px;
			top: 770px;
			left:500px;
			/* border:1px solid #000; */  /* solid *//*dashed  */
		     background-color:#F8F8F8;
			}	
			#layer16 {
			position: absolute;
			z-index:16;
			height:130px;
			width:250px;
			top: 1170px;
			left:1640px;
			
		     background-color:#F8F8F8;
			}
			#layer17{
			position: absolute;
			z-index:17;
			height:200px;
			width:300px;
			top: 550px;
			left: 300px;
		}
		#layer18{
			position: absolute;
			z-index:18;
			height:200px;
			width:200px;
			top: 650px;
			left: 1500px;
		}				
		a{
		text-decoration: none;
		}
		#fudong{
		float: left;
		}
	</style>
	<script type="text/javascript" src="js/jquery-1.8.3.js"></script>
	<script type="text/javascript">
	
	
	 $(function(){
			 $(window).scrollTop(500);
		var logon = $("#logon").val();
			var person = $("#persen").val();
			/* 改变登陆为用户名 */
			if (person != "") {
				$("#logon").val("用户:" + person);
			}
			/* 点击登陆按钮显示div */
			$("#layer13").click(function() {
				$("#layer14").show("1000");
			})
			
			//获取点击的那个的food_id值以及ajax 
			var business_id=$("#business_id").val();
			$(".order").each(function() {
				$(this).click(function() {
					var food_id = $(this).attr('id');
					//business_id=$(this).attr('alt');
					
					$("#layer15").show("1000");
					
			//获取系统日期		
					var date = new Date();
					var year = date.getFullYear();
					var month = date.getMonth()+1;
					var day = date.getDate();
					var hour = date.getHours();
					var minute = date.getMinutes();
					var second = date.getSeconds();
					var user_tel=$("#user_tel").val()
					//只要第一次的单号，但注意结算完成后清空这个session
					if(sessionStorage.getItem('order_idsession')==null){
					sessionStorage.setItem('order_idsession',user_tel+year+month+day+hour+minute+second);
					}
					
				//ajax
					 $.ajax({
						type:"post",
						url:"searchByFoodId.action?food_id="+food_id,
						dataType:"json",
						// 遍历后台传的值，data是参数 
						success:function(data){//data：集合
							$("#imgFood_id").attr("src",data.food_path);
						//alert(data.food_name);
							$("#food_name").html(data.food_name);
							$("#food_price").val(data.food_price);
							$("#food_id").val(food_id);
							 $("#order_id").val(sessionStorage.getItem('order_idsession')); 
							
						}
					})
			var foodid=$("#food_id").val();		
				
				})
			
		})
		//判断起送价
		var orderlistsum=0;
			$(".orderlistsum").each(function() {
				var a= $(this).attr("id");
				var aa=parseFloat(a);
				
				orderlistsum=orderlistsum+aa;
			})
		if($("#orderListBy").val()!=""){
			
			if(orderlistsum<parseFloat($("#startPrice").val())){
				alert("还差："+(parseFloat($("#startPrice").val())-orderlistsum)+"元");
			}else{
				$("#pay").attr('href','searchByOrderPay.action?order_id='+sessionStorage.getItem('order_idsession')+'&business_id='+business_id);
			}
		}
		$(".orderdis").click(function() {

			$("#layer15").hide("1000");
		})
		$("#orderdis").click(function() {
			
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
	<!--取值可以通过标签属性取值或隐藏域  -->
		
		<c:forEach items="${menuList}" var="li">
		
		<table id="fudong">
			<tr>
				<td >
						<img alt="" src="${li.food_path}" width="200px" height="200px" ><br><br>
						菜名：${li.food_name}<br>
						菜价格：${li.food_price}<br>
						<%-- 菜分类：${li.food_class1}${li.food_class2}${li.food_class3}<br> --%>
						热菜/凉菜：${li.food_hot}<br>
						味道：${li.food_taste}<br>
						做法分类：${li.food_makeClass}<br>
						<%-- 其他：${li.food_other}<br> --%>
						<%-- 销量：${li.food_count}<br> --%>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<input type="button" value="选购" class="order" id="${li.food_id}" alt="${li.business_id}"/>
						
				</td>
			</tr>
		
		
		</table>
		
			
	
	</c:forEach>
		 
	</div>
	 <div id="layer15" style="display: none">
	 
	  
	 <form action="addOrderList.action" method="post" >
		 <table>
		 	<tr>
		 		<td rowspan="3"><br>&nbsp;&nbsp;&nbsp;&nbsp;<img alt="" src="" width="300px" height="300px" id="imgFood_id"></td>
		 		<td>&nbsp;&nbsp;&nbsp;&nbsp;菜名：<font id="food_name"></font><br><br><br>
		 			&nbsp;&nbsp;&nbsp;&nbsp;单价：<input type="number" name="food_price" id="food_price" style="border: none;width: 40px" readonly="readonly"><font ></font><br><br><br>
		 			&nbsp;&nbsp;&nbsp;&nbsp;订购数量：<input type="number" style="width: 35px" name="shop_count" value="1"/>-个
		 		</td>
		 	</tr>
		 	<tr>
		 		<td>
		 			 <input type="hidden" id="user_tel" value="18242351302"><!-- 获取用户名  -->
		 				<input  type="hidden" id="food_id" name="food_id"/>
		 			  <input type="hidden"  id="order_id" name="order_id"/> 
		 			 <%-- <input   value="${session.order_idsession}" />  --%>
		 			 <input type="hidden"  name="business_id" value="${business_id}" id="business_id"/>
		 		</td>
		 	</tr>
		 	<tr>
		 		<td></td>
		 	</tr>
		 	<tr>
		 		<td align="right"><input type="submit" value="确认" class="orderdis" id="orderdis" /></td>
		 		<td align="right"><input type="button" value="取消" class="orderdis"/></td>
		 	</tr>
		 	
		 </table>
	 </form>
	</div> 
	<!--购物车  -->
	<div id="layer16">
	
		&nbsp;&nbsp;商品列表：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a  id="pay">去结算</a><br>
			
			<input type="hidden" value="${orderListBy}" id="orderListBy"/>
			<c:forEach items="${orderListBy}" var="li" varStatus="s" >
			
			${li.food_name}&nbsp;&nbsp;${li.shop_count}个&nbsp;&nbsp;${li.shop_count*li.food_price}元 
			<input type="hidden"  id="${li.shop_count*li.food_price}" class="orderlistsum">
			<a href="deleteOrderList.action?orderList_id=${li.orderList_id}&business_id=${business_id}&order_id=${li.order_id}">取消</a><br>
			
			</c:forEach>
	


		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		
		
	
		
	</div>
	<!-- 底部透明度 -->
	<div id="layer11" >
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
	<!-- 商家信息  17/18-->
	<div id="layer17">
		<p ><font style="color:#FBB448;font-family:华文新魏;font-size:20px;">商家：${businessById.business_name} &nbsp;销量${businessById.business_bill}</font></p>
	</div>
	<div id="layer18">
		<p style="color:#FBB448 ">商家公告：</p>${businessById.announcement}
		<p style="color:#FBB448 ">起送价：</p>${businessById.startPrice}
		<input type="hidden" value="${businessById.startPrice}" id="startPrice"/>
	</div>
</body>
</html>