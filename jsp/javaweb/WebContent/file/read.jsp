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

<ul style="font-size:16px;">
    <%
    String path = application.getRealPath("file/");
    out.println("<p>文件夹绝对路径:" + path + "</p><br/>");
   	File f = new File(path);
    File[] files = f.listFiles();
     if(files.length == 0){
        out.println("<p>啥也没有</p><br/>");
        return;
    } 
    for(int i=0; i<files.length; i++){
         if (files[i].isFile()){
            String fname = files[i].getName();
            int last_index = fname.lastIndexOf(".");
            if(last_index == -1){
                continue;
            }
            String suffix = fname.substring(last_index);
            if(suffix.equals(".txt")){
                out.print("<li>");
                out.print("<a href='./" + fname + "'>");
                out.println(fname);
                out.print("</a>");
                out.print("</li>");
            }
        }
    }
    %>
    
   
  </ul>

<form action="inspect.jsp" method="post">
   
      	获取文件名称:<input type="text" name="filetxt"/><br/>
		<input type="submit" value="获取"/>
   </form>

</body>
</html>