package com.connection;

import java.io.*;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class DatabaseConnection {
    public static Connection getConnection() {
        try {
            // Đảm bảo rằng URL, username và password là chính xác
            String dbUrl = "jdbc:mysql://localhost:3306/ck1"; // database 
            String dbUsername = "root"; // username 
            String dbPassword = " "; // mật khẩu 

            // Tải driver JDBC
            Class.forName("com.mysql.cj.jdbc.Driver");
            return DriverManager.getConnection(dbUrl, dbUsername, dbPassword);
        } catch (Exception e) {
            e.printStackTrace();
            return null; 
        }
    }

// Hàm kiểm tra và in thông báo kết nối
public void testConnection() {
    try (Connection conn = getConnection()) {
        if (conn != null) {
            System.out.println("Kết nối cơ sở dữ liệu thành công!");
        } else {
            System.out.println("Kết nối cơ sở dữ liệu thất bại!");
        }
    } catch (SQLException e) {
        System.out.println("Lỗi trong quá trình kiểm tra kết nối!");
        e.printStackTrace();
    }
}

public static void main(String[] args) {
    DatabaseConnection dbConn = new DatabaseConnection();
    dbConn.testConnection(); // Gọi hàm kiểm tra kết nối
}
}