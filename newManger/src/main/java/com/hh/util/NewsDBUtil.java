package com.hh.util;

import com.hh.entity.News;
import com.hh.entity.NewsType;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class NewsDBUtil {

    public static List<News> getNewsInfo(){
        List<News> newsInfo = new ArrayList<>();
        String sql = "select newsinfo.id,newsTitle,newsTime,newsContent,newsType.newsType from newsInfo,newsType where newsinfo.newsType= newsType.id";
        Connection conn = DBUtil.getConn();
        PreparedStatement statement = null;
        ResultSet resultSet = null;
        try {
            if (conn != null) statement = conn.prepareStatement(sql);
            if (statement != null){
                resultSet = statement.executeQuery();
                while (resultSet.next()) {
                    int id = resultSet.getInt(1);
                    String newsTitle = resultSet.getString(2);
                    String newsTime = resultSet.getString(3);
                    String newsContent = resultSet.getString(4);
                    String newsType = resultSet.getString(5);
                    newsInfo.add(new News(id, newsTitle, newsTime, newsContent, newsType));
                }
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        DBUtil.closeAll(conn, statement, resultSet);
        return newsInfo;
    }

    public static boolean addNews(News news){
        Connection conn = DBUtil.getConn();
        PreparedStatement statement = null;
        String sql = "insert into newsinfo (newsTitle, newsTime, newsContent, newsType) values (?,?,?,?)";
        boolean flag = false;
        try {
            if (conn != null) statement = conn.prepareStatement(sql);
            if (statement != null){
                statement.setString(1, news.getNewsTitle());
                statement.setString(2, news.getNewsTime());
                statement.setString(3, news.getNewsContent());
                List<NewsType> newsTypes = NewsTypeDBUtil.getNesTypes();
                boolean temp = false;
                for (NewsType nesType : newsTypes) {
                    if (news.getNewsType().equals(nesType.getNewsType())){
                        statement.setInt(4,nesType.getId());
                        temp = true;
                    }
                }
                if (!temp){
                    statement.setInt(4,newsTypes.get(0).getId());
                }
                int i = statement.executeUpdate();
                if (i==1){
                    flag = true;
                }
            }
        } catch (SQLException e) {
            System.err.println(e.getMessage());
        }
        DBUtil.closeAll(conn, statement, null);
        return flag;
    }

    public static boolean updateNews(News news){
        Connection conn = DBUtil.getConn();
        PreparedStatement statement = null;
        String sql = "update newsinfo set newsTitle=?,newsTime=?, newsContent=?, newsType=? where id=?";
        try {
            if (conn != null) statement = conn.prepareStatement(sql);
            if (statement != null){
                statement.setInt(5, news.getId());
                statement.setString(1, news.getNewsTitle());
                statement.setString(2, news.getNewsTime());
                statement.setString(3, news.getNewsContent());
                List<NewsType> newsTypes = NewsTypeDBUtil.getNesTypes();
                boolean flag = false;
                for (NewsType nesType : newsTypes) {
                    if (news.getNewsType().equals(nesType.getNewsType())){
                        statement.setInt(4,nesType.getId());
                        flag = true;
                    }
                }
                if (!flag){
                    statement.setInt(4,newsTypes.get(0).getId());
                }
                int i = statement.executeUpdate();
                DBUtil.closeAll(conn, statement, null);
                if (i==1){
                    return true;
                }
            }
        } catch (SQLException e) {
            System.err.println(e.getMessage());
        }
        DBUtil.closeAll(conn, statement, null);
        return false;
    }

    public static News getNewsById(int id){
        News news = null;
        String sql = "select newsTitle,newsTime,newsContent,newsType.newsType from newsInfo,newsType where newsinfo.newsType= newsType.id and newsinfo.id = ?";
        Connection conn = DBUtil.getConn();
        PreparedStatement statement = null;
        ResultSet resultSet = null;
        try {
            if (conn != null) statement = conn.prepareStatement(sql);
            if (statement != null){
                statement.setInt(1, id);
                resultSet = statement.executeQuery();
                while (resultSet.next()) {
                    String newsTitle = resultSet.getString(1);
                    String newsTime = resultSet.getString(2);
                    String newsContent = resultSet.getString(3);
                    String newsType = resultSet.getString(4);
                    news = new News(id, newsTitle, newsTime, newsContent, newsType);
                }
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        DBUtil.closeAll(conn, statement, resultSet);
        return news;
    }

    public static boolean delNewsById(int id) {
        String sql = "delete from newsinfo where id = ?";
        Connection conn = DBUtil.getConn();
        PreparedStatement statement = null;
        try {
            if (conn != null) statement = conn.prepareStatement(sql);
            if (statement != null) {
                statement.setInt(1, id);
                int i = statement.executeUpdate();
                DBUtil.closeAll(conn, statement, null);
                if (i == 1) {
                    return true;
                }
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        DBUtil.closeAll(conn, statement, null);
        return false;
    }

    public static List<News> getNewsByType(int id){
        List<News> newsInfo = new ArrayList<>();
        String sql = "select newsinfo.id,newsTitle,newsTime,newsContent,newsType.newsType from newsInfo,newsType where newsinfo.newsType = newsType.id and newsinfo.newsType=?";
        Connection conn = DBUtil.getConn();
        PreparedStatement statement = null;
        ResultSet resultSet = null;
        try {
            if (conn != null) statement = conn.prepareStatement(sql);
            if (statement != null){
                statement.setInt(1, id);
                resultSet = statement.executeQuery();
                while (resultSet.next()) {
                    int newsId = resultSet.getInt(1);
                    String newsTitle = resultSet.getString(2);
                    String newsTime = resultSet.getString(3);
                    String newsContent = resultSet.getString(4);
                    String newsType = resultSet.getString(5);
                    newsInfo.add(new News(newsId, newsTitle, newsTime, newsContent, newsType));
                }
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        DBUtil.closeAll(conn, statement, resultSet);
        return newsInfo;
    }

}
