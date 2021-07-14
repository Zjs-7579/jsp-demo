<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
	<form action="file.jsp" method="post">
      	文件名称:<input type="text" name="filename"/><br/>
     	 文件内容:<textarea name="filecontent" cols="80" rows="10"></textarea><br/><br/>
	<input type="submit" value="保存"/>
	<input type="reset" value="重置"/>
</form>


<p>读取创建file目录的所有txt文件，并显示列表<a href="read.jsp">获取</a></p>




</body>
</html>