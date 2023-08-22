<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
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
</head>
<body>
<jsp:include page="head.jsp" flush="true"/>
<div id="content_right" style="width:80%;height: 800px;float: left;background-color: moccasin;">
    <div style="margin-left: 20px">
        <h3>请输入你要添加的新闻</h3>
        <form action="./addNews" method="post">
            新闻标题：<input type="text" name="newsTitle">
            <br/>
            新闻时间：<input type="datetime-local" name="newsTime">
            <br/>
            新闻类型：
            <select name="newsType">
                <c:forEach items="${NewsTypes}" var="newsType">
                    <option value="${newsType.newsType}">${newsType.newsType}</option>
                </c:forEach>
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
</div>
</body>
</html>
