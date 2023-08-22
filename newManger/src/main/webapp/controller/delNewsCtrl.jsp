<%@ page import="com.hh.service.NewsService" %>
<%@ page import="com.hh.service.impl.NewsServiceImpl" %><%--
  Created by IntelliJ IDEA.
  User: H.Mr
  Date: 2023/8/2
  Time: 10:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<body>
<%
  int id = Integer.parseInt(request.getParameter("id"));
  NewsService service = new NewsServiceImpl();
  boolean flag = service.delNewsById(id);
  if (!flag){
%>
<script>window.alert("删除失败");</script>
<%
  }else {
    response.sendRedirect("../page/updateNews.jsp");
  }
%>
<a href="../page/updateNews.jsp">
  返回
</a>
</body>
</html>
