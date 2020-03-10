<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" errorPage="doError.jsp"%>
<%@page import="java.net.*,java.io.BufferedReader,java.io.IOException,java.io.InputStream,java.io.InputStreamReader,java.io.OutputStreamWriter,java.io.PrintWriter,java.io.UnsupportedEncodingException,java.net.HttpURLConnection,java.net.MalformedURLException,java.net.URL,java.net.URLConnection,java.util.Enumeration" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body><% URL u = new URL("http://localhost:8080/project/NewFile2.jsp");
HttpURLConnection uConnection = (HttpURLConnection) u.openConnection();
uConnection.connect();
System.out.println(uConnection.getResponseCode());
%>

</body>
</html>