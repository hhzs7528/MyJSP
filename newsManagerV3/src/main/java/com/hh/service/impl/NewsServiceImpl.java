package com.hh.service.impl;

import com.hh.dao.NewsDao;
import com.hh.dao.impl.NewsDaoImpl;
import com.hh.entity.News;
import com.hh.service.NewsService;

import java.util.List;

public class NewsServiceImpl implements NewsService {
    NewsDao dao = new NewsDaoImpl();

    @Override
    public List<News> getNewsInfo() {
        return dao.getNewsInfo();
    }

    @Override
    public boolean addNews(News news) {
        return dao.addNews(news);
    }

    @Override
    public boolean updateNews(News news) {
        return dao.updateNews(news);
    }

    @Override
    public News getNewsById(int id) {
        return dao.getNewsById(id);
    }

    @Override
    public boolean delNewsById(int id) {
        return dao.delNewsById(id);
    }

    @Override
    public List<News> getNewsByType(int id) {
        return dao.getNewsByType(id);
    }

    @Override
    public List<News> getNewsByPage(int pageSize, int pageIndex) {
        return dao.getNewsByPage(pageSize, pageIndex);
    }

    @Override
    public int getNewsNum() {
        return dao.getNewsNum();
    }

    @Override
    public int getNewsNumByType(int id) {
        return dao.getNewsNumByType(id);
    }

    @Override
    public List<News> getNewsByTypeByPage(int id, int pageSize, int pageIndex) {
        return dao.getNewsByTypeByPage(id, pageSize, pageIndex);
    }

}
