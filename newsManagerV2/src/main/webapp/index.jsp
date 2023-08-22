<%@ page import="com.hh.service.NewsTypeService" %>
<%@ page import="com.hh.service.impl.NewsTypeServiceImpl" %>
<%@ page import="com.hh.entity.NewsType" %>
<%@ page import="java.util.List" %>
<%@ page import="com.hh.service.NewsService" %>
<%@ page import="com.hh.service.impl.NewsServiceImpl" %>
<%@ page import="com.hh.entity.NewsInfo" %>
<%@ page import="com.hh.entity.NewsInfo" %>
<%@ page import="com.hh.entity.NewsType" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="C" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<%--
  Created by IntelliJ IDEA.
  User: H.Mr
  Date: 2023/8/1
  Time: 15:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String username = null;
    // 遍历所有的 Cookie，查找名为 "username" 的 Cookie
    Cookie[] cookies = request.getCookies();
    if (cookies != null) {
        for (Cookie cookie : cookies) {
            if (cookie.getName().equals("username")) {
                username = cookie.getValue();
                break;
            }
        }
    }
    // 获取新闻类型
    NewsTypeService service = new NewsTypeServiceImpl();
    List<NewsType> NewsTypes = service.getNewsTypes();

    // 获取新闻信息
    NewsService newsService = new NewsServiceImpl();
    List<News> newsChina = newsService.getNewsByType(1);
    List<News> newsInternation = newsService.getNewsByType(2);
    List<News> newsInfo;
    String id = request.getParameter("id");
    if (id!=null){
        newsInfo = newsService.getNewsByType(Integer.parseInt(id));
    }else {
        newsInfo = newsService.getNewsInfo();
    }
%>
<html>
<head>
    <title>欢迎来到新闻界面</title>
    <link rel="stylesheet" type="text/css" href="css/index.css">
</head>
<body>
<div style="height: 100px;background-color:brown;text-align: center">
    <span style="font-size: 70px">新闻中国N</span>
    <span style="font-size: 55px">Ews</span>
</div>
<%
    if (username == null){
%>
<div style="width: 100%; margin-top: 10px">
    <form action="login" method="post">
        用户名：
        <label style="width: 150px;">
            <input type="text" name="username">
        </label>
        密&nbsp&nbsp&nbsp&nbsp码：
        <label>
            <input type="password" name="password">
        </label>
        <input type="submit" value="登录">
    </form>
</div>
<%}else {%>
<div style="width: 100%; ">
    亲爱的<%=username%>,欢迎您来到新闻中国!
    <span style="margin-left: 20px">
        <a href="page/addNews.jsp">进入管理页面</a>
    </span>
</div>
<%}%>
<hr/>
<div style="width: 100%;height: 1000px">
    <div class="left">
        <div style="height: 30%;">
            <div style="margin: 10px 10px; font-size: 30px">国内新闻</div>
            <div>
                <%
                    for (News newsinfo : newsChina) {
                        if (newsinfo.getNewsType().equals("国内"))
                        {
                %>
                <div style="margin: 10px">
                    <span><%=newsinfo.getNewsTitle()%></span>
                </div>
                <%
                        }
                    }
                %>
            </div>
        </div>
        <div style="height: 30%;">
            <div style="margin: 10px 10px; font-size: 30px">国际新闻</div>
            <div>
                    <%
                        for (News newsinfo : newsInternation) {
                            if (newsinfo.getNewsType().equals("国际"))
                            {
                    %>
                    <div style="margin: 10px">
                        <span><%=newsinfo.getNewsTitle()%></span>
                    </div>
                    <%
                            }
                        }
                    %>
            </div>
        </div>
    </div>
    <div class="right">
        <ul style="overflow: auto;">
            <li style="float: left;list-style: none;padding: 10px">
                <a href="index.jsp">
                    首页
                </a>
            </li>
            <%
                for (NewsType newsType : NewsTypes) {
            %>
            <li style="float: left;list-style: none;padding: 10px">
                <a href="index.jsp?id=<%=newsType.getId()%>">
                    <%=newsType.getNewsType()%>
                </a>
            </li>
            <%
                }
            %>
        </ul>
        <hr/>
        <ul>
            <%
                for (News newsinfo : newsInfo) {
            %>
            <li style="margin: 10px">
                <span style="float: left">
                    <%=newsinfo.getNewsTitle()%>
                </span>
                <span style="float: right">
                    <%=newsinfo.getNewsTime()%>
                </span>
            </li>
            <%
                }
            %>
        </ul>
    </div>
</div>
</body>
</html>
