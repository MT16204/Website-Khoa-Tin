package com.entity;

public class KhoaHoc {
    private int id;
    private String maKhoa;
    private String tenKhoa;
    private String maChuyenNganh;
    private String lopNames;  // Thuộc tính mới để lưu chuỗi danh sách lớp

    // Constructor
    public KhoaHoc(int id, String maKhoa, String tenKhoa, String maChuyenNganh) {
        this.id = id;
        this.maKhoa = maKhoa;
        this.tenKhoa = tenKhoa;
        this.maChuyenNganh = maChuyenNganh;
    }

    // Getters and Setters
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getMaKhoa() {
        return maKhoa;
    }

    public void setMaKhoa(String maKhoa) {
        this.maKhoa = maKhoa;
    }

    public String getTenKhoa() {
        return tenKhoa;
    }

    public void setTenKhoa(String tenKhoa) {
        this.tenKhoa = tenKhoa;
    }

    public String getMaChuyenNganh() {
        return maChuyenNganh;
    }

    public void setMaChuyenNganh(String maChuyenNganh) {
        this.maChuyenNganh = maChuyenNganh;
    }

    public String getLopNames() {
        return lopNames;
    }

    public void setLopNames(String lopNames) {
        this.lopNames = lopNames;
    }
}

