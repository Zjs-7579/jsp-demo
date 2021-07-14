<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@page import="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>

	<%
		List<String> msge = null;
		Object data = application.getAttribute("box");
		if(data == null){
			out.print("没有留言，请添加！！！！");
		}else{
			msge = (List<String>)data;
			out.print("<table width='100%' border='1' cellspacing='0' cellpadding='0'>");
			out.print("<tr>");
			out.print("<th>姓名</th>");
			out.print("<th>内容</th>");
			out.print("<th>时间</th>");
			out.print("</tr>");
			for(int i=msge.size()-1;i>=0;i--){
	             String strLi = msge.get(i);
	             String[] parts = strLi.split("#");
	             out.print("<tr align='center'>");
	             for(int j=0;j<parts.length;j++){
	            	 out.print("<td>"+parts[j]+"</td>");
	             }
	             out.print("</tr>");
	        }
			out.print("</table>");
		}
	%>
	<br>
	<a href="index.jsp">继续留言</a>
</body>
</html>
