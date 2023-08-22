package com.hh.dao.impl;

import com.hh.dao.NewsTypeDao;
import com.hh.entity.NewsType;
import com.hh.util.NewsTypeDBUtil;

import java.util.List;

public class NewsTypeDaoImpl implements NewsTypeDao {

    public List<NewsType> getNewsTypes() {
        return NewsTypeDBUtil.getNesTypes();
    }

    @Override
    public int delNewsTypeById(int id) {
        return NewsTypeDBUtil.delNewsTypeById(id);
    }

    @Override
    public NewsType getNewsTypeById(int id) {
        return NewsTypeDBUtil.getNewsTypeById(id);
    }

    @Override
    public boolean updateNewsType(NewsType newsType) {
        return NewsTypeDBUtil.updateNewsType(newsType);
    }

    @Override
    public boolean addNewsType(NewsType newsType) {
        return NewsTypeDBUtil.addNewsType(newsType);
    }
}
