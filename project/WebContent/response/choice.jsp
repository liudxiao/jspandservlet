<%@page contentType="text/html;charset=gb2312" %>
<html>
<head>
<title>���ṩ�Ĳ�ͬ��ʽ���ļ�ʾ��</title>
</head>
<body>
<font size=4>
<p>��ѡ����ı��ļ�list.txt�ķ�ʽ��
<p><jsp:include page="list.txt"/>
<form action="restype.jsp" method="post" name=form>
<input type="submit" value="word" name="word">
<input type="submit" value="excel" name="excel">
</form>
</font>
</body>
</html>