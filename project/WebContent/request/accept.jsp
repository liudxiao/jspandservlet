<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%!
public String codeToString(String str) 
{//处理中文字符串的函数
String s=str;
try{
 byte tempB[]=s.getBytes("ISO-8859-1");
s=new String(tempB,"utf-8");
return s;
}
catch(Exception e)
{return s;}
}
%>
<head>
<title>接收新用户注册</title>
</head>
<body>
这是新用户注册所提交的数据：
<br>
用户名是：<%=codeToString(request.getParameter("username"))%><br>
密码是：<%=codeToString(request.getParameter("userpassword"))%><br>
性别是：<%=codeToString(request.getParameter("sex"))%><br>
出生年月是：<%=request.getParameter("year")+request.getParameter("month")+request.getParameter("day")%><br>
电子邮箱是：<%=request.getParameter("email")%><br>
家庭住址是：<%=codeToString(request.getParameter("address"))%><br>
</body>
</html>
