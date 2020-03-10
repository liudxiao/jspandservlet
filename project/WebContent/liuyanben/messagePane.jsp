<%@ page contentType="text/html;charset=GB2312" %>
<%@ page import="java.util.*" %>
<%@ page import="java.text.SimpleDateFormat" %>
<HTML><BODY>
     <%! Vector<String> v=new Vector<String>();
         int i=0; 
         ServletContext  application;
         synchronized void sendMessage(String s){
            application=getServletContext();;
            v.add(s);
            application.setAttribute("Mess",v); 
         }
     %> 
     <% String name=request.getParameter("peopleName");
        String title=request.getParameter("Title");
        String messages=request.getParameter("messages");
           if(name==null)
              name="guest"+(int)(Math.random()*10000);
           if(title==null)
              title="无标题";
           if(messages==null)
              messages="无信息";
          SimpleDateFormat matter=new SimpleDateFormat("yyyy-MM-dd  HH:mm:ss");
          String time=matter.format(new Date());
          String s=name+"#"+title+"#"+time+"#"+messages; 
          sendMessage(s);
          out.print("您的信息已经提交！");
     %>
  <A HREF="submit.jsp" >返回留言板</A> 
  <A HREF="showMessage.jsp" >查看留言板</A>
</BODY></HTML>
