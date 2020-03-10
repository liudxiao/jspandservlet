<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="NewFile3.jsp">
		昵称：<input type="text" name="name">
		${msg.nameError}<br>
		账号：<input type="text" name="account">
		${msg.accountError }<br>
		密码：<input type="password" name="password">
		${msg.passwordError }<br>
		<input type="submit" value="提交" >
	</form>
</body>
</html>