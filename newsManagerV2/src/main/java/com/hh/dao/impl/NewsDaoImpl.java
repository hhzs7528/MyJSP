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
}
