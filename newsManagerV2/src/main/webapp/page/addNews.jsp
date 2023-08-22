<%@ page import="com.hh.service.NewsTypeService" %>
<%@ page import="com.hh.service.impl.NewsTypeServiceImpl" %>
<%@ page import="com.hh.entity.NewsType" %>
<%@ page import="java.util.List" %>
<%--
  Created by IntelliJ IDEA.
  User: H.Mr
  Date: 2023/8/1
  Time: 21:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>管理页面</title>
    <%
        NewsTypeService service = new NewsTypeServiceImpl();
        List<NewsType> NewsTypes = service.getNewsTypes();
    %>
</head>
<body>
<jsp:include page="head.jsp" flush="true"/>
<div id="content_right" style="width:80%;height: 800px;float: left;background-color: moccasin;">
    <h3>请输入你要添加的新闻</h3>
    <form action="./addNews" method="post">
        新闻标题：<input type="text" name="newsTitle">
        <br/>
        新闻时间：<input type="datetime-local" name="newsTime">
        <br/>
        新闻类型：
        <select name="newsType">
            <%
                for (NewsType newsType : NewsTypes) {
            %>
            <option value="<%=newsType.getNewsType()%>"><%=newsType.getNewsType()%></option>
            <%
                }
            %>
        </select>
        <br/>
        新闻内容：
        <br/>
        <textarea style="width: 300px;height: 200px;margin: 10px 50px;" cols="30" name="newsContent">
        </textarea>
        <br/>
        <input type="submit" value="提交">
    </form>
</div>
</body>
</html>
