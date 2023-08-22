package com.hh.mapper;

import com.hh.entity.NewsInfo;
import com.hh.entity.NewsType;

import java.util.List;

public interface NewsMapper {
    // @Select("select * from newsinfo")
    // List<NewsInfo> getNews();

    List<NewsInfo> getNews();

    NewsType getNewsByTypes(int id);
}
