package com.hh.dao;

import com.hh.entity.News;

import java.util.List;

public interface NewsDao {
    /**
     * 获取新闻信息
     *
     * @return {@link List}<{@link News}>
     */
    List<News> getNewsInfo();

    /**
     * 添加新闻
     *
     * @param news 新闻
     * @return boolean
     */
    boolean addNews(News news);

    /**
     * 更新新闻
     *
     * @param news 新闻
     * @return boolean
     */
    boolean updateNews(News news);

    /**
     * 通过id获取新闻
     *
     * @param id id
     * @return {@link News}
     */
    News getNewsById(int id);

    /**
     * 删除新闻通过id
     *
     * @param id id
     * @return boolean
     */
    boolean delNewsById(int id);

    /**
     * 获取新闻通过类型
     *
     * @param id id
     * @return {@link List}<{@link News}>
     */
    List<News> getNewsByType(int id);
}
