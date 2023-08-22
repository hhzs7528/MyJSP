<%@ page import="com.hh.service.NewsService" %>
<%@ page import="com.hh.service.impl.NewsServiceImpl" %>
<%@ page import="com.hh.entity.NewsInfo" %>

<%--
  Created by IntelliJ IDEA.
  User: H.Mr
  Date: 2023/8/2
  Time: 9:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<body>
<%
    request.setCharacterEncoding("utf-8");
    int id = Integer.parseInt(request.getParameter("id"));
    NewsService service = new NewsServiceImpl();
    News newsInfo = service.getNewsById(id);
    System.out.println(newsInfo);
    String newsTitle = request.getParameter("newsTitle");
    String newsTime = request.getParameter("newsTime").replace("T", " ");
    String newsType = request.getParameter("newsType");
    String newsContent = request.getParameter("newsContent").trim();
    newsInfo.setNewsTitle(newsTitle);
    newsInfo.setNewsTime(newsTime);
    newsInfo.setNewsType(newsType);
    newsInfo.setNewsContent(newsContent);
    System.out.println(newsInfo);
    boolean flag = service.updateNews(newsInfo);
    if (!flag){
%>
<script>window.alert("更新失败");</script>
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
