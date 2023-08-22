package com.hh.dao.impl;

import com.hh.dao.NewsDao;
import com.hh.entity.News;
import com.hh.util.NewsDBUtil;

import java.util.List;

public class NewsDaoImpl implements NewsDao {

    public List<News> getNewsInfo() {
        return NewsDBUtil.getNewsInfo();
    }

    @Override
    public boolean addNews(News news) {
        return NewsDBUtil.addNews(news);
    }

    @Override
    public boolean updateNews(News news) {
        return NewsDBUtil.updateNews(news);
    }

    @Override
    public News getNewsById(int id) {
        return NewsDBUtil.getNewsById(id);
    }

    @Override
    public boolean delNewsById(int id) {
        return NewsDBUtil.delNewsById(id);
    }

    @Override
    public List<News> getNewsByType(int id) {
        return NewsDBUtil.getNewsByType(id);
    }

    @Override
    public List<News> getNewsByPage(int pageSize, int pageIndex) {
        return NewsDBUtil.getNewsByPage(pageSize, pageIndex);
    }

    @Override
    public int getNewsNum() {
        return NewsDBUtil.getNewsNum();
    }

    @Override
    public int getNewsNumByType(int id) {
        return NewsDBUtil.getNewsNumByType(id);
    }

    @Override
    public List<News> getNewsByTypeByPage(int id, int pageSize, int pageIndex) {
        return NewsDBUtil.getNewsByTypeByPage(id, pageSize, pageIndex);
    }
}
