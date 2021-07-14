<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page language="java" import="java.io.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
	 <%
	String name = request.getParameter("filetxt");
    String path = application.getRealPath("file/");
    out.println("<p>文件夹绝对路径:" + path + name + "</p><br/>");
   	File txt = new File(path, name);
  	FileReader fr = new FileReader(txt);  //字符输入流
	BufferedReader br = new BufferedReader(fr);  //使文件可按行读取并具有缓冲功能
	StringBuffer strB = new StringBuffer();   //strB用来存储jsp.txt文件里的内容
	String str = br.readLine();
	while(str!=null){
		strB.append(str).append("<br>");   //将读取的内容放入strB
		str = br.readLine();
	}
	out.println(strB);
	br.close();    //关闭输入流 


    %>
</body>
</html>