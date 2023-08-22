package com.hh.service;

import com.hh.entity.NewsType;

import java.util.List;

public interface NewsTypeService {
    /**
     * 获取新闻类型
     *
     * @return {@link List}<{@link NewsType}>
     */
    List<NewsType> getNewsTypes();

    /**
     * 删除新闻类型通过id
     *
     * @param id id
     * @return int
     */
    int delNewsTypeById(int id);

    /**
     * 通过id获取新闻类型
     *
     * @param id id
     * @return {@link NewsType}
     */
    NewsType getNewsTypeById(int id);

    /**
     * 更新新闻类型
     *
     * @param newsType 消息类型
     * @return boolean
     */
    boolean updateNewsType(NewsType newsType);

    /**
     * 添加新闻类型
     *
     * @param newsType 消息类型
     * @return boolean
     */
    boolean addNewsType(NewsType newsType);
}
