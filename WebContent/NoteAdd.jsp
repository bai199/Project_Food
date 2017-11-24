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
border-left-style: none;
border-right-style: none;
border-bottom-color: #B3EE3A;
border-top-color: 	#B3EE3A;

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
		<form action="addNote.action" method="post" style="background-image:url(''); width:1905px;height:700px;">
			<table class="tb2">
				<tr><td>&nbsp;</td></tr><tr><td>&nbsp;</td></tr>
				<tr>
					<td colspan="2"><input type="hidden" value="${userByTel.user_id}" name="user_id"></td>
				</tr>
				<tr>
					<td colspan="2"><font size="5px">标题：</font><input name="note_title" style="width:300px;height: 40px;background-color: #74bbf3;font-size: 30px;" /></td>
				</tr>
				<tr>
					<td colspan="2"><font size="5px">内容：</font><br><textarea rows="15" cols="48" name="note_body" style="background-color: #74bbf3;font-size: 20px;"></textarea></td>
				</tr>
				<tr>
					<td colspan="2"><input type="hidden" value="<%=request.getParameter("talkClass_id") %>" name="talkClass_id"/></td>
				</tr>
				<tr>
					<td colspan="2"><input type="hidden" value="0" name="trNumber"/></td>
				</tr>
				<tr>
					<td colspan="2" align="center"><input type="submit" value="提交" style="font-size: 20px;background-color: #74bbf3"/></td>
				</tr>
				<tr><td>&nbsp;</td></tr>
				<tr><td>&nbsp;</td></tr>
			</table>
		</form>
</div>

</body>
</html>