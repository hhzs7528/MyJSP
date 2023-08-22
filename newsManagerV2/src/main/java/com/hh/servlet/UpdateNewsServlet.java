package com.hh.servlet;

import com.hh.entity.News;
import com.hh.service.NewsService;
import com.hh.service.impl.NewsServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "UpdateNewsServlet",value = "/page/updateNews")
public class UpdateNewsServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        resp.setCharacterEncoding("utf-8");
        int id = Integer.parseInt(req.getParameter("id"));
        NewsService service = new NewsServiceImpl();
        News news = service.getNewsById(id);
        System.out.println(news);
        String newsTitle = req.getParameter("newsTitle");
        String newsTime = req.getParameter("newsTime").replace("T", " ");
        String newsType = req.getParameter("newsType");
        String newsContent = req.getParameter("newsContent").trim();
        news.setNewsTitle(newsTitle);
        news.setNewsTime(newsTime);
        news.setNewsType(newsType);
        news.setNewsContent(newsContent);
        System.out.println(news);
        service.updateNews(news);
        resp.sendRedirect("updateNews.jsp");
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }
}
