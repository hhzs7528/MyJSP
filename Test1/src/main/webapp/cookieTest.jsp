<%--
  Created by IntelliJ IDEA.
  User: H.Mr
  Date: 2023/7/31
  Time: 18:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String username = request.getParameter("username");
    String password = request.getParameter("password");
    if(username.equals("lucky") && password.equals("123456")){
        Cookie cookie = new Cookie("username", username);
        cookie.setMaxAge(10);
        response.addCookie(cookie);
        response.sendRedirect("index.jsp");
    }else {
        response.sendRedirect("index.jsp");
    }
%>
