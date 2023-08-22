package com.hh.service;

import com.hh.entity.News;

import java.util.List;

public interface NewsService {
    List<News> getNewsInfo();
    boolean addNews(News news);
    boolean updateNews(News news);
    News getNewsById(int id);
    boolean delNewsById(int id);
    List<News> getNewsByType(int id);

    List<News> getNewsByPage(int pageSize, int pageIndex);

    int getNewsNum();

    int getNewsNumByType(int id);

    List<News> getNewsByTypeByPage(int id, int pageSize, int pageIndex);

}
