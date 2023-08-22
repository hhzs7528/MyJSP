<%--
  Created by IntelliJ IDEA.
  User: H.Mr
  Date: 2023/7/30
  Time: 18:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登录验证</title>
</head>
<body>
<%
    String username = request.getParameter("username");
    String password = request.getParameter("password");
    if (username.equals("lucky") && password.equals("123456")){
        out.print("你好：" + username + "!");
    }else {
        response.sendRedirect("index.jsp");
    }
%>
</body>
</html>
