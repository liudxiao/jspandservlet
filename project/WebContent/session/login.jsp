<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!-- type="text/javascript" & language = "javascript"-->
<script type="text/javascript">
function on_submit()
{//验证数据的合法性
if (form1.username.value == "")
{
alert("用户名不能为空，请输入用户名！");
form1.username.focus();
return false;
}
if (form1.userpassword.value == "")
{
alert("用户密码不能为空，请输入密码！");
form1.userpassword.focus();
return false;
    }
}
</script>
<%!
public String codeToString(String str)
{//处理中文字符串的函数
 String s = str;
try
{
 byte tempB[] = s.getBytes("ISO-8859-1");
 s = new String(tempB,"utf-8");
 return s;
}
catch(Exception e)
{
 return s;
 }
}
%>
<%
String username = request.getParameter("username");
String username1 = request.getParameter("username1");
String userpassword = request.getParameter("userpassword");
if(username==null) username="";
if(userpassword==null) userpassword="";
if(!"".equals(username)&&!"".equals(userpassword))

{
//如果用户名和密码都合法，记下用户名，一般把用户和密码存在数据库中，
//用数据库中的信息与提交的用户名和密码比较以进行用户合法性检查，
 //这些内容在后续章节中会继续学习
session.setAttribute("username",codeToString(username));
response.sendRedirect("loginfo.jsp"); 
}
%> 
<html>
<head>
<title>用户登录</title>
</head>
<body>
<form name = "form1" method = "post" onsubmit = "on_submit()">
<table align = "center">
<tr align = "center">
 <td>
用户登录
</td>
</tr>
<tr align = "center">
<td>
请输入用户名：<input type = "text" name = "username" size = "20">
</td>
</tr>
 <tr align = "center">
<td>
请输入密码：&nbsp;&nbsp;<input type = "password" name = "userpassword" size = "20">
</td>
</tr>
<tr align = "center">
<td>
<input type = "submit" value = "提交" name = "B1" >
<input type = "reset" value = "全部重写" name = "B2">
 </td>
</tr>
</table>
</form>
</body>
</html>
