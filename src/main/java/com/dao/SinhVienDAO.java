package com.dao;

import com.entity.SinhVien;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class SinhVienDAO {

    private Connection connection;

    public SinhVienDAO(Connection connection) {
        this.connection = connection;
    }

    public List<SinhVien> getSinhVienByMaLop(String maLop) throws SQLException {
        List<SinhVien> sinhVienList = new ArrayList<>();
        String query = "SELECT * FROM SinhVien WHERE ma_lop = ?";
        
        try (PreparedStatement stmt = connection.prepareStatement(query)) {
            stmt.setString(1, maLop);
            ResultSet rs = stmt.executeQuery();
            
            while (rs.next()) {
                SinhVien sinhVien = new SinhVien();
                sinhVien.setMaSinhVien(rs.getInt("id")); // Nếu cần, thêm phương thức setter cho ID
                sinhVien.setHoTen(rs.getString("ten"));
                sinhVien.setNgaySinh(rs.getDate("tuoi"));
                sinhVien.setEmail(rs.getString("email"));
                sinhVien.setMaLop(rs.getString("ma_lop"));
                sinhVien.setMaChuyenNganh(rs.getString("ma_chuyen_nganh"));
                
                sinhVienList.add(sinhVien);
            }
        }
        
        return sinhVienList;
    }
}
