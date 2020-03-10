<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<% 
	String name = request.getParameter("name");
	String account = request.getParameter("account");
	String password = request.getParameter("password");
	Map<String, String> error = new HashMap<String, String>();
	if(name == null || "".equals(name)){
		error.put("nameError", "昵称不能为空");
	}
	if(account == null || "".equals(account)){
		error.put("accountError", "账号不能为空");
	}
	if(password == null || "".equals(password)){
		error.put("passwordError", "密码不能为空");
	}
	if(!error.isEmpty()){
		request.setAttribute("msg", error);
		request.getRequestDispatcher("NewFile4.jsp").forward(request, response);
	}
	out.print("昵称：" + request.getParameter("name") + "<br>");
	out.print("账号：" + request.getParameter("account") + "<br>");
	out.print("密码：" + request.getParameter("password") + "<br>");
	%>
</body>
</html>