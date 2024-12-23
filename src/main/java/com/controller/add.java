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
@WebServlet("/add3")
@MultipartConfig(
    fileSizeThreshold = 1024 * 1024 * 2, // 2MB
    maxFileSize = 1024 * 1024 * 10,      // 10MB
    maxRequestSize = 1024 * 1024 * 50    // 50MB
)
public class add extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public add() {
        super();
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");

        // Đọc dữ liệu từ form
        String name = request.getParameter("name");
        String email = request.getParameter("Email");
        String chucvu = request.getParameter("chucvu");
        String idbomon = request.getParameter("idbomon");

        // Xử lý file upload
        Part filePart = request.getPart("image"); // Lấy file từ form
        String fileName = filePart.getSubmittedFileName(); // Lấy tên file

        // Đường dẫn lưu file
        String uploadPath = getServletContext().getRealPath("/") + "images";
        File uploadDir = new File(uploadPath);
        if (!uploadDir.exists()) {
            uploadDir.mkdirs(); // Tạo thư mục nếu chưa tồn tại
        }

        // Lưu file vào thư mục
        String filePath = uploadPath + File.separator + fileName;
        filePart.write(filePath);

        // Lưu đường dẫn ảnh (relative path) vào database
        String relativePath = "images/" + fileName;

        DAO dao = new DAO();
        dao.inserGiangvien(name, relativePath, email, chucvu, idbomon);

        // Chuyển hướng về trang HomeControl
        response.sendRedirect("HomeControl");
    }
}
