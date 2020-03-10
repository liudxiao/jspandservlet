<%@ page contentType="text/html;charset=GB2312" %>
<HTML><BODY bgcolor=cyan><FONT size=2> 
<%  String mess=request.getHeader("referer");
System.out.println("mess"+mess);

    if(mess==null){
       mess="";
       //response.sendError(404);
       response.setStatus(404);
    }
    if(!(mess.startsWith("http://localhost:8080/project/response/ch4"))) //不允许网站ch4以外的其他网站盗链本页面
    	 {
    response.setStatus(500);
 //response.sendError(404);
    }
%>
<P> 欢迎访问本页面!<BR>
    您来自:<%=mess%>
</FONT></BODY></HTML>
