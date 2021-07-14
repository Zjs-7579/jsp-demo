<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<% String str=request.getParameter("num");//取在inputGuess.jsp中form中input type定义的名字
if(str.length()==0){
    response.sendRedirect("demo.jsp");
}
int guessNumber=-1;
try{
    guessNumber=Integer.parseInt(str);
    Integer integer=(Integer)session.getAttribute("save");
    int realNumber=integer.intValue();//intValue()是把integer对象类型变成int的基础数据类型
    if(guessNumber==realNumber){
        int n=((Integer)session.getAttribute("count")).intValue();
        n=n+1;
        session.setAttribute("count", new Integer(n));
        response.sendRedirect("success.jsp");
    }
    else if(guessNumber>realNumber){
        int n=((Integer)session.getAttribute("count")).intValue();
        n=n+1;
        session.setAttribute("count", new Integer(n));
        response.sendRedirect("big.jsp");
    }
    else {
        int n=((Integer)session.getAttribute("count")).intValue();
        n=n+1;
        session.setAttribute("count", new Integer(n));
        response.sendRedirect("small.jsp");
    }
}catch(Exception e){
    response.sendRedirect("demo.jsp");
}
%>
</body>
</html>