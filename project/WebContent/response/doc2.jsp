<%@page language="java" contentType="application/msword;charset=utf-8" pageEncoding="UTF-8"%> 
 <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">  
<%@page import="java.io.File"%> 
<%@page import="java.io.OutputStream"%>
<%@page import="java.io.InputStream"%>
<%@page import="java.io.FileInputStream"%> 
 <html> <body>
<%try{String fileName="E:\\myproject\\project\\WebContent\\response\\1.doc";
System.out.println("====="+fileName); 
File wordFile = new File(fileName); 
response.reset();  
response.setContentType("application/msword"); 
response.setHeader("Content-Disposition","inline;filename="+wordFile.getName()); 
InputStream is=new FileInputStream(wordFile); 
OutputStream os = response.getOutputStream(); 
out.clear();
out = pageContext.pushBody();
int byteread;
byte[] buffer=new byte[1024];
while((byteread=is.read(buffer))!=-1)
{os.write(buffer,0,byteread);}
os.flush();
os.close();
os.close();}
catch(Exception e)
{e.printStackTrace();}%> 
</body> </html>