<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%String par=request.getParameter("par");
par=URLEncoder.encode(par);
System.out.println("par2="+par);%>
<%response.sendRedirect("http://www.baidu.com/s?wd="+par);%>
</body>
</html>