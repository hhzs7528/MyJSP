<%--
  Created by IntelliJ IDEA.
  User: H.Mr
  Date: 2023/8/1
  Time: 16:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    // 遍历所有的 Cookie，查找名为 "username" 的 Cookie
    String username = null;
    Cookie[] cookies = request.getCookies();
    if (cookies != null) {
        for (Cookie cookie : cookies) {
            if (cookie.getName().equals("username")) {
                username = cookie.getValue();
                break;
            }
        }
    }
%>
<html>
<body>
<div style="height: 100px;background-color:brown;text-align: center">
    <span style="font-size: 70px">新闻中国N</span>
    <span style="font-size: 55px">Ews</span>
</div>
<div style="height: 25px;background-color: skyblue;">
    <span style="margin: 0 40px;">管理员:<%=username%>,您好!</span>
    <a href="../index.jsp">返回首页</a>
    <a style="float: right" href="./logout">login out</a>
</div>
<div style="width:20%;height: 800px;text-align: center;float: left;background-color: cadetblue;">
    <ul>
        <li style="list-style: none;margin-top: 20px;margin-left: -40px;">
            <a href="addNews.jsp">
                <p>添加新闻</p>
            </a>
        </li>
        <li style="list-style: none;margin-top: 20px;margin-left: -40px;">
            <a href="updateNews.jsp">
                <p>编辑新闻</p>
            </a>
        </li>
        <li style="list-style: none;margin-top: 20px;margin-left: -40px;">
            <a href="addNewsType.jsp">
                <p>添加主题</p>
            </a>
        </li>
        <li style="list-style: none;margin-top: 20px;margin-left: -40px;">
            <a href="updateNewsType.jsp">
                <p>编辑主题</p>
            </a>
        </li>
    </ul>
</div>
</body>
</html>
