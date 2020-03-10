<%@ page language="java" contentType="application/msword; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 上面的page指令是讲word文档直接在浏览器里面打开 -->  
<!-- 下面这句话是将word单独的用office word 打开 但是如果上面的page指令没有指定在contentType="charset=gb2312"或者contentType="application/msword"-->                                               
<!--中也字符集编码时打开的的时候中文会显示成乱码-->  
<%response.setHeader("Content-disposition","attachment;filename=1.doc");%> 
 <!-- 两者唯一相同的点是 都会讲<body></body>标签的内容打印在word里面 -->
 <html>          <head>    
           <title>Word   输出测试</title>   
       </head>          
<body>              
 <table   border="1"   width="100%">         
         <tr><td>Word   输出测试</td>              
     </tr>                                     
 </table>         
 </body>       
 </html>