<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<%--
  Created by IntelliJ IDEA.
  User: H.Mr
  Date: 2023/8/2
  Time: 15:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<body>
<jsp:include page="head.jsp" flush="true"/>
<div id="content_right" style="width:80%;height: 800px;float: left;background-color: moccasin;">
  <h3>请更新你的标题内容</h3>
  <form action="./updateNewsType?id=${newsType.id}" method="post">
    <input type="text" value="${newsType.newsType}" name="newsTypeName"/>
    <input type="submit" value="修改"/>
  </form>
</div>
</body>
</html>
