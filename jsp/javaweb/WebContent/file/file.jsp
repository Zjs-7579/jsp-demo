<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page language="java" import="java.util.*"%>
<%@page import="java.io.File"%>
<%@page import="java.io.PrintStream"%>
<%@page import="java.io.FileOutputStream"%>
<%@page import="java.io.FileInputStream"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
	<%
	request.setCharacterEncoding("utf-8");
String name = request.getParameter("filename");
String content = request.getParameter("filecontent");

String filename = this.getServletContext().getRealPath("/") + "file" + File.separator + name;

      File file = new File(filename);

if(!file.getParentFile().exists()){
          file.getParentFile().mkdir();//如果父文件夹不存在则创建文件夹
      }

/************************存文件  start ************************/
      PrintStream ps = null;
      ps = new PrintStream(new FileOutputStream(file));
      ps.println(content);
      ps.close();
/************************存文件  end   ************************/
%>

<%
/************************读文件  start ************************/
      Scanner scan = new Scanner(new FileInputStream(file));
      scan.useDelimiter("\n");
      StringBuffer buffer = new StringBuffer();
	  while(scan.hasNext()){
          buffer.append(scan.next()).append("<br/>");
      }
      scan.close();
/************************读文件  end   ************************/
%>



存储的文件地址是:<%= file %>
<br>
存储的文件内容是:<%=buffer %>
</body>
</html>