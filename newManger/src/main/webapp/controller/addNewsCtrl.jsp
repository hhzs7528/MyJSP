<%@ page import="com.hh.entity.NewsInfo" %>
<%@ page import="com.hh.service.NewsService" %>
<%@ page import="com.hh.service.impl.NewsServiceImpl" %><%--
  Created by IntelliJ IDEA.
  User: H.Mr
  Date: 2023/8/2
  Time: 8:50
  To change this template use File | Settings | File Templates.
--%>
<html>
<body>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    NewsService service = new NewsServiceImpl();
    request.setCharacterEncoding("utf-8");
    String newsTitle = request.getParameter("newsTitle");
    String newsTime = request.getParameter("newsTime");
    String newsType = request.getParameter("newsType");
    String newsContent = request.getParameter("newsContent");
    String replace = newsTime.replace("T", " ");
    News newsInfo = new News();
    newsInfo.setNewsTitle(newsTitle);
    newsInfo.setNewsTime(replace);
    newsInfo.setNewsType(newsType);
    newsInfo.setNewsContent(newsContent);
    System.out.println(newsInfo);
    boolean flag = false;
    flag = service.addNews(newsInfo);
    if (!flag){
%>
<script>window.alert("添加失败");</script>
<%
    }else {
        response.sendRedirect("../page/addNews.jsp");
    }
%>
<a href="../page/addNews.jsp">
    返回
</a>
</body>
</html>

