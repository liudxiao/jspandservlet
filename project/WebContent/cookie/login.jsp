<%@page import="java.net.URLDecoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>用户登陆界面</title>
</head>
<body>
<%
	request.setCharacterEncoding("utf-8");
if(request.getParameter("error")!=null)
	out.println(request.getParameter("error"));
    	String username = ""; //用户名
    	String password = ""; //密码
    	
    	Cookie[] cookies = request.getCookies();
    	//保存有cookie对象
    	if(cookies != null && cookies.length > 0){
    		for(Cookie c: cookies){
    			if(c.getName().equals("username")){
    				username = URLDecoder.decode(c.getValue(),"utf-8");
    			}
    			if(c.getName().equals("password")){
    				password = URLDecoder.decode(c.getValue(),"utf-8");
    			}
    		}
    	}
    %>

	<h1>用户登陆</h1>
	<hr>
	
	
	<form name="loginForm" action="dologin.jsp" method="post">
		<table>
			<tr>
				<td>UserName:</td>
				<td><input type="text"  name="username" value="<%=username %>"/></td>
			</tr>
			<tr>
				<td>Password:</td>
				<td><input type="password" name="password" value="<%=password %>"></td>
			</tr>
			<tr>
				<td colspan="2"><input type="checkbox" name="isUseCookies" checked="checked"/>十天内记住我的登陆状态</td>
			</tr>
			<tr>
				<td colspan="2" align="center"><input type="submit" value="登陆"/><input type="reset" value="取消" /></td>
			</tr>
		</table>
	</form>
</body>
</html>
