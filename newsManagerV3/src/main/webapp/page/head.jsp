<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<%--
  Created by IntelliJ IDEA.
  User: H.Mr
  Date: 2023/8/1
  Time: 16:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<body>
<div style="height: 100px;background-color:brown;text-align: center">
    <span style="font-size: 70px">新闻中国N</span>
    <span style="font-size: 55px">Ews</span>
</div>
<div style="height: 25px;background-color: skyblue;">
    <span style="margin: 0 40px;">管理员:${cookie.username.value},您好!</span>
    <a href="../index">返回首页</a>
    <a style="float: right" href="./logout">login out</a>
</div>
<div style="width:20%;height: 800px;text-align: center;float: left;background-color: cadetblue;">
    <ul>
        <li style="list-style: none;margin-top: 20px;margin-left: -40px;">
            <a href="./admin?action=addNews">
                <p>添加新闻</p>
            </a>
        </li>
        <li style="list-style: none;margin-top: 20px;margin-left: -40px;">
            <a href="./admin?action=updateNews">
                <p>编辑新闻</p>
            </a>
        </li>
        <li style="list-style: none;margin-top: 20px;margin-left: -40px;">
            <a href="./admin?action=addNewsType">
                <p>添加主题</p>
            </a>
        </li>
        <li style="list-style: none;margin-top: 20px;margin-left: -40px;">
            <a href="./admin?action=updateNewsType">
                <p>编辑主题</p>
            </a>
        </li>
    </ul>
</div>
</body>
</html>
