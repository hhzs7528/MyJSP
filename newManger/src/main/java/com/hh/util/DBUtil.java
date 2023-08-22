package com.hh.util;

import com.hh.entity.News;

import java.sql.*;
import java.util.List;

public class DBUtil {
    private static final String DRIVER = "com.mysql.cj.jdbc.Driver";

    private static final String URL = "jdbc:mysql://localhost:3306/News";
    private static final String USERNAME = "root";
    private static final String PASSWORD = "123456";


    public static Connection getConn(){
        try {
            Class.forName(DRIVER);
            return DriverManager.getConnection(URL, USERNAME, PASSWORD);
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }
        return null;
    }

    public static void closeAll(Connection conn, PreparedStatement statement, ResultSet resultSet){
        try {
            if (conn != null) conn.close();
        } catch (SQLException e) {
            System.err.println(e.getMessage());
        }
        try {
            if (statement != null) statement.close();
        } catch (SQLException e) {
            System.err.println(e.getMessage());
        }
        try {
            if (resultSet != null) resultSet.close();
        } catch (SQLException e) {
            System.err.println(e.getMessage());
        }
    }
}
