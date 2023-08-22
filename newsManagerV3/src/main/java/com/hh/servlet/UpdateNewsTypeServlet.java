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

@WebServlet(name = "UpdateNewsTypeServlet",value = "/page/updateNewsType")
public class UpdateNewsTypeServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        resp.setCharacterEncoding("utf-8");
        String newsTypeName = req.getParameter("newsTypeName");
        String id = req.getParameter("id");
        System.out.println(id);
        System.out.println(newsTypeName);
        NewsTypeService service = new NewsTypeServiceImpl();
        NewsType newsType = service.getNewsTypeById(Integer.parseInt(id));
        newsType.setNewsType(newsTypeName);
        service.updateNewsType(newsType);
        resp.sendRedirect("admin?action=updateNewsType");
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }
}
