<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<%--
  Created by IntelliJ IDEA.
  User: H.Mr
  Date: 2023/8/1
  Time: 15:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
<c:choose>
    <c:when test="${cookie.username == null}">
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
    </c:when>
    <c:otherwise>
        <div style="width: 100%; ">
            亲爱的${cookie.username.value},欢迎您来到新闻中国!
            <span style="margin-left: 20px">
        <a href="page/admin">进入管理页面</a>
    </span>
        </div>
    </c:otherwise>
</c:choose>
<hr/>
<div style="width: 100%;height: 1000px">
    <div class="left">
        <div style="height: 30%;">
            <div style="margin: 10px 10px; font-size: 30px">国内新闻</div>
            <div>
                <c:forEach items="${newsChina}" var="newsinfo">
                    <div style="margin: 10px">
                        <span>${newsinfo.newsTitle}</span>
                    </div>
                </c:forEach>
            </div>
        </div>
        <div style="height: 30%;">
            <div style="margin: 10px 10px; font-size: 30px">国际新闻</div>
            <div>
                <c:forEach items="${newsInternation}" var="newsinfo">
                    <div style="margin: 10px">
                        <span>${newsinfo.newsTitle}</span>
                    </div>
                </c:forEach>
            </div>
        </div>
    </div>
    <div class="right">
        <ul style="overflow: auto;">
            <li style="float: left;list-style: none;padding: 10px">
                <a href="index">
                    首页
                </a>
            </li>
            <c:forEach items="${NewsTypes}" var="newsType">
                <li style="float: left;list-style: none;padding: 10px">
                    <a href="index?id=${newsType.id}">
                        ${newsType.newsType}
                    </a>
                </li>
            </c:forEach>
        </ul>
        <hr/>
        <ul>
            <c:forEach items="${newsInfo}" var="newsinfo">
                <li style="margin: 10px">
                    <span style="float: left">
                        ${newsinfo.newsTitle}
                    </span>
                    <span style="float: right">
                        ${newsinfo.newsTime}
                    </span>
                </li>
            </c:forEach>
        </ul>
        <c:choose>
            <c:when test="${id == null}">
                <div style="overflow: auto;text-align: center">
                    <span style="float: left;margin-left: 100px">
                        <a href="index?pageAction=pre&&pageIndex=${pageIndex}">上一页</a>
                    </span>
                    <span>
                        ${pageIndex}/${newsMaxPage}
                    </span>
                    <span style="float: right;margin-right: 100px">
                        <a href="index?pageAction=next&&pageIndex=${pageIndex}">下一页</a>
                    </span>
                </div>
            </c:when>
            <c:otherwise>
                <div style="overflow: auto;text-align: center">
                    <span style="float: left;margin-left: 100px">
                        <a href="index?pageAction=pre&&pageIndex=${pageIndex}&&id=${id}">上一页</a>
                    </span>
                    <span>
                        ${pageIndex}/${newsMaxPage}
                    </span>
                    <span style="float: right;margin-right: 100px">
                        <a href="index?pageAction=next&&pageIndex=${pageIndex}&&id=${id}">下一页</a>
                    </span>
                </div>
            </c:otherwise>
        </c:choose>
    </div>
</div>
</body>
</html>
