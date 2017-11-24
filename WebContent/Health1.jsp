<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title> 
<script type="text/javascript" src="js/jquery-1.8.3.js"></script>
<script type="text/javascript">
		
		//页面加载时跳转页面；
		$(function(){
		 	var a= $("#11").val();
			if(a==null||a==""){
			 window.location.href="SearchAllClass.action";
			} 
		})
		
		//文本框ajax模糊查询；
		function Search(){
				var dd = $("#health_name").val();
				//window.location.href="test.jsp";
				if(dd==""||dd==null){
					clearContent();
					return;
				} 
				$.ajax({
					type:"post",
					url:"LikeSearch.action",
					data:{"health_name":dd},
					dataType:"json",
					success:function(data){
						$("#table").html("");
							$(data).each(function(index,entity){
								var tr="<tr><td><a href='Classify.action?health_id="+entity.health_id+"' style='list-style:none;text-decoration:none;'>"+entity.health_name+"</a></td></tr>"
									$("#table").append(tr);	
							})
					}
				})	
		}
		/*$(function(){
			var mr=$("#meirong").val();
			var bx=$("#buxue").val();
			var bs=$("#bushen").val();
			$.ajax({
				type:"post",
				url:"searchAllReply.action",
				data:{"healtclass":},
				dataType:"json",
				success:function(data){
					
				}
			})
		})*/
		function clearContent() {
			$("#table").empty();
		} 
		
</script>

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
			height:2270px;
			width:100%;
			top: 0px;
			left: 0px;
			opacity:0.45;
			filter:alpha(opacity=30);
			background-color:black; 
		}
		#layer4{
		position: absolute;
			z-index:5;
			height:1300px;
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
			height:80px;
			width:1000px;
			top: 600px;
			left: 600px;
			/* background-color: black;	 */
			}
		a{
		text-decoration: none;
		font-size: 18px; 
		color: black;
		}
		#layer10{
		 position: absolute;
		 	z-index: 10;
		 	height:80px;
			width:1000px;
			top: 630px;
			left: 800px;
		}
		#layer11{
			position: absolute;
		 	z-index: 11;
		 	height:80px;
			width:1600px;
			top: 1240px;
			left: 300px;
		}
			#layer13{
			position: absolute;
		 	z-index: 13;
		 	height:80px;
			width:1600px;
			top: 1180px;
			left: 300px;
		}
			#layer12{
			position: absolute;
		 	z-index: 12;
		 	height:80px;
			width:1600px;
			top: 900px;
			left: 300px;
		}
		.gg{
			float: left;
		}
		td{
			height:1px;
			width: 270px;
		}
	</style>
</head>
<body>
	
	<input id="11" type="hidden" value="${lis}">
	<!-- 最底层图层 -->
	<div id="layer1"></div>
	<!--图片图层  -->
	<div id="layer2">
		<img alt="" src="images/无标题.jpg" width="100%" >
		 <br><br><br><br><br><br><br> <br><br><br><br><br><br><br> <br><br><br><br><br><br><br>
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
		<a href="OnlineMeal.jsp" style="color:#CAC1BB;font-family:华文新魏;font-size:18px;">网上订餐 &nbsp; &nbsp;</a>
		<a href="Health1.jsp" style="color:#FBB448;font-family:华文新魏;font-size:18px;">健康饮食&nbsp; &nbsp;</a>
		<a href="TalkFood1.jsp" style="color:#CAC1BB;font-family:华文新魏;font-size:18px;">美食论</a>
	</div>
	<!-- 软件名-->
	<div id="layer7">
		<font style="color:#FBB448;font-family:华文行楷;font-size:30px;">健康饮食</font>
	</div>
	<!-- 页面主题语 -->
	<div id="layer8">
		<font style="color:#FBB448;font-family:华文行楷asd
		
		
		;font-size:25px;">勾勒出您的健康图谱</font><br><br>
		<font style="color:#FFFFF9;font-family:华文行楷;font-size:80px;">So&nbsp;Health！</font>
	</div>
	<!-- 中间留白地方文本 -->
	
	<!--引用语句  -->
	<div id="layer10" >
	<h3>合理的饮食，是健康的第一要素</h3>
	</div>
	<!--图片上方的标语  -->
	<div id="layer13">
		<font style="color:#FBB448;font-family:华文行楷;font-size:30px;" >
			饮食小常识
		</font>
		</div>
	<div id="layer11">
		<div class="gg">
		<table>
					
					<tr>
					<td >
					<a href="error.jsp"><img alt="" src="images/1921dd2877270c8982424a9e51bc98d8_150x150.jpg"></a>
					</td>
					</tr>
					<tr>
					<td >
					<b>保质期45天还是巴士奶吗？</b>
					</td>
				</tr>
		</table>
		</div>
				<div class="gg">
		<table>
					<tr>
					<td >
					<a href="error.jsp"><img alt="" src="images/2963f6c85b0bfff744f59b31073d944d_150x150.jpg"></a>
					</td>
					</tr>
					<tr>
					<td >
					<b>放调味料的最佳时间你可知道?</b>
					</td>
				</tr>
		</table>
		</div>
					<div class="gg">
		<table>
					<tr>
					<td >
					<a href="error.jsp"><img alt="" src="images/5d41ff055c0547d18f8723f5b65279fd_150x150.jpg"></a>
					</td>
					</tr>
					<tr>
					<td>
					<b>辟谣：榴莲牛奶同吃不会猝死</b>
					</td>
				</tr>
		</table>
		</div>
						<div class="gg">
		<table>
					<tr>
					<td>
					<a href="error.jsp"><img alt="" src="images/69088c7e30cd2fa3b2fbce2e15f5c54b_150x150.jpg"></a>
					</td>
					</tr>
					<tr>
					<td >
					<b>吃什么可以美白牙齿</b>
					</td>
				</tr>
		</table>
		</div>
		
								<div class="gg">
		<table>
					<tr>
					<td >
					<a href="error.jsp"><img alt="" src="images/70e8fbf7e4e9f18b9bc6d181b84722d9_150x150.jpg"></a>
					</td>
					</tr>
					<tr>
					<td >
					<b>吃火锅亚硝酸盐中毒?谣言!</b>
					</td>
				</tr>
		</table>
		</div>
									<div class="gg">
		<table>
					<tr>
					<td>
					<a href="error.jsp"><img alt="" src="images/9d7c72090cc8704a86db4f428cc6a157_150x150.jpg"></a>
					</td>
					</tr>
					<tr>
					<td >
					<b>3个步骤做出美味鱼香肉丝</b>
					</td>
				</tr>
		</table>
		</div>
										<div class="gg">
		<table>
					<tr>
					<td>
					<a href="error.jsp"><img alt="" src="images/ae37c3542dcfbeae9f4c7fc711db7550_150x150.jpg"></a>
					</td>
					</tr>
					<tr>
					<td >
					<b>你被“食品安全新闻”坑过吗？</b>
					</td>
				</tr>
		</table>
		</div>
										<div class="gg">
		<table>
					<tr>
					<td>
					<a href="error.jsp"><img alt="" src="images/b5d84c52df4220a0b6a16036df463e8f_150x150.jpg"></a>
					</td>
					</tr>
					<tr>
					<td >
					<b>自助餐要这样吃才划算</b>
					</td>
				</tr>
		</table>
		</div>
										<div class="gg">
		<table>
					<tr>
					<td>
					<a href="error.jsp"><img alt="" src="images/d0c489cdd9a4c7fa881bb46d5b5f716e_150x150.jpg"></a>
					</td>
					</tr>
					<tr>
					<td >
					<b>菜板种类多 教你日常消毒小窍门</b>
					</td>
				</tr>
		</table>
		</div>
										<div class="gg">
		<table>
					<tr>
					<td>
					<a href="error.jsp"><img alt="" src="images/ddfa0fb88f5550ac45c93918c59911e5_150x150.jpg"></a>
					</td>
					</tr>
					<tr>
					<td>
					<b>保温杯泡茶容易致癌？</b>
					</td>
				</tr>
		</table>
		</div>
	</div>
	
	<!-- 菜品分类，以及菜品名称  -->
	<div id="layer12">
			<form action="LikeSearch.action">
			<input id="health_name" name="health_name" type="text" placeholder="关键字搜索菜名" onkeyup="Search()">
			<!-- <input type="button" value="搜索" id="seek"> -->
			<input type="hidden" name="meirong" id="meirong" value="${list1}">
			<input type="hidden" name="bushen" id="bushen" value="${list2}">
			<input type="hidden" name="buxue" id="buxue" value="${list3}">
			</form>
			<table id="table">
			</table>
		<table width="900px">
	
			<tr>
		<td width="60px"><font style="color:#FBB448;font-family:华文行楷;font-size:30px;" >美容瘦身</font></td>
			</tr>
		
			
			<tr id="tr1">
					 <c:forEach items="${list1}" var="mr">
							<td bgcolor="#FBB448"><a href="Classify.action?health_id=${mr.HEALTH_ID}">${mr.HEALTH_NAME}</a></td>
					</c:forEach>
					<td>
						<a onclick="uppage()" style="cursor: pointer;">上一页</a>
					</td>
					<td>
						<a onclick="downpage()" style="cursor: pointer;">下一页</a>
					</td>
			</tr> 

			<tr>
	<td width="60px"><font style="color:#FBB448;font-family:华文行楷;font-size:30px;" >补肾</font></td>
			</tr>
				<tr id="tr2">
			<c:forEach items="${list2}" var="mr">
					<td bgcolor="#FBB448"><a href="Classify.action?health_id=${mr.HEALTH_ID}">${mr.HEALTH_NAME}</a></td>
			</c:forEach>
			<td>
					<a onclick="uppage()" style="cursor: pointer;">上一页</a>
					</td>
					<td>
						<a onclick="downpage1()" style="cursor: pointer;">下一页</a>
					</td>
			</tr>
			<tr >
				<td width="60px">	<font style="color:#FBB448;font-family:华文行楷;font-size:30px;" >补血</font></td>
				</tr>
				<tr id="tr3">
				<c:forEach items="${list3}" var="mr">
					<td bgcolor="#FBB448"><a href="Classify.action?health_id=${mr.HEALTH_ID}">${mr.HEALTH_NAME}</a></td>
				</c:forEach>
				<td><a onclick="uppage()" style="cursor: pointer;">上一页</a></td>
				<td><a onclick="downpage2()" style="cursor: pointer;">下一页</a></td>
				</tr> 
		</table>

	</div>
	
	
</body>
<script type="text/javascript">
var curPage = '${pageNumber}';
var health_id = '${mr.health_id}';


function downpage(){
	var str="<td bgcolor='#FBB448'><a href='Classify.action?health_id=10'>芭乐炒蛋皮</a><td>";
	str+="<td><a href='http://localhost:8888/A-FoodProject-3/SearchAllClass.action' style='cursor: pointer;'>上一页</a></td>"
	$("#tr1").html(str);
}
function downpage1(){
	var str="<td bgcolor='#FBB448'><a href='Classify.action?health_id=6'>辣炒肥肠</a><td>";
	str+="<td><a href='http://localhost:8888/A-FoodProject-3/SearchAllClass.action' style='cursor: pointer;'>上一页</a></td>"
	$("#tr2").html(str);
}
function downpage2(){
	var str="<td bgcolor='#FBB448'><a href='Classify.action?health_id=8'>鬼马生鱼片</a><td>";
	str+="<td><a href='http://localhost:8888/A-FoodProject-3/SearchAllClass.action' style='cursor: pointer;'>上一页</a></td>"
	$("#tr3").html(str);
}
</script>
</html>
