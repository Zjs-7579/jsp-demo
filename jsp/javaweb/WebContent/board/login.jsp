<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<style type="text/css">
	label{
		display: inline-block;
		width: 70px;
		text-align: right;
	}
	.btn{
		margin-left: 125px;
	}
</style>
</head>
<body>
	<fieldset>
		<legend>登录</legend>
		<form action="examine.jsp" method="post">
			<label for="user">用户名：</label>
			<input type="text" name="username" id="user"><br><br>
			<label for="psw">密码：</label>
			<input type="password" name="password" id="psw"><br><br>
			<input type="submit" value="提交" class="btn">
		</form>	
	</fieldset>
</body>
</html>