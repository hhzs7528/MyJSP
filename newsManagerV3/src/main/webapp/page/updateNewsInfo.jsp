<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<%--
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
<jsp:include page="head.jsp" flush="true"/>
<div id="content_right" style="width:80%;height: 800px;float: left;background-color: moccasin;">
    <h3>请更新你的新闻内容</h3>
    <form action="./updateNews?id=${newsInfo.id}" method="post">
        新闻标题：<input type="text" name="newsTitle" value="${newsInfo.newsTitle}">
        <br/>
        新闻时间：<input type="datetime-local" name="newsTime" value="${newsInfo.newsTime}">
        <br/>
        新闻类型：
        <select name="newsType">
            <c:forEach items="${NewsTypes}" var="newsType">
                <c:choose>
                    <c:when test="${newsInfo.newsType eq newsType.newsType}">
                        <option value="${newsType.newsType}" selected>${newsType.newsType}</option>
                    </c:when>
                    <c:otherwise>
                        <option value="${newsType.newsType}">${newsType.newsType}</option>
                    </c:otherwise>
                </c:choose>
            </c:forEach>
        </select>
        <br/>
        新闻内容：
        <br/>
        <textarea style="width: 300px;height: 200px;margin: 10px 50px;" cols="30" name="newsContent">
            ${newsInfo.newsContent}
        </textarea>
        <br/>
        <input type="submit" value="提交">
    </form>
</div>
</body>
</html>
