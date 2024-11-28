package com.connection;

import java.io.*;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class DatabaseConnection {
    public Connection getConnection() {
        try {
            // Đảm bảo rằng URL, username và password là chính xác
            String dbUrl = "jdbc:mysql://localhost:3306/tinhoc"; // Thay đổi theo URL cơ sở dữ liệu của bạn
            String dbUsername = "root"; // Thay đổi username của bạn
            String dbPassword = "tuan16204"; // Thay đổi mật khẩu của bạn

            // Tải driver JDBC
            Class.forName("com.mysql.cj.jdbc.Driver");
            return DriverManager.getConnection(dbUrl, dbUsername, dbPassword);
        } catch (Exception e) {
            e.printStackTrace();
            return null; // Trả về null nếu không thể kết nối
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
