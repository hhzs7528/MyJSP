<%--
  Created by IntelliJ IDEA.
  User: H.Mr
  Date: 2023/7/30
  Time: 18:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
    <%
    boolean isLoggedIn = false; // 用户是否已登录的标志

    // 遍历所有的 Cookie，查找名为 "username" 的 Cookie
    Cookie[] cookies = request.getCookies();
    if (cookies != null) {
        for (Cookie cookie : cookies) {
            if (cookie.getName().equals("username")) {
                isLoggedIn = true;
                response.sendRedirect("welcome.jsp");
                break;
            }
        }
    }

    // 如果用户尚未登录，则显示登录表单
    if (!isLoggedIn) {
        %>
<!DOCTYPE html>
<html>
<head>
    <title>用户登录</title>
</head>
<body>
<h1>用户登录</h1>
<form action="TestServlet" method="post">
    用户名：<input type="text" name="username"><br>
    密码：<input type="password" name="password"><br>
    <input type="submit" value="登录">
</form>
</body>
</html>
    <%
    }
%>
