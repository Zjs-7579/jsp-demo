<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<link rel="stylesheet" href="index.css">
</head>
<body>
	<div>
		<p>随机分配一个1-100之间的数，请猜测！
		<%
			int number=(int)(Math.random()*100)+1;
			session.setAttribute("count", new Integer(0));
			session.setAttribute("save", new Integer(number));
		%>
		<form action="result.jsp"method="post" name="form">
		
		输入你的猜测:<input type="text" name="num">
		
		<input type="submit" name="submit">
		
		</form>	
	</div>
</body>
</html>