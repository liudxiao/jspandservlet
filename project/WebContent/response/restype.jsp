<%@page contentType="application/msword;charset=gb2312" %>
<html>
<head>
<title>�Բ�ͬ��ʽ���ļ�ʾ��</title>
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
{//����Word���͡�
response.setContentType("application/msword;charset=gb2312");
}
if(str2.equals("excel"))
{//����excel���͡�
response.setContentType("application/x-msexcel;charset=gb2312");
}
%>
<jsp:include page="list.txt"/>
</body>
</html>
