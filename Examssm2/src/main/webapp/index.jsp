<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
body {
	background-image: url("image/pt2.jpg");
	background-repeat: no-repeat;
	background-size: 100%;
}

#left{
	width: 100px;
	float: left;
}
#right{
	float: right;
	height: 1000px;
	width: 1000px;
	
}
#top{
	background-color: green;
	height: 100px;
}
#left2{
float: left;
}
#right2{
float: right;
}
</style>
</head>
<body>
<div id="top">
	<div id="left2">10927-罗平</div>
	<div id="right2">Admin: ${user}</div>	
	<a href="exit.do">系统退出</a>
</div>
	<div id="body">
		<div id="left"><a href="all.do" target="right">Customer管理</a></div>
		<div id="right">
			<iframe src="customer.jsp" style="height: 1000px;width: 1000px" name="right"></iframe>
		</div>
	</div>
</body>
</html>