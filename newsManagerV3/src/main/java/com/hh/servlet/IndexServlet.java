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

@WebServlet(name = "IndexServlet",value = "/index")
public class IndexServlet extends HttpServlet {

    private static final int PAGE_SIZE = 3;

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        resp.setCharacterEncoding("utf-8");
        NewsTypeService service = new NewsTypeServiceImpl();
        NewsService newsService = new NewsServiceImpl();

        // 获取新闻类型
        List<NewsType> NewsTypes = service.getNewsTypes();
        // 获取新闻信息
        List<News> newsChina = newsService.getNewsByType(1);
        List<News> newsInternation = newsService.getNewsByType(2);
        List<News> newsInfo;
        String id = req.getParameter("id");
        String pageIndex = req.getParameter("pageIndex");
        String pageAction = req.getParameter("pageAction");
        int newsMaxPage;
        if (pageIndex == null) {
            pageIndex = "1";
        }
        if (id != null) {
            newsMaxPage = (int) Math.ceil((newsService.getNewsNumByType(Integer.parseInt(id)) * 1.0) / PAGE_SIZE);
            req.setAttribute("id", id);
            if (pageAction != null) {
                if (pageAction.equals("pre")) {
                    if (!pageIndex.equals("1")) {
                        pageIndex = String.valueOf((Integer.parseInt(pageIndex) - 1));
                    } else {
                        pageIndex = String.valueOf(newsMaxPage);
                    }
                } else if (pageAction.equals("next")) {
                    if (!pageIndex.equals(String.valueOf(newsMaxPage))) {
                        pageIndex = String.valueOf((Integer.parseInt(pageIndex) + 1));
                    } else {
                        pageIndex = "1";
                    }
                }
            }
            newsInfo = newsService.getNewsByTypeByPage(Integer.parseInt(id), PAGE_SIZE, Integer.parseInt(pageIndex));
        } else {
            newsMaxPage = (int) Math.ceil((newsService.getNewsNum() * 1.0) / PAGE_SIZE);
            if (pageAction != null) {
                if (pageAction.equals("pre")) {
                    if (!pageIndex.equals("1")) {
                        pageIndex = String.valueOf((Integer.parseInt(pageIndex) - 1));
                    } else {
                        pageIndex = String.valueOf(newsMaxPage);
                    }
                } else if (pageAction.equals("next")) {
                    if (!pageIndex.equals(String.valueOf(newsMaxPage))) {
                        pageIndex = String.valueOf((Integer.parseInt(pageIndex) + 1));
                    } else {
                        pageIndex = "1";
                    }
                }
            }
            newsInfo = newsService.getNewsByPage(PAGE_SIZE, Integer.parseInt(pageIndex));
        }
        req.setAttribute("pageIndex", pageIndex);
        req.setAttribute("newsMaxPage", newsMaxPage);
        req.setAttribute("NewsTypes", NewsTypes);
        req.setAttribute("newsChina", newsChina);
        req.setAttribute("newsInternation", newsInternation);
        req.setAttribute("newsInfo", newsInfo);
        req.getRequestDispatcher("index.jsp").forward(req, resp);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }
}
