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
    <h3>请输入你要添加的新闻标题</h3>
    <form action="../controller/addNewsTypeCtrl.jsp" method="post">
        <input type="text" name="newsTypeName"/>
        <br/>
        <input type="submit" value="提交">
    </form>
</div>
</body>
</html>
