<%@ page contentType="text/html;charset=GB2312" %>
<HTML><BODY bgcolor=cyan><FONT size=2> 
<%  String mess=request.getHeader("referer");
System.out.println("mess"+mess);

    if(mess==null){
       mess="";
       //response.sendError(404);
       response.setStatus(404);
    }
    if(!(mess.startsWith("http://localhost:8080/project/response/ch4"))) //��������վch4�����������վ������ҳ��
    	 {
    response.setStatus(500);
 //response.sendError(404);
    }
%>
<P> ��ӭ���ʱ�ҳ��!<BR>
    ������:<%=mess%>
</FONT></BODY></HTML>
