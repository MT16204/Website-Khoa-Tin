package com.controller;

import com.connection.DatabaseConnection;
import com.dao.KhoaHocDAO;
import com.dao.LopDAO;
import com.dao.SinhVienDAO;
import com.entity.KhoaHoc;
import com.entity.Lop;
import com.entity.SinhVien;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.*;
import java.sql.*;
import java.util.*;

@WebServlet("/khoaHocLop") // URL pattern cho servlet
public class KhoaHocLopServlet extends HttpServlet {
    
    // Kết nối cơ sở dữ liệu sẽ được lấy từ DatabaseConnection
    private Connection connection;

    @Override
    public void init() throws ServletException {
        // Lấy kết nối từ lớp DatabaseConnection
        this.connection = DatabaseConnection.getConnection();
        if (connection == null) {
            throw new ServletException("Không thể kết nối đến cơ sở dữ liệu");
        }
    }
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        KhoaHocDAO khoaHocDAO = new KhoaHocDAO(connection);
        LopDAO lopDAO = new LopDAO(connection);
        SinhVienDAO sinhVienDAO = new SinhVienDAO(connection);

        try {
            // Lấy tất cả khoá học thuộc chuyên ngành CNTT
            List<KhoaHoc> khoaHocList = khoaHocDAO.getKhoaHocByChuyenNganh("CNTT");

            // Tạo chuỗi danh sách lớp cho từng khóa học
            for (KhoaHoc khoaHoc : khoaHocList) {
                List<Lop> lopList = lopDAO.getLopByMaKhoa(khoaHoc.getMaKhoa());
                StringBuilder lopNames = new StringBuilder();
                for (int i = 0; i < lopList.size(); i++) {
                    Lop lop = lopList.get(i);
                    lopNames.append(lop.getMaLop());
                    if (i < lopList.size() - 1) {
                        lopNames.append(", ");
                    }
                }
                khoaHoc.setLopNames(lopNames.toString());
            }

            // Kiểm tra nếu có mã lớp
            String maLop = request.getParameter("maLop");
            if (maLop != null) {
                List<SinhVien> sinhVienList = sinhVienDAO.getSinhVienByMaLop(maLop);
                request.setAttribute("sinhVienList", sinhVienList);
                request.setAttribute("maLop", maLop);

                // Chuyển hướng đến trang hiển thị danh sách sinh viên
                RequestDispatcher dispatcher = request.getRequestDispatcher("/lophoc.jsp");
                dispatcher.forward(request, response);
                return;
            }

            // Gửi danh sách khóa học vào request
            request.setAttribute("khoaHocList", khoaHocList);

            // Hiển thị danh sách khóa học
            RequestDispatcher dispatcher = request.getRequestDispatcher("/khoahoc.jsp");
            dispatcher.forward(request, response);

        } catch (SQLException e) {
            throw new ServletException("Lỗi truy vấn dữ liệu", e);
        }
    }


    @Override
    public void destroy() {
        try {
            if (connection != null) {
                connection.close();
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
