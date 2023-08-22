<%@ page import="com.hh.service.NewsService" %>
<%@ page import="com.hh.service.impl.NewsServiceImpl" %>
<%@ page import="com.hh.entity.NewsInfo" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: H.Mr
  Date: 2023/8/1
  Time: 21:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>管理页面</title>
</head>
<body>
<jsp:include page="head.jsp" flush="true"/>
<div id="content_right" style="width:80%;height: 800px;float: left;background-color: moccasin;">
    <h3>新闻列表如下</h3>
    <%
        // 获取新闻信息
        NewsService newsService = new NewsServiceImpl();
        List<News> newsInfo = newsService.getNewsInfo();
    %>
    <ul>
        <%
            for (News newsInfo : newsInfo) {
        %>
        <li style="margin-top: 10px">
            <span style="float: left">
                <%=newsInfo.getNewsTitle()%>
            </span>
            <span style="float: right;margin-left: 20px">
                <a href="../controller/delNewsCtrl.jsp?id=<%=newsInfo.getId()%>">删除</a>
            </span>
            <span style="float: right;margin-left: 10px">
                <a href="updateNewsInfo.jsp?id=<%=newsInfo.getId()%>">编辑</a>
            </span>
        </li>
        <%
            }
        %>
    </ul>
</div>
</body>
</html>
