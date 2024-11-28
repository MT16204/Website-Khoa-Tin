package com.controller;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.connection.*;

@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Lấy dữ liệu từ form đăng ký
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String email = request.getParameter("email");

        // Kiểm tra xem các trường có rỗng không
        if (username == null || password == null || email == null) {
            request.setAttribute("message", "Vui lòng điền đầy đủ thông tin.");
            request.setAttribute("messageType", "error");
            RequestDispatcher dispatcher = request.getRequestDispatcher("register.jsp");
            dispatcher.forward(request, response);
            return;
        }

        // Lấy kết nối từ DatabaseConnection
        DatabaseConnection dbConn = new DatabaseConnection();
        try (Connection conn = dbConn.getConnection()) {
            if (conn != null) {
                // Kiểm tra xem tài khoản đã tồn tại chưa
                String checkUserQuery = "SELECT * FROM users WHERE username = ?";
                PreparedStatement checkUserStmt = conn.prepareStatement(checkUserQuery);
                checkUserStmt.setString(1, username);
                ResultSet userResult = checkUserStmt.executeQuery();

                if (userResult.next()) {
                    // Tài khoản đã tồn tại
                    request.setAttribute("message", "Tài khoản đã tồn tại!");
                    request.setAttribute("messageType", "error");
                    RequestDispatcher dispatcher = request.getRequestDispatcher("register.jsp");
                    dispatcher.forward(request, response);
                } else {
                    // Thêm người dùng vào cơ sở dữ liệu
                    String insertUserQuery = "INSERT INTO users (username, password, email, role) VALUES (?, ?, ?, ?)";
                    PreparedStatement insertUserStmt = conn.prepareStatement(insertUserQuery);
                    insertUserStmt.setString(1, username);
                    insertUserStmt.setString(2, password); // Thực tế bạn nên mã hóa mật khẩu trước khi lưu vào CSDL
                    insertUserStmt.setString(3, email);
                    insertUserStmt.setString(4, "user");  // Mặc định role là "user"
                    
                    int rowsAffected = insertUserStmt.executeUpdate();
                    if (rowsAffected > 0) {
                        // Đăng ký thành công
                        request.setAttribute("message", "Đăng ký thành công! Bạn có thể đăng nhập ngay.");
                        request.setAttribute("messageType", "success");
                        RequestDispatcher dispatcher = request.getRequestDispatcher("login.jsp");
                        dispatcher.forward(request, response);
                    } else {
                        // Lỗi trong quá trình thêm người dùng
                        request.setAttribute("message", "Đã có lỗi xảy ra, vui lòng thử lại.");
                        request.setAttribute("messageType", "error");
                        RequestDispatcher dispatcher = request.getRequestDispatcher("register.jsp");
                        dispatcher.forward(request, response);
                    }
                }
            } else {
                response.getWriter().println("Lỗi: Không thể kết nối đến cơ sở dữ liệu!");
            }
        } catch (SQLException e) {
            e.printStackTrace();
            response.getWriter().println("Lỗi trong quá trình xử lý đăng ký: " + e.getMessage());
        }
    }
}
