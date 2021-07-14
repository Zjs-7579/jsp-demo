<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String user = request.getParameter("username");
		String pwd = request.getParameter("password");
		try{
			if(user.trim().equals("")||pwd.trim().equals("")){
				response.sendRedirect("login.jsp");
			}
			if(user.trim().equals("123")&&pwd.trim().equals("123")){
				response.sendRedirect("index.jsp");
			}else{
				response.sendRedirect("login.jsp");
			}
		}catch(NullPointerException e){
			response.sendRedirect("login.jsp");
		}
	%>
</body>
</html>