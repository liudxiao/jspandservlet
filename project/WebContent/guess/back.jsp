<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
<%=request.getAttribute("times") %>
<%
request.setAttribute("times",(int)session.getAttribute("times")+1);
String mess;
int yournumber=-1;
int guess=(int)session.getAttribute("secret");
System.out.println("guess="+guess);

try{
yournumber=Integer.parseInt(request.getParameter("input"));

}
catch(Exception e){
	mess="请输入有效整数值";}
if(yournumber==guess){
mess="恭喜你，猜对了!!!";
request.setAttribute("ok",mess);
System.out.println(mess);
request.getRequestDispatcher("result.jsp").forward(request, response);
}
else{
if(yournumber>guess){mess="你猜大了，小一点!!!";}
else  {mess="你猜小了，大一点!!!";}
request.setAttribute("notok", mess);
request.getRequestDispatcher("index.jsp").forward(request, response);
}
%>
</body>
</html>