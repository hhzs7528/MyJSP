<%@ page import="java.util.List" %>
<%@ page import="com.hh.service.impl.NewsTypeServiceImpl" %>
<%@ page import="com.hh.service.NewsTypeService" %>
<%@ page import="com.hh.entity.NewsType" %><%--
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
    <h3>
        新闻主题如下
    </h3>
    <%
        // 获取新闻信息类型
        NewsTypeService newsService = new NewsTypeServiceImpl();
        List<NewsType> newsTypes = newsService.getNewsTypes();
    %>
    <ul>
        <%
            for (NewsType newsType : newsTypes) {
        %>
        <li style="margin-top: 10px">
            <span style="float: left">
                <%=newsType.getNewsType()%>
            </span>
            <span style="float: right;margin-left: 20px">
                <a href="../controller/delNewsTypeCtrl.jsp?id=<%=newsType.getId()%>">删除</a>
            </span>
            <span style="float: right;margin-left: 10px">
                <a href="updateNewsTypeInfo.jsp?id=<%=newsType.getId()%>">编辑</a>
            </span>
        </li>
        <%
            }
        %>
    </ul>
</div>
</body>
</html>
