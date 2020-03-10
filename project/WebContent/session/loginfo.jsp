<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<html>
<head>
<title>用户登录成功</title>
</head>
<body>
用户登录成功！<br>
您的用户名是：<%=(String)session.getAttribute("username") %>
  </body>
</html>
