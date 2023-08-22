package com.hh.servlet;

import com.hh.entity.News;
import com.hh.entity.NewsType;
import com.hh.service.NewsService;
import com.hh.service.NewsTypeService;
import com.hh.service.impl.NewsServiceImpl;
import com.hh.service.impl.NewsTypeServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "AdminManagerServlet",value = "/page/admin")
public class AdminManagerServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        resp.setCharacterEncoding("utf-8");
        NewsTypeService service = new NewsTypeServiceImpl();
        NewsService newsService = new NewsServiceImpl();
        String action = req.getParameter("action");
        if (action == null) {
            List<NewsType> NewsTypes = service.getNewsTypes();
            req.setAttribute("NewsTypes", NewsTypes);
            req.getRequestDispatcher("addNews.jsp").forward(req, resp);
        } else {
            if (action.equals("addNews")){
                List<NewsType> NewsTypes = service.getNewsTypes();
                req.setAttribute("NewsTypes", NewsTypes);
                req.getRequestDispatcher("addNews.jsp").forward(req, resp);
            }else if (action.equals("addNewsType")){
                req.getRequestDispatcher("addNewsType.jsp").forward(req, resp);
            }else if (action.equals("updateNews")){
                // 获取新闻信息
                List<News> newsInfo = newsService.getNewsInfo();
                req.setAttribute("newsInfo", newsInfo);
                req.getRequestDispatcher("updateNews.jsp").forward(req, resp);
            } else if (action.equals("updateNewsInfo")) {
                int id = Integer.parseInt(req.getParameter("id"));
                List<NewsType> NewsTypes = service.getNewsTypes();
                News news = newsService.getNewsById(id);
                req.setAttribute("NewsTypes",NewsTypes);
                req.setAttribute("news",news);
                req.getRequestDispatcher("updateNewsInfo.jsp").forward(req, resp);
            } else if (action.equals("updateNewsType")) {
                List<NewsType> newsTypes = service.getNewsTypes();
                req.setAttribute("newsTypes", newsTypes);
                req.getRequestDispatcher("updateNewsType.jsp").forward(req, resp);
            } else if (action.equals("updateNewsTypeInfo")) {
                int id = Integer.parseInt(req.getParameter("id"));
                NewsType newsType = service.getNewsTypeById(id);
                req.setAttribute("newsType", newsType);
                req.getRequestDispatcher("updateNewsTypeInfo.jsp").forward(req, resp);
            }
        }
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }
}
