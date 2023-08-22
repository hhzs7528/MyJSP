package com.hh.util;

import com.hh.entity.NewsInfo;
import com.hh.entity.NewsType;
import com.hh.mapper.NewsMapper;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import java.io.IOException;
import java.io.InputStream;
import java.util.List;

public class MybatisUtil {
    static NewsMapper mapper;
    static {
        /*1.读取配置文件*/
        InputStream is = null;
        try {
            is = Resources.getResourceAsStream("mybatis-config.xml");
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
        /*2.解析配置文件*/
        SqlSessionFactory sqlSessionFactory = new SqlSessionFactoryBuilder().build(is);
        /*3.获取操作数据库的对象*/
        SqlSession sqlSession = sqlSessionFactory.openSession();
        /*4.获取代理对象*/
        mapper = sqlSession.getMapper(NewsMapper.class);
    }

    public static List<NewsInfo> findAll() {
        return mapper.getNews();
    }

    public static NewsType findNewsByNewsType(int id) {
        return mapper.getNewsByTypes(id);
    }

}
