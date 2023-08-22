<%@ page import="com.hh.service.NewsTypeService" %>
<%@ page import="com.hh.service.impl.NewsTypeServiceImpl" %>
<%@ page import="com.hh.entity.NewsType" %><%--
  Created by IntelliJ IDEA.
  User: H.Mr
  Date: 2023/8/2
  Time: 15:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<body>
<%
    request.setCharacterEncoding("utf-8");
    String newsTypeName = request.getParameter("newsTypeName");
    String id = request.getParameter("id");
    System.out.println(id);
    System.out.println(newsTypeName);
    NewsTypeService service = new NewsTypeServiceImpl();
    NewsType newsType = service.getNewsTypeById(Integer.parseInt(id));
    newsType.setNewsType(newsTypeName);
    boolean flag = service.updateNewsType(newsType);
    if (!flag){
%>
<script>window.alert("更新失败");</script>
<%
    }else {
        response.sendRedirect("../page/updateNewsType.jsp");
    }
%>
<a href="../page/updateNewsType.jsp">
    返回
</a>
</body>
</html>
