package com.hh.servlet;

import com.hh.service.NewsTypeService;
import com.hh.service.impl.NewsTypeServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "DelNewsTypeServlet",value = "/page/delNewsType")
public class DelNewsTypeServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        resp.setCharacterEncoding("utf-8");
        int id = Integer.parseInt(req.getParameter("id"));
        NewsTypeService service = new NewsTypeServiceImpl();
        service.delNewsTypeById(id);
        resp.sendRedirect("updateNewsType.jsp");
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }
}
