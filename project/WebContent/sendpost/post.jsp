<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" errorPage="doError.jsp"%>
<%@page import="java.net.*,java.io.BufferedReader,java.io.IOException,java.io.InputStream,java.io.InputStreamReader,java.io.OutputStreamWriter,java.io.PrintWriter,java.io.UnsupportedEncodingException,java.net.HttpURLConnection,java.net.MalformedURLException,java.net.URL,java.net.URLConnection,java.util.Enumeration" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
<%try   {   StringBuffer sb=new StringBuffer();
//URL url= new URL("http://localhost:8080/project/FirstSevlet");  
URL url= new URL("http://localhost:8080/project/NewFile2.jsp");
URLConnection   connection=url.openConnection(); 

connection.setDoOutput(true);   
//发送域信息   
OutputStreamWriter ot=new OutputStreamWriter(connection.getOutputStream(),"utf-8");   
ot.write("userid=001&userpwd=ABCD&msg=中文内容");//这里组织域信息   
ot.flush();   
ot.close();   
//获取返回数据    
InputStream in=connection.getInputStream();
BufferedReader reader=new BufferedReader(new InputStreamReader(in));
String line=null;
while((line=reader.readLine())!=null){
sb.append(line);
}
System.out.println(sb.toString());
} catch(MalformedURLException e){   
// TODO   Auto-generated   catch   block   
e.printStackTrace();   
} catch(UnsupportedEncodingException e){   
// TODO Auto-generated   catch   block   
e.printStackTrace();   
} catch (IOException   e)   {   
//   TODO   Auto-generated   catch   block   
e.printStackTrace();   
}


%>
</body>
</html>