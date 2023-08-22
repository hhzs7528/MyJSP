<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<%--
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
    <ul>
        <c:forEach items="${newsInfo}" var="newsInfo">
            <li style="margin-top: 10px">
            <span style="float: left">
                ${newsInfo.newsTitle}
            </span>
                <span style="float: right;margin-left: 20px">
                <a href="./delNews?id=${newsInfo.id}">删除</a>
            </span>
                <span style="float: right;margin-left: 10px">
                <a href="./admin?action=updateNewsInfo&&id=${newsInfo.id}">编辑</a>
            </span>
            </li>
        </c:forEach>
    </ul>
</div>
</body>
</html>
