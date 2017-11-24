<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
			width:1600px;
			top: 600px;
			left:-1px;
			
		}
		a{
		text-decoration: none;
		}

a{text-decoration: none;}
#div1{
background-image: url("images/美食.jpg");
filter:alpha(opacity=70);
}


.tb1{
border-style: none;
}
.tb2{
margin-left: 700px;
text-align:left;
background-color:#FBB448;
height: 700px;
width: 500px; 
}
</style>
</head>
<body>
<div id="layer1"></div>
	<!--图片图层  -->
	<div id="layer2">
		<img alt="" src="images/img_bg_1.jpg" width="100%" >
		<img alt="" src="images/img_bg_3.jpg" width="100%" >
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
		<a href="#" style="color:#CAC1BB;font-family:华文新魏">今日美食&nbsp; &nbsp;</a>
		<a href="#" style="color:#CAC1BB;font-family:华文新魏">网上订餐 &nbsp; &nbsp;</a>
		<a href="#" style="color:#CAC1BB;font-family:华文新魏">健康饮食&nbsp; &nbsp;</a>
		<a href="#" style="color:#FBB448;font-family:华文新魏">美食论</a>
		
	</div>
	<!-- 软件名-->
	<div id="layer7">
		<font style="color:#FBB448;font-family:华文行楷;font-size:30px;">今日美食</font>
	</div>
	<!-- 页面主题语 -->
	<div id="layer8">
	<font style="color:#FFFFF9;font-family:华文行楷;font-size:80px;">Say&nbsp;hello！</font><br><br>
		<font style="color:#FBB448;font-family:华文行楷;font-size:30px;">民以食为天！！！</font>
		
	</div>
	<!-- 中间留白地方文本 -->
<div id="layer9">
		<form action="addNames.action" method="post">
			<table class="tb2">
				<tr><td>&nbsp;</td></tr><tr><td>&nbsp;</td></tr>
				<tr>
					<td width="100px">&nbsp;</td><td width="300px">用户名：<input name="user_name"/></td>
				</tr>
				<tr>
					<td width="100px">&nbsp;</td><td width="300px">密&nbsp;&nbsp;&nbsp;&nbsp;码：<input name="user_pass" type="password"/><br>（6~12个字符）</td>
				</tr>
				<tr>
					<td width="100px">&nbsp;</td><td width="300px">邮&nbsp;&nbsp;&nbsp;&nbsp;箱：<input name="user_email"/></td>
				</tr>
				<tr>
					<td width="100px">&nbsp;</td><td width="300px">电&nbsp;&nbsp;&nbsp;&nbsp;话：<input name="user_tel"/></td>
				</tr>
				<tr>
					<td width="100px">&nbsp;</td><td width="300px">性&nbsp;&nbsp;&nbsp;&nbsp;别：<input type="radio" name="user_sex" value="男"/>男<input type="radio" name="user_sex" value="女"/>女</td>
				</tr>
				<tr>
					<td width="100px">&nbsp;</td><td width="300px">年&nbsp;&nbsp;&nbsp;&nbsp;龄：<input name="user_age"/></td>
				</tr>
				<tr>
					<td width="100px">&nbsp;</td><td width="300px">出生日期：<input name="user_birthday" placeholder="年-月-日"/></td>
				</tr>
				<tr>
					<td width="100px">&nbsp;</td><td width="300px">头&nbsp;&nbsp;&nbsp;&nbsp;像：</td>
				</tr>
				<tr>
					<td colspan="2" align="center"><input type="submit" value="提交" /></td>
				</tr>
				<tr><td>&nbsp;</td></tr>
				<tr><td>&nbsp;</td></tr>
			</table>
		</form>
</div>

</body>
</html>