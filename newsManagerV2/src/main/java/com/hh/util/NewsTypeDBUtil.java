package com.hh.util;

import com.hh.entity.NewsType;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class NewsTypeDBUtil {
    public static List<NewsType> getNesTypes(){
        List<NewsType> NewsTypes = new ArrayList<>();
        String sql = "select * from newsType";
        Connection conn = DBUtil.getConn();
        try {
            PreparedStatement statement = conn.prepareStatement(sql);
            ResultSet resultSet = statement.executeQuery();
            while (resultSet.next()) {
                int id = resultSet.getInt(1);
                String newsType = resultSet.getString(2);
                NewsTypes.add(new NewsType(id, newsType));
            }
            DBUtil.closeAll(conn, statement, resultSet);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return NewsTypes;
    }

    public static boolean addNewsType(NewsType newsType){
        Connection conn = DBUtil.getConn();
        PreparedStatement statement = null;
        String sql = "insert into newstype (newsType) values (?)";
        boolean flag = false;
        try {
            if (conn != null) statement = conn.prepareStatement(sql);
            if (statement != null){
                statement.setString(1, newsType.getNewsType());
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

    public static int delNewsTypeById(int id) {
        int flag = 0;
        String ERROR_MSG = "foreign key constraint fails";
        String sql = "delete from newstype where id = ?";
        Connection conn = DBUtil.getConn();
        PreparedStatement statement = null;
        try {
            if (conn != null) statement = conn.prepareStatement(sql);
            if (statement != null) {
                statement.setInt(1, id);
                flag = statement.executeUpdate();
            }
        } catch (SQLException e) {
            System.err.println(e.getMessage());
            if (e.getMessage().contains(ERROR_MSG)) {
                flag = 2;
            }
        }
        DBUtil.closeAll(conn, statement, null);
        return flag;
    }

    public static NewsType getNewsTypeById(int id){
        NewsType newsType = null;
        String sql = "select id, newsType from newsType where id = ?";
        Connection conn = DBUtil.getConn();
        PreparedStatement statement = null;
        ResultSet resultSet = null;
        try {
            if (conn != null) statement = conn.prepareStatement(sql);
            if (statement != null){
                statement.setInt(1, id);
                resultSet = statement.executeQuery();
                while (resultSet.next()) {
                    int newId = resultSet.getInt(1);
                    String type = resultSet.getString(2);
                    newsType = new NewsType(newId, type);
                }
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        DBUtil.closeAll(conn, statement, resultSet);
        return newsType;
    }

    public static boolean updateNewsType(NewsType newsType){
        Connection conn = DBUtil.getConn();
        PreparedStatement statement = null;
        String sql = "update newstype set newsType=? where id=?";
        boolean flag = false;
        try {
            if (conn != null) statement = conn.prepareStatement(sql);
            if (statement != null){
                statement.setInt(2, newsType.getId());
                statement.setString(1, newsType.getNewsType());
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
}
