<%@page import="myexception.ExcepFirst"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" isErrorPage="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
<%String ex=exception.getClass().getName();
if(ex.equals("java.lang.EXception")){}
else if(ex.equals("myexception.ExcepFirst")){ System.out.println("hello");} %>
</body>
</html>