<%--
  Created by IntelliJ IDEA.
  User: H.Mr
  Date: 2023/7/31
  Time: 20:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>欢迎界面</title>
    <%
        String value = null;
        for (Cookie cookie : request.getCookies()) {
            if (cookie.getName().equals("username")) {
                value = cookie.getValue();
            }
        }
        if (value == null){
            response.sendRedirect("index.jsp");
        }
    %>
</head>
<body>
<h1>欢迎回来<%=value%></h1>
</body>
</html>
