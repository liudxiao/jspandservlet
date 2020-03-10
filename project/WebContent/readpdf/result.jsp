<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" errorPage="doError.jsp"%>
<%@page import="java.net.*,java.io.BufferedReader,java.io.IOException,java.io.*,java.io.InputStreamReader,java.io.OutputStreamWriter,java.io.PrintWriter,java.io.UnsupportedEncodingException,java.net.HttpURLConnection,java.net.MalformedURLException,java.net.URL,java.net.URLConnection,java.util.Enumeration" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
<%!private void writeBytes(InputStream in,OutputStream op) throws IOException{
	byte[] buffer=new byte[1024];
	int length=-1;
	while((length=in.read(buffer))!=-1){
	op.write(buffer,0,length);}
	in.close();
	op.flush();
	op.close();} %>
	<%String passwd=request.getParameter("passwd");
	if("123456".equals(passwd)){
		response.setContentType("application/pdf");
		InputStream in=getServletContext().getResourceAsStream("WEB-INF/2.pdf");
		//out.clear();
		
		OutputStream op=response.getOutputStream();
	op.flush();
		writeBytes(in,op);
		} %>
</body>
</html>