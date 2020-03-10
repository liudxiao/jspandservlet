<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<script type="text/javascript">
function onSubMit(){
if(f1.first.value=="" || f1.second.value==""){
	alert("请输入运算数！！！");
	return false;
}	
}
</script>
<body>
<%

%>

<%String first,second,s;
first=request.getParameter("first");
second=request.getParameter("second");
s=request.getParameter("fuhao");
if(first==null || second==null){first="";second="";
}
if(!"".equals(first)&&!"".equals(second)){
	session.setAttribute("first", first);
	session.setAttribute("second", second);
	session.setAttribute("fuhao", s);
	try{
		switch(s)
		{case "+":out.println(Double.parseDouble(first)+Double.parseDouble(second));break;
		case "-":out.println(Double.parseDouble(first)-Double.parseDouble(second));break;
		case "*":out.println(Double.parseDouble(first)*Double.parseDouble(second));break;}
	}
	catch(Exception e){
		out.println("输入的数据不合法！！！");
	}
}
%>
<% %>
<form name="f1" method="post" onsubmit="onSubMit()">
<input type="text" name="first" value=<%=session.getAttribute("first")==null?"":(String)session.getAttribute("first")%>>
<Select name="fuhao" >
          <Option value="+" <%="+".equals((String)session.getAttribute("fuhao"))?"selected":""%>>+
          <Option value="-" <%="-".equals((String)session.getAttribute("fuhao"))?"selected":""%>>-
          <Option value="*" <%="*".equals((String)session.getAttribute("fuhao"))?"selected":""%>>*
          <Option value="/" <%="/".equals((String)session.getAttribute("fuhao"))?"selected":""%>>/
          <Option value="平方"<%="平方".equals((String)session.getAttribute("fuhao"))?"selected":""%>>平方
          <Option value="开根号" <%="开根号".equals((String)session.getAttribute("fuhao"))?"selected":""%>>平方根
       </Select> 
<input type="text" name="second" value=<%=session.getAttribute("second")==null?"":(String)session.getAttribute("second")%>>
<input type="submit" name="computer" value="计算" /></form>
</body>
</html>