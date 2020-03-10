<%@page import="java.net.URLDecoder"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="myfn" uri="http://www.myfunctions/ldx" %>
<html>
  <head>
    <title>JSTL-fn测试</title>
  </head>
  <body>
 <%request.setAttribute("par", "hello");
 String back=(String)request.getAttribute("back");
 out.println(back);
 System.out.println(request.getContextPath());
 %>
 <a href="<%=request.getContextPath() %>/SecondServlet.html">NewFile1.jsp</a>
  </body>
</html>
