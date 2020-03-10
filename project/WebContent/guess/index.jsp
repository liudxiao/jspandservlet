<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
<%int number=new java.util.Random().nextInt(1000); 
int count=0;
%>
<%System.out.println(number);
session.setAttribute("secret", number);
if(request.getAttribute("times")!=null){count=(int)request.getAttribute("times");
out.println(request.getAttribute("notok")+"<br>");
out.println("您猜了"+request.getAttribute("times")+"次！！");}
session.setAttribute("times",count);
%>
<form name="f1" method="post" action="back.jsp">
<input type="text" name="input"/>
<input type="submit" name="submit" value="猜一下"/>
</form>
<% %>
</body>
</html>