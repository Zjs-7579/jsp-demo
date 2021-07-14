<%@page import="java.text.SimpleDateFormat"%>
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
		String name = request.getParameter("name");
		String txt = request.getParameter("content");
		if(name == null || txt == null){
			response.sendRedirect("index.jsp");
		}
		if(name.trim().equals("")||txt.trim().equals("")){
			response.sendRedirect("index.jsp");
		}
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String sdate=df.format(new Date());//获取当前时间
		
		 String strLi=name+"#"+txt+"#"+sdate;
		
		List<String> msge = null;
		Object obj = application.getAttribute("box");
		if(obj == null){
			msge = new ArrayList<String>();
			msge.add(strLi);
			application.setAttribute("box", msge);
		}else{
			msge = (List<String>)obj;
			msge.add(strLi);
		}
        response.sendRedirect("leave.jsp");
	%>
	<%=strLi %>
</body>
</html>
