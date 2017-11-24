<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table border="1px">
		<tr>
		<td>美食ID</td>
		<td>美食名称</td>	
		<td>美食主分类1</td>
		<td>美食主分类2</td>
		<td>美食主分类3</td>
		<td>美食做法</td>
		<td>美食热食/凉食分类</td>
		<td>美食味道分类（酸甜苦辣）</td>
		<td>美食地域分类（西北/川菜等）</td>
		<td>美食做法分类（煎炒烹炸）</td>
		<td>美食其他分类</td>
		<td>美食图片</td>
		<td>美食用料</td>	
		</tr>
		
	<c:forEach var="cli" items="${cateli}">
		<tr>
		<td>${cli.cate_id}</td>	
		<td>${cli.cate_name}</td>
		<td>${cli.cate_class1}</td>	
		<td>${cli.cate_class2}</td>	
		<td>${cli.cate_class3}</td>	
		<td>${cli.cate_make}</td>	
		<td>${cli.cate_hot}</td>	
		<td>${cli.cate_taste}</td>	
		<td>${cli.cate_area}</td>	
		<td>${cli.cate_makeClass}</td>	
		<td>${cli.cate_other}</td>	
		<td>${cli.cate_path}</td>	
		<td>${cli.cate_burdening}</td>	
		</tr>
	</c:forEach>
</body>
</html>