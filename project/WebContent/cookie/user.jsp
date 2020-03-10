<%@page import="java.net.URLDecoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>登陆成功</title>
</head>
<body>
	 <%
    	request.setCharacterEncoding("utf-8");	
    
    	String username = ""; //用户名
    	String password = ""; //密码
    	
    	Cookie[] cookies = request.getCookies();
    	System.out.println(cookies.length);
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
         
	
	<h1>用户资料</h1>
    <hr>
         用户名：<%=username %><br>
          密码：<%=password %><br>
</body>
</html>
