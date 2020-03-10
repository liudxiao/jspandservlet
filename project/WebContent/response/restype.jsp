<%@page contentType="application/msword;charset=gb2312" %>
<html>
<head>
<title>以不同方式打开文件示例</title>
</head>
<body>
<%
String str1=request.getParameter("word");
String str2=request.getParameter("excel");
if(str1==null)
{
str1="";
}
if(str2==null)
{
str2="";
}
if(str1.equals("word"))
{//设置Word类型。
response.setContentType("application/msword;charset=gb2312");
}
if(str2.equals("excel"))
{//设置excel类型。
response.setContentType("application/x-msexcel;charset=gb2312");
}
%>
<jsp:include page="list.txt"/>
</body>
</html>
