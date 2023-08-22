<%@ page import="com.hh.service.NewsTypeService" %>
<%@ page import="com.hh.service.impl.NewsTypeServiceImpl" %>
<%@ page import="com.hh.entity.NewsType" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: H.Mr
  Date: 2023/8/2
  Time: 15:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<body>
<%
  request.setCharacterEncoding("utf-8");
  NewsTypeService service = new NewsTypeServiceImpl();
  int id = Integer.parseInt(request.getParameter("id"));
  NewsType newsType = service.getNewsTypeById(id);
  System.out.println(newsType);
%>
<jsp:include page="head.jsp" flush="true"/>
<div id="content_right" style="width:80%;height: 800px;float: left;background-color: moccasin;">
  <h3>请更新你的标题内容</h3>
  <form action="../controller/updateNewsTypeCtrl.jsp?id=<%=newsType.getId()%>" method="post">
    <input type="text" value="<%=newsType.getNewsType()%>" name="newsTypeName"/>
    <input type="submit" value="修改"/>
  </form>
</div>
</body>
</html>
