package com.hh.service.impl;

import com.hh.dao.NewsTypeDao;
import com.hh.dao.impl.NewsTypeDaoImpl;
import com.hh.entity.NewsType;
import com.hh.service.NewsTypeService;

import java.util.List;

public class NewsTypeServiceImpl implements NewsTypeService {
    NewsTypeDao dao = new NewsTypeDaoImpl();

    public List<NewsType> getNewsTypes() {
        return dao.getNewsTypes();
    }

    @Override
    public int delNewsTypeById(int id) {
        return dao.delNewsTypeById(id);
    }

    @Override
    public NewsType getNewsTypeById(int id) {
        return dao.getNewsTypeById(id);
    }

    @Override
    public boolean updateNewsType(NewsType newsType) {
        return dao.updateNewsType(newsType);
    }

    @Override
    public boolean addNewsType(NewsType newsType) {
        return dao.addNewsType(newsType);
    }
}
