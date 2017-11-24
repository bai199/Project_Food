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
	<table>
		<tr>
		<td>like_id</td>
		<td>user_id</td>
		<td>cate_id</td>
		<td>cate_class1</td>
		<td>cate_make</td>
		<td>cate_hot</td>
		<td>cate_taste</td>
		<td>cate_area</td>
		<td>cate_makeclass</td>
		<td>like_other</td>
		</tr>
		
	<c:forEach var="li" items="${likecate}">
		<tr>
		<td>${li.like_id}</td>	
		<td>${li.user_id}</td>	
		<td>${li.cate_id}</td>	
		<td>${li.cate_class1}</td>	
		<td>${li.cate_make}</td>	
		<td>${li.cate_hot}</td>	
		<td>${li.cate_taste}</td>	
		<td>${li.cate_area}</td>	
		<td>${li.cate_makeclass}</td>	
		<td>${li.like_other}</td>	
		</tr>
	</c:forEach>
	</table>
</body>
</html>