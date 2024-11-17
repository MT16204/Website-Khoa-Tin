package com.controller;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        if (checkLogin(username, password)) {
            HttpSession session = request.getSession();
            session.setAttribute("username", username);
            response.sendRedirect("index.jsp");
        } else {
            request.setAttribute("errorMessage", "Tên đăng nhập hoặc mật khẩu không đúng!");
            request.getRequestDispatcher("login.jsp").forward(request, response);
        }
    }

    private boolean checkLogin(String username, String password) {
        boolean isValid = false;
        try (Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/CK_WEB", "root", "tuan16204");
             PreparedStatement ps = conn.prepareStatement("SELECT * FROM taikhoan WHERE username=? AND password=?")) {
            ps.setString(1, username);
            ps.setString(2, password);
            ResultSet rs = ps.executeQuery();
            isValid = rs.next();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return isValid;
    }
}
