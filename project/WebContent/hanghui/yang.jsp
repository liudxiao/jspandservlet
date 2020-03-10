<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" %>
    <%@page import="myexception.ExcepFirst" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>

<% 
int x=1;
if(x==1)
throw new ExcepFirst("hello");%>
</body>
</html>