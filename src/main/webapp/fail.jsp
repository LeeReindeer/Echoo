<%@ page language="java" pageEncoding="UTF-8"%>
<html>
<head>
<title>登录失败</title>
</head>
<body>
  <%
   String schoolid = (String)session.getAttribute("schoolid") ;
   String msg  = (String)session.getAttribute("message") ;
  %>
  <div align="center">
   <%=schoolid %>
   对不起，登陆失败！<br />
   <font color="red">原因： </font>
   <%=msg %>
   <br/>
   <br/>
   5秒后将返回登陆界面。
  </div>

   <%
     response.setHeader("Refresh","5;URL=/Echoo1/login.jsp");
    %>
 </body>
</html>