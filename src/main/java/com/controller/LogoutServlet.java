package com.controller;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/LogoutServlet")
public class LogoutServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Lấy session hiện tại
        HttpSession session = request.getSession(false); // false để không tạo session mới nếu chưa có
        if (session != null) {
            session.invalidate(); // Xóa session hiện tại
        }
        // Chuyển hướng về trang login
        response.sendRedirect("index.jsp");
    }
}
