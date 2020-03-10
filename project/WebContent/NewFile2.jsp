<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <jsp:useBean id="my" class="bean.FirstBean" scope="session"></jsp:useBean>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
<!--    注释内容     --> 
       <%--  注释内${ sessionScope.h.k1}容  --%> 

<p>这是NewFile2.jsp
<%
//out.println(my.getName());
%>
<%//=session.getId()
%>
<%//=session.getAttribute("name")
response.setStatus(404);

%>



</body>