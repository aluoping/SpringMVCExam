<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
body {
	/* background-image: url("image/pt3.jpg"); */
	background-color: white;
	background-repeat: no-repeat;
	background-size: 100%;
	background-attachment: fixed; height : 1000px;
	width: 1000px;
	height: 1000px;
}
#top{
	background-color: red;
	height: 80px;
	font-size: x-large;
}
#top2{
	background-color: cyan;
}

</style>
</head>
<body>
	<div id="top">Customer管理</div>
	<div id="top2">Customer列表</div>
	<div>
		<form action="getAll.do"></form>
		<table>
			<tr>
				<td>customer_id</td>
				<td>store_id</td>
				<td>first_name</td>
				<td>last_name</td>
				<td>email_name</td>
				<td>address_id</td>
				<td>active</td>
				<td>create_date</td>
				<td>last_update</td>
			</tr>
			
			<c:forEach items="${list}" var="bean">
				<tr>
					<td>${bean.customer_id}</td>
					<td>${bean.store_id}</td>
					<td>${bean.first_name}</td>
					<td>${bean.last_name}</td>
					<td>${bean.email}</td>
					<td>${bean.address_id}</td>
					<td>${bean.active}</td>
					<td>${bean.create_date}</td>
					<td>${bean.last_update}</td>
				</tr>
			</c:forEach>
		</table>
	</div>
</body>
</html>