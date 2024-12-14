package com.controller;

import java.io.File;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import com.dao.*;
@WebServlet("/addcc")
public class addcc extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public addcc() {
        super();
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ProcessRequest(request, response);
    }

    protected void ProcessRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        
        // Nhận tham số tên từ form
        String name = request.getParameter("name");

        // Tạo đối tượng DAO và gọi phương thức insertCC
        DAO dao = new DAO();
        dao.insertCC(name);

        // Redirect về trang danh sách hoặc trang cần thiết
        response.sendRedirect("CCControl");  // Hoặc chuyển hướng đến trang khác nếu cần
    }
}
