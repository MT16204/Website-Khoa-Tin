package com.controller;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.connection.*;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        // Lấy kết nối từ DatabaseConnection
        DatabaseConnection dbConn = new DatabaseConnection();
        try (Connection conn = dbConn.getConnection()) {
            if (conn != null) {
                // Kiểm tra nếu tài khoản tồn tại
                String checkUserQuery = "SELECT * FROM users WHERE username = ?";
                PreparedStatement checkUserStmt = conn.prepareStatement(checkUserQuery);
                checkUserStmt.setString(1, username);
                ResultSet userResult = checkUserStmt.executeQuery();

                if (!userResult.next()) {
                    // Tài khoản không tồn tại
                    request.setAttribute("errorMessage", "✖ Tài khoản không tồn tại!");
                    RequestDispatcher dispatcher = request.getRequestDispatcher("login.jsp");
                    dispatcher.forward(request, response);
                } else {
                    // Kiểm tra mật khẩu
                    String checkPasswordQuery = "SELECT * FROM users WHERE username = ? AND password = ?";
                    PreparedStatement checkPasswordStmt = conn.prepareStatement(checkPasswordQuery);
                    checkPasswordStmt.setString(1, username);
                    checkPasswordStmt.setString(2, password);
                    ResultSet passwordResult = checkPasswordStmt.executeQuery();

                    if (passwordResult.next()) {
                        // Đăng nhập thành công
                        HttpSession session = request.getSession();
                        session.setAttribute("username", username);
                        // Lấy role để chuyển hướng đến trang phù hợp
                        String role = passwordResult.getString("role");
                        if (role.equals("admin")) {
                            response.sendRedirect("HomeControl");  // Trang quản lý admin
                        } else {
                            response.sendRedirect("user.jsp");  // Trang dành cho user
                        }
                    } else {
                        // Sai mật khẩu
                        request.setAttribute("errorMessage", "✖ Mật khẩu không đúng!");
                        RequestDispatcher dispatcher = request.getRequestDispatcher("login.jsp");
                        dispatcher.forward(request, response);
                    }
                }
            } else {
                response.getWriter().println("Lỗi: Không thể kết nối đến cơ sở dữ liệu!");
            }
        } catch (SQLException e) {
            e.printStackTrace();
            response.getWriter().println("Lỗi trong quá trình xử lý đăng nhập: " + e.getMessage());
        }
    }
}
