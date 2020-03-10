<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>登陆成功</title>
</head>
<body>
<%request.setCharacterEncoding("utf-8"); //防止中文乱码
String username=request.getParameter("username");
String password=request.getParameter("password");
if(username==null) username="";
if(password==null) password="";
if("".equals(username) || "".equals(password)){response.sendRedirect("login.jsp?error=username or password is wrong!!!");}
		
		//首先判断用户是否选择保存登陆状态
		String[] isUseCookies = request.getParameterValues("isUseCookies"); 
		//选择保存:不为空且大于0
		if(isUseCookies != null && isUseCookies.length>0){
			 username = URLEncoder.encode(username,"utf-8");  
			//使用URLEncoder解决 无法在Cookies对象中无法保存中文字符的问题
			 password = URLEncoder.encode(password, "utf-8");
			//使用Cookies对象保存字符串
			Cookie usernemeCookie = new Cookie("username",username);
			Cookie passwordCookie = new Cookie("password",password);
			response.addCookie(usernemeCookie);
			response.addCookie(passwordCookie);
}%>

          用户名：<%=username %><br>
          密码：<%=password %><br>
	<h1>登陆成功</h1>
	<hr>
	<a href="user.jsp">查看用户信息</a>
</body>
</html>
