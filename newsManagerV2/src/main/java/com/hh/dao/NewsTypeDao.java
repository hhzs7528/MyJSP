package com.hh.dao;

import com.hh.entity.NewsType;

import java.util.List;

public interface NewsTypeDao {
    List<NewsType> getNewsTypes();

    int delNewsTypeById(int id);

    NewsType getNewsTypeById(int id);

    boolean updateNewsType(NewsType newsType);

    boolean addNewsType(NewsType newsType);
}
