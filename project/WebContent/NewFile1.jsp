<%@page import="java.net.URLEncoder"%>
<%@page import="java.util.HashMap,java.io.*"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<jsp:useBean id="my" class="bean.FirstBean" scope="session"></jsp:useBean>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<% /*
class My{
 public String name;
//int age;
void setName(String name){this.name=name;}
public String getName(){return name;}
} 
*/%>
<body>
<!--    注释内容     --> 
       <%--  注释内容  --%> 

<p>这是NewFile1.jsp
<%/*response.sendError(404);

my.setName("hello");
my.setAge(18);
HashMap hm=new HashMap();
hm.put("k1", "k1111111");

hm.put("k2", "k2");
session.setAttribute("h", hm);
response.sendRedirect("NewFile2.jsp");*/%>
<%//=request.getAttribute("par")
%>
<%session.setAttribute("name", "tom");
%>
<%=session.getId() %> 
<a href="NewFile2.jsp">newfile2.jsp</a>

<%InputStream is=request.getInputStream();
StringBuffer sb=new StringBuffer();
BufferedReader reader=new BufferedReader(new InputStreamReader(is));
String line;
while((line=reader.readLine())!=null){
	sb.append(line);
}
System.out.println(response.getStatus());
%>
</body>
</html>