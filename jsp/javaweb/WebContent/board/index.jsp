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
		width: 130px;
		text-align: right;
	}
	.btn{
		margin-left: 155px;
	}
</style>
</head>
<body>
	<fieldset>
		<legend>留言板</legend>
		<form action="submit.jsp" method="post">
			<label for="user">你的姓名：</label>
			<input type="text" name="name" id="user"><br><br>
			<label for="text">你的留言：</label>
			<textarea rows="5" cols="30" id="text" name="content"></textarea><br><br>
			<input type="submit" value="提交" class="btn">
		</form>
		<a href="leave.jsp"">查看留言</a>
	</fieldset>
</body>
</html>
