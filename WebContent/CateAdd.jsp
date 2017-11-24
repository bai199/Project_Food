<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="js/jquery-1.8.3.js"></script>
<script type="text/javascript">
	/* 页面加载时候走START方法，获取美食分类123 */
	$(function(){
			$.ajax({
				type:"post",
				url:"seachAllcateclassAjax.action",
				dataType:"json",
				/* 遍历后台传的值，data是参数 */
				success:function(data){//data：集合
					$(data).each(function(index,entity){
						var option="<option value='"+entity.cateclass_id+"'>"+entity.cateclass_name+"</option>";
							var class1=$("#opt1").val();
						$("#opt1").append(option);
						$("#opt2").append(option);
						$("#opt3").append(option);
					})
				}
			})
	})
</script>
<script type="text/javascript">
		//全局变量
		var index1; //下拉列表1的索引
		var index2;	//下拉列表2的索引
		var index3;	//下拉列表3的索引
		var blur1=0;
		var blur2=0;
		var blur3=0
		function show(){
			//获取选中的索引
			 index1=document.getElementById("opt1").selectedIndex;
			 index2=document.getElementById("opt2").selectedIndex;
			 index3=document.getElementById("opt3").selectedIndex;
			// 设置选中的相同索引的下拉框不能选中 
			// 创建三个变量代表三个下拉框
			var aa=document.getElementById("opt1");
			var bb=document.getElementById("opt2");
			var cc=document.getElementById("opt3");
			//下拉列表1中的索引在2、3下拉列表中禁用。    disabled（禁用）
				aa.options[index2].disabled=true;
				aa.options[index3].disabled=true;
			//比较下拉列表内容，如果不相同就就关闭禁用
				if(blur1!=index1){
					bb.options[blur1].disabled=false;
				}
				if(blur3!=index3){
					bb.options[blur3].disabled=false;
				}
			//下拉列表2中的索引在1、3下拉列表中禁用。
					bb.options[index1].disabled=true;
					bb.options[index3].disabled=true;
					
				if(blur1!=index1){
					cc.options[blur1].disabled=false;
				}
				if(blur2!=index2){
					cc.options[blur2].disabled=false;
				}
			//下拉列表3中的索引在1、2下拉列表中禁用。
				cc.options[index1].disabled=true;
				cc.options[index2].disabled=true;
				blur1=index1;
				blur2=index2;
				blur3=index3;
		} 
		
</script>
</head>
<body>
	<h3>增加美食</h3><br>
	<form action="addcate.action" method="post">
	美食ID:<input name="cate_id"/><br><br>
	美食名称:<input name="cate_name"/><br><br>
	
	美食主分类1:
	<select name="cate_class1" id="opt1" onblur="show()"><!-- onblur失去焦点事件 -->
		<option value=""> 请分类</option>
	</select><br/><br>
	美食主分类2:
	<select name="cate_class2" id="opt2" onblur="show()">
		<option value=""> 请分类</option>
	</select><br/><br>
	美食主分类3:
	<select name="cate_class3" id="opt3" onblur="show()" >
		<option value=""> 请分类</option>
	</select><br/><br>
	
	美食做法:<br>
	<textarea rows="9" cols="100" name="cate_make"></textarea><br><br>
	美食凉热分类：
	<input type="radio" value="冷" name="cate_hot"/>冷
	<input type="radio" value="热" name="cate_hot"/>热
	<br><br>
	
	美食味道分类：<br>
	<input type="checkbox" name="cate_taste" value="酸"/>酸
	<input type="checkbox" name="cate_taste" value="甜"/>甜
	<input type="checkbox" name="cate_taste" value="苦"/>苦
	<input type="checkbox" name="cate_taste" value="辣"/>辣
	<input type="checkbox" name="cate_taste" value="咸"/>咸
	<input type="checkbox" name="cate_taste" value="正常"/>正常
	<br><br>
	美食地域分类：<br>
	<input type="checkbox" name="cate_area" value="川菜"/>川菜
	<input type="checkbox" name="cate_area" value="鲁菜"/>鲁菜
	<input type="checkbox" name="cate_area" value="粤菜"/>粤菜
	<input type="checkbox" name="cate_area" value="闽菜"/>闽菜
	<input type="checkbox" name="cate_area" value="苏菜"/>苏菜<br><br>
	<input type="checkbox" name="cate_area" value="浙菜"/>浙菜
	<input type="checkbox" name="cate_area" value="湘菜"/>湘菜
	<input type="checkbox" name="cate_area" value="豫菜"/>豫菜
	<input type="checkbox" name="cate_area" value="晋菜"/>晋菜
	<input type="checkbox" name="cate_area" value="云南菜"/>云南菜<br><br>
	<input type="checkbox" name="cate_area" value="北京菜"/>北京菜
	<input type="checkbox" name="cate_area" value="东北菜"/>东北菜
	<input type="checkbox" name="cate_area" value="西北菜"/>西北菜
	<input type="checkbox" name="cate_area" value="贵州菜"/>贵州菜
	<input type="checkbox" name="cate_area" value="上海菜"/>上海菜<br><br>
	<input type="checkbox" name="cate_area" value="新疆菜"/>新疆菜
	<input type="checkbox" name="cate_area" value="私家菜"/>私家菜
	<input type="checkbox" name="cate_area" value="台湾美食"/>台湾菜系
	<input type="checkbox" name="cate_area" value="香港美食"/>香港菜系
	<input type="checkbox" name="cate_area" value="中式菜系"/>中式菜系<br>
	<br><br>
	美食做法分类：<input type="checkbox" name="cate_makeClass" value="煎"/>煎
	<input type="checkbox" name="cate_makeClass" value="炒"/>炒
	<input type="checkbox" name="cate_makeClass" value="烹"/>烹
	<input type="checkbox" name="cate_makeClass" value="炸"/>炸
	<br><br>
	美食其他分类：<input name="cate_other"/><br><br>
	
	美食图片名：<input name="cate_path"/><br><br>
	
	美食材料：
	<textarea rows="9" cols="100" name="cate_burdening"></textarea><br><br>
	<input type="submit" value="ADD"/>
</form>	
</body>
</html>