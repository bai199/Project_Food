<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
	<style type="text/css">
		ul,li{
	     display: block;
	     list-style-type: none;
		}
		ul,a{
		font-family:方正姚体;
		color: #808080;
		font-size: 18px;
				}
		
	</style>
	<link href="css/mainpage.css" type="text/css" rel="stylesheet">
	<script type="text/javascript" src="js/jquery-1.8.3.js"></script>
	<script type="text/javascript">
		$(function(){
			$(".foot1").hide();
			$(".foot2").hide();
			$(".foot3").hide();
			$(".foot4").hide();
			$(".foot5").hide();
			$(".nav1").mouseover(function(){
				$(".foot1").show();
			});
			$(".nav2,.nav3,.nav4.nav5").mouseover(function(){
				$(".foot1").hide();
			});
			
			$(".nav2").mouseover(function(){
				$(".foot2").show();
			});
			$(".nav1,.nav3,.nav4.nav5").mouseover(function(){
				$(".foot2").hide();
			});
			
			$(".nav3").mouseover(function(){
				$(".foot3").show();
			});
			$(".nav1,.nav2,.nav4,.nav5").mouseover(function(){
				$(".foot3").hide();
			});
			
			$(".nav4").mouseover(function(){
				$(".foot4").show();
			});
			$(".nav1,.nav2,.nav3,.nav5").mouseover(function(){
				$(".foot4").hide();
			});
			
			$(".nav5").mouseover(function(){
				$(".foot5").show();
			});
			$(".nav1,.nav2,.nav3,.nav4").mouseover(function(){
				$(".foot5").hide();
			});
		})
	</script>
</head>
<body>
	<!-- 登录 -->
	<div id="layer9">
	<form action="searchByUserIdlikecate.action?user_id=${userByTel.user_id}">
		<input type="button" value="登录" style="width:90px;height:35px;background-color: transparent; border: 0;color:#808080;"/>
	</form>
	</div>
	
	<!-- 最底层图层 -->
	<div id="layer1"></div>
	<!--图片图层  -->
	<div id="layer2">
		<img alt="" src="images/4.jpg" width="100%" >
		<img alt="" src="images/4.jpg" width="100%" height="695px">
		<img alt="" src="images/4.jpg" width="100%" >
	</div>
	<!--透明度图层  -->
	<div id="layer3"></div>
	<!--透明度图层2  -->
	<div id="layers3"></div>
	<!--中间留白图层  -->
	<div id="layer4">
	<br><br>
	<div class="daohang" >
	<ul style="background:#FFFFF;">
	<br>
		<li style="list-style-type: none"><a href="#">美食导航</a></li><br>
		<hr width="90%" size="0.5px" color="#808080"/><br>
		<li class="nav1"><a href="#">热菜/凉菜分类</a></li><br>
		<hr width="90%" size="0.5px" color="#808080"/><br>
		<li>
			<ul class="foot1">
				<li><a href="searchByDh.action?cate_hot=热">热菜</a></li><br>
				<li><a href="searchByDh.action?cate_hot=凉">凉菜</a></li><br>
			</ul>
		</li>
		<li class="nav2"><a href="#">美食地域分类</a></li><br>
		<hr width="90%" size="0.5px" color="#808080"/><br>
		<li>
			<ul class="foot2">
				<li><a href="searchByDh.action?cate_area=川菜">川菜</a></li><br>
				<li><a href="searchByDh.action?cate_area=粤菜">粤菜</a></li><br>
				<li><a href="searchByDh.action?cate_area=鲁菜">鲁菜</a></li><br>
				<li><a href="searchByDh.action?cate_area=云南菜">云南菜</a></li><br>
				<li><a href="searchByDh.action?cate_area=北京菜">北京菜</a></li><br>
				<li><a href="searchByDh.action?cate_area=东北菜">东北菜</a></li><br>
				<li><a href="searchByDh.action?cate_area=上海菜">上海菜</a></li><br>
				<li><a href="searchByDh.action?cate_area=新疆菜">新疆菜</a></li><br>
				<li><a href="searchByDh.action?cate_area=西北菜">西北菜</a></li><br>
				<li><a href="searchByDh.action?cate_area=私家菜">私家菜</a></li><br>
				<li><a href="searchByDh.action?cate_area=台湾菜系">台湾菜系</a></li><br>
				<li><a href="searchByDh.action?cate_area=香港菜系">香港菜系</a></li><br>
			</ul>
		</li>
		<li class="nav3"><a href="#">美食做法分类</a></li><br>
		<hr width="90%" size="0.5px" color="#808080"/><br>
		<li>
			<ul class="foot3">
				<li><a href="searchByDh.action?cate_makeClass=煎">煎</a></li><br>
				<li><a href="searchByDh.action?cate_makeClass=炒">炒</a></li><br>
				<li><a href="searchByDh.action?cate_makeClass=烹">烹</a></li><br>
				<li><a href="searchByDh.action?cate_makeClass=炸">炸</a></li><br>
			</ul>
		</li>
		<li class="nav4"><a href="#">美食口味分类</a></li><br>
		<hr width="90%" size="0.5px" color="#808080"/><br>
		<li>
			<ul class="foot4">
				<li><a href="searchByDh.action?cate_taste=酸">酸</a></li><br>
				<li><a href="searchByDh.action?cate_taste=甜">甜</a></li><br>
				<li><a href="searchByDh.action?cate_taste=苦">苦</a></li><br>
				<li><a href="searchByDh.action?cate_taste=辣">辣</a></li><br>
			</ul>
			</li>
		<li class="nav5"><a href="#">其他分类</a></li><br>
		<li>
			<ul class="foot5">
				<li><a href="searchByDh.action?cate_class1=主食&cate_class2=主食&cate_class3=主食">主食</a></li><br>
				<li><a href="searchByDh.action?cate_class1=小吃&cate_class2=小吃&cate_class3=主食">小吃</a></li><br>
				<li><a href="searchByDh.action?cate_class1=甜品点心&cate_class2=甜品点心&cate_class3=甜品点心">甜品点心</a></li><br>
			</ul>
		</li>
		
	<!-- <form method="get">
			<input type="text" name="search" placeholder="搜索美食" /><br>
			<input type="submit" value="搜索">
			</form> -->
	</ul>
</div>


	<br>
	<!-- 提交时跳到做法页面 -->
	
	<p align="center"><font style="color:#FBB448;font-family:华文行楷;font-size:60px;">Popular Dishes</font></p>
	<p align="center"><font style="color:#808080;font-family:方正姚体;font-size:20px;">Dignissimos asperiores vitae velit veniam totam fuga molestias accusamus alias</font></p>
	<p align="center"><font style="color:#808080;font-family:方正姚体;font-size:20px;">autem provident. Odit ab aliquam dolor eius.</font></p>
	<!-- 每日推荐图片 -->
	<div id="layer10">
	<!-- 1.获取用户ID推荐美食 -->	
	<!-- 2.获取美食ID为了给下一个页面传值 -->
	<table>
		<tr>
			<c:forEach items="${catetype}" var="ct" varStatus="status">
			<td>
			<a href="SearchByIdcate.action?cate_id=${ct.cate_id}"><img src="images/${ct.cate_path}" height="75%"></a>
			<td width="150px" align="center"><font style="color:#808080;font-family:方正姚体;font-size:22px;">${ct.cate_name}</font></td>
			</td>
			<!-- 三个一转行 -->
			<c:if test="${status.count%3==0}">
			</tr>
			<tr>
			</c:if>
	</c:forEach>
		</tr>
	</table><br>
	
	<a href="searchByUserIdlikecate.action?pageNumber=1&user_id=${userByTel.user_id}">首页</a>
	<a href="searchByUserIdlikecate.action?pageNumber=${pageNumber-1}&user_id=${userByTel.user_id}">上翻</a>
	<a href="searchByUserIdlikecate.action?pageNumber=${pageNumber+1}&user_id=${userByTel.user_id}">下翻</a>
	<a href="searchByUserIdlikecate.action?pageNumber=${count}&user_id=${userByTel.user_id}">尾页</a>
	</div>
	<!-- 留白底部文字 -->
	<div id="layer11" align="center">
	<font style="font-size:30px;color:#808080;">“ Their high quality of service makes me</font><br>
	<font style="font-size:30px;color:#808080;">back over and over again!”</font><br><br>
	<font style="font-size:15px;color:#808080;">— John Doe, CEO of XYZ Co.</font>
	</div>
	</div>
	<!-- 顶部导航栏<hr> -->
	<div id="layer5">
		<hr style=" height:2px;border-top:2px;"/>
	</div>
	<!-- 顶部导航文字 -->
	<div id="layer6">
		<a href="TodayCate.jsp" style="color:#FBB448;font-family:华文新魏;font-size:18px;">今日美食&nbsp; &nbsp;</a>
		<a href="OnlineMeal.jsp" style="color:#CAC1BB;font-family:华文新魏;font-size:18px;">网上订餐 &nbsp; &nbsp;</a>
		<a href="Health1.jsp" style="color:#CAC1BB;font-family:华文新魏;font-size:18px;">健康饮食&nbsp; &nbsp;</a>
		<a href="TalkFood1.jsp" style="color:#CAC1BB;font-family:华文新魏;font-size:18px;">美食论</a>
	</div>
	<!-- 软件名-->
	<div id="layer7">
		<font style="color:#FBB448;font-family:方正姚体;font-size:23px;"><b>今日美食</b><span style="color:#FFFFF9">.</span></font>
	</div>
	<!-- 页面主题语 -->
	<div id="layer8">
		<font style="color:#FFFFF9;font-family:华文行楷;font-size:80px;">Say&nbsp;hello！</font><br><br>
		<font style="color:#FBB448;font-family:方正姚体;font-size:25px;">世间最优雅的举动莫过于</font>
		<font style="color:#FBB448;font-family:方正姚体;font-size:25px;">剥好的虾、挑完刺的鱼、和切成块的牛排</font>
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
