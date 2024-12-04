package com.dao;

import com.entity.KhoaHoc;
import java.sql.*;
import java.util.*;

public class KhoaHocDAO {
    private Connection connection;

    public KhoaHocDAO(Connection connection) {
        this.connection = connection;
    }

    public List<KhoaHoc> getKhoaHocByChuyenNganh(String maChuyenNganh) throws SQLException {
        List<KhoaHoc> khoaHocList = new ArrayList<>();
        String sql = "SELECT * FROM KhoaHoc WHERE ma_chuyen_nganh = ?";
        
        try (PreparedStatement stmt = connection.prepareStatement(sql)) {
            stmt.setString(1, maChuyenNganh);
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                KhoaHoc khoaHoc = new KhoaHoc(
                    rs.getInt("id"),
                    rs.getString("ma_khoa"),
                    rs.getString("ten_khoa"),
                    rs.getString("ma_chuyen_nganh")
                );
                khoaHocList.add(khoaHoc);
            }
        }
        return khoaHocList;
    }
}
