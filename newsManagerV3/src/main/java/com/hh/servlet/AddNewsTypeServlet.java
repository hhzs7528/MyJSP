package com.hh.servlet;

import com.hh.entity.NewsType;
import com.hh.service.NewsTypeService;
import com.hh.service.impl.NewsTypeServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "AddNewsTypeServlet",value = "/page/addNewsType")
public class AddNewsTypeServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        resp.setCharacterEncoding("utf-8");
        NewsTypeService service = new NewsTypeServiceImpl();
        String newsTypeName = req.getParameter("newsTypeName");
        NewsType newsType = new NewsType();
        newsType.setNewsType(newsTypeName);
        service.addNewsType(newsType);
        resp.sendRedirect("admin?action=addNewsType");
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }
}
