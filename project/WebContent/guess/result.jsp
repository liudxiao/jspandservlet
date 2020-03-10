<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<script type="text/javascript">
function again(){
	window.location.href="index.jsp";
}</script>
</head>
<body>
<%=request.getAttribute("ok")%><br>
您猜了<%=request.getAttribute("times")%>次
<%request.removeAttribute("times");%>
<input type="button" name="again" onclick="again()" value="再来一次"/>
</body>
</html>