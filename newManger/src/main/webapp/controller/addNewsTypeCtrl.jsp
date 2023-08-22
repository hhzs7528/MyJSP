<%@ page import="com.hh.service.impl.NewsTypeServiceImpl" %>
<%@ page import="com.hh.service.NewsTypeService" %>
<%@ page import="com.hh.entity.NewsType" %><%--
  Created by IntelliJ IDEA.
  User: H.Mr
  Date: 2023/8/2
  Time: 15:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<body>
<%
  request.setCharacterEncoding("utf-8");
  NewsTypeService service = new NewsTypeServiceImpl();
  String newsTypeName = request.getParameter("newsTypeName");
  NewsType newsType = new NewsType();
  newsType.setNewsType(newsTypeName);
  boolean flag = service.addNewsType(newsType);
  if (!flag){
%>
<script>window.alert("添加失败");</script>
<%
  }else {
    response.sendRedirect("../page/addNewsType.jsp");
  }
%>
<a href="../page/addNewsType.jsp">
  返回
</a>
</body>
</html>
