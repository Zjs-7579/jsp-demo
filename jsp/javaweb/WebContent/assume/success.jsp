<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="index.css">
</head>
<body>
	<div>
		<%int count=((Integer)session.getAttribute("count")).intValue();
		int d=((Integer)session.getAttribute("save")).intValue();
		%>
		<p>恭喜您，猜对了</p><br>
		你共猜了<%=count %>次,这个数字就是<%=d %><br>
		<a href="demo.jsp">回到首页</a>
	</div>	
</body>
</html>