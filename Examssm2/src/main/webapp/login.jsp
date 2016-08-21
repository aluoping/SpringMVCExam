<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>login</title>
<style type="text/css">
body {
	background-image: url("image/pt1.jpg");
	background-repeat: no-repeat;
	background-size: 100%;
}

#login {
	position: absolute;
	width: 500px;
	height: 260px;
	top: 50%;
	left: 50%;
	margin-left: -250px;
	height: -130px;
	z-index: 1000;
	background-color: cyan;
}
#jiesao{
	

}
</style>
</head>
<body>
	<div>
		<div id="ghxm">10927-罗平</div>
		<div id="login" align="center">
			<div id="jiesao">电影租赁管理系统</div>
			<div>
				<form action="login.do" method="post">
					用户名：<input type="text" name="first_name" /> <br />密 码： <input
						type="password" name="password"> <br /> <input
						type="submit" value="登录">
				</form>
			</div>
		</div>
	</div>
</body>
</html>