<%@ page import="com.hh.service.NewsService" %>
<%@ page import="com.hh.service.impl.NewsServiceImpl" %>
<%@ page import="com.hh.service.NewsTypeService" %>
<%@ page import="com.hh.service.impl.NewsTypeServiceImpl" %><%--
  Created by IntelliJ IDEA.
  User: H.Mr
  Date: 2023/8/2
  Time: 15:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<body>
<%
  int id = Integer.parseInt(request.getParameter("id"));
  NewsTypeService service = new NewsTypeServiceImpl();
  int flag = service.delNewsTypeById(id);
  if (flag == 0){
%>
<script>window.alert("删除失败");</script>
<%
  }else if (flag == 1){
    response.sendRedirect("../page/updateNewsType.jsp");
  }else if (flag == 2){
%>
<script>window.alert("该主题下还有文章，不能删除！");</script>
<%}%>
<a href="../page/updateNewsType.jsp">
  返回
</a>
</body>
</html>
