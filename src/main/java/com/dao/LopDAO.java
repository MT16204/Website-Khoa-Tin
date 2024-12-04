package com.dao;

import com.entity.Lop;
import java.sql.*;
import java.util.*;

public class LopDAO {
    private Connection connection;

    public LopDAO(Connection connection) {
        this.connection = connection;
    }

 // Thêm phương thức mới trong LopDAO
    public List<Lop> getLopByMaKhoa(String maKhoa) throws SQLException {
        List<Lop> lopList = new ArrayList<>();
        String sql = "SELECT * FROM Lop WHERE ma_khoa = ?";
        
        try (PreparedStatement stmt = connection.prepareStatement(sql)) {
            stmt.setString(1, maKhoa);
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                Lop lop = new Lop(
                    rs.getString("ma_lop"),
                    rs.getString("ten_lop"),
                    rs.getString("ma_khoa")
                );
                lopList.add(lop);
            }
        }
        return lopList;
    }
}
