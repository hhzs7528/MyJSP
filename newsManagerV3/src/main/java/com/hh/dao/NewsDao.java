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

    /**
     * 获取新闻分页面
     *
     * @param pageSize
     * @param pageIndex 页面索引
     * @return {@link List}<{@link News}>
     */
    List<News> getNewsByPage(int pageSize, int pageIndex);

    /**
     * 获取新闻数量
     *
     * @return int
     */
    int getNewsNum();

    /**
     * 获取新闻数量通过类型
     *
     * @param id id
     * @return int
     */
    int getNewsNumByType(int id);

    /**
     * 获取新闻通过类型分页面
     *
     * @param id        id
     * @param pageSize  页面大小
     * @param pageIndex 页面索引
     * @return {@link List}<{@link News}>
     */
    List<News> getNewsByTypeByPage(int id, int pageSize, int pageIndex);
}
