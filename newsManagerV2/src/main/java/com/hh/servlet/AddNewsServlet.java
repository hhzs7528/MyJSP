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

@WebServlet(name = "AddNewsServlet",value = "/page/addNews")
public class AddNewsServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        resp.setCharacterEncoding("utf-8");
        NewsService service = new NewsServiceImpl();
        req.setCharacterEncoding("utf-8");
        String newsTitle = req.getParameter("newsTitle");
        String newsTime = req.getParameter("newsTime");
        String newsType = req.getParameter("newsType");
        String newsContent = req.getParameter("newsContent");
        String replace = newsTime.replace("T", " ");
        News news = new News();
        news.setNewsTitle(newsTitle);
        news.setNewsTime(replace);
        news.setNewsType(newsType);
        news.setNewsContent(newsContent);
        service.addNews(news);
        resp.sendRedirect("addNews.jsp");
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req,resp);
    }
}
