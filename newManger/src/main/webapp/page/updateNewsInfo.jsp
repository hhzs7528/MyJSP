<%@ page import="com.hh.entity.NewsType" %>
<%@ page import="com.hh.service.NewsTypeService" %>
<%@ page import="com.hh.service.impl.NewsTypeServiceImpl" %>
<%@ page import="java.util.List" %>
<%@ page import="com.hh.service.NewsService" %>
<%@ page import="com.hh.service.impl.NewsServiceImpl" %>
<%@ page import="com.hh.entity.NewsInfo" %><%--
  Created by IntelliJ IDEA.
  User: H.Mr
  Date: 2023/8/2
  Time: 10:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>管理页面</title>
</head>
<body>
<%
    NewsTypeService service = new NewsTypeServiceImpl();
    List<NewsType> NewsTypes = service.getNewsTypes();

    int id = Integer.parseInt(request.getParameter("id"));
    NewsService newsService = new NewsServiceImpl();
    News newsInfo = newsService.getNewsById(id);
%>
<jsp:include page="head.jsp" flush="true"/>
<div id="content_right" style="width:80%;height: 800px;float: left;background-color: moccasin;">
    <h3>请更新你的新闻内容</h3>
    <form action="../controller/updateNewsCtrl.jsp?id=<%=newsInfo.getId()%>" method="post">
        新闻标题：<input type="text" name="newsTitle" value="<%=newsInfo.getNewsTitle()%>">
        <br/>
        新闻时间：<input type="datetime-local" name="newsTime" value="<%=newsInfo.getNewsTime()%>">
        <br/>
        新闻类型：
        <select name="newsType">
            <%
                for (NewsType newsType : NewsTypes) {
                    if (newsInfo.getNewsType().equals(newsType.getNewsType())){
            %>
            <option value="<%=newsType.getNewsType()%>" selected><%=newsType.getNewsType()%></option>
            <%
                    }else {
            %>
            <option value="<%=newsType.getNewsType()%>"><%=newsType.getNewsType()%></option>
            <%
                    }
                }
            %>
        </select>
        <br/>
        新闻内容：
        <br/>
        <textarea style="width: 300px;height: 200px;margin: 10px 50px;" cols="30" name="newsContent">
            <%=newsInfo.getNewsContent().trim()%>
        </textarea>
        <br/>
        <input type="submit" value="提交">
    </form>
</div>
</body>
</html>
