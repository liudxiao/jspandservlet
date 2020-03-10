<%@page contentType="text/html;charset=gb2312" %>
<html>
<head>
<title>以提供的不同方式打开文件示例</title>
</head>
<body>
<font size=4>
<p>请选择打开文本文件list.txt的方式！
<p><jsp:include page="list.txt"/>
<form action="restype.jsp" method="post" name=form>
<input type="submit" value="word" name="word">
<input type="submit" value="excel" name="excel">
</form>
</font>
</body>
</html>