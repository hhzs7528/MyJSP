<%--
  Created by IntelliJ IDEA.
  User: H.Mr
  Date: 2023/8/1
  Time: 15:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String username = request.getParameter("username");
    String password = request.getParameter("password");
    if ("admin".equals(username) && "123456".equals(password)) {
        Cookie cookie = new Cookie("username", username);
        cookie.setMaxAge(3600);
        response.addCookie(cookie);
        response.sendRedirect("page/addNews.jsp");
    }else {
        response.sendRedirect("index.jsp");
    }
%>
