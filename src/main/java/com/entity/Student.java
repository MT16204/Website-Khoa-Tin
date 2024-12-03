package com.entity;

public class Student {

    private String id; // Mã sinh viên
    private String ten; // Tên sinh viên
    private String tuoi; // Ngày sinh
    private String email; // Email của sinh viên
    private String id_lop; // ID lớp học
    private String ten_lop; // Tên lớp học
    private String id_chuongtrinh;
    private String ten_chuongtrinh;// ID chương trình học

    public Student(String id2, String name, String tuoi2, String email2, String idlop, String id_chuongtrinh2) {
        super();
    }

    public Student(String id, String ten, String tuoi, String email, String id_lop, String ten_lop, String id_chuongtrinh, String ten_chuongtrinh) {
        super();
        this.id = id;
        this.ten = ten;
        this.tuoi = tuoi;
        this.email = email;
        this.id_lop = id_lop;
        this.ten_lop = ten_lop;
        this.id_chuongtrinh = id_chuongtrinh;
        this.ten_chuongtrinh = ten_chuongtrinh;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getTen() {
        return ten;
    }

    public void setTen(String ten) {
        this.ten = ten;
    }

    public String getTuoi() {
        return tuoi;
    }

    public void setTuoi(String tuoi) {
        this.tuoi = tuoi;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getId_lop() {
        return id_lop;
    }

    public void setId_lop(String id_lop) {
        this.id_lop = id_lop;
    }
    
    public String getTen_lop() {
        return ten_lop;
    }

    public void setTen_lop(String ten_lop) {
        this.ten_lop = ten_lop;
    }

    public String getId_chuongtrinh() {
        return id_chuongtrinh;
    }

    public void setId_chuongtrinh(String id_chuongtrinh) {
        this.id_chuongtrinh = id_chuongtrinh;
    }
    
    public String getTen_chuongtrinh() {
        return ten_chuongtrinh;
    }

    public void setTen_chuongtrinh(String ten_chuongtrinh) {
        this.ten_chuongtrinh = ten_chuongtrinh;
    }

    @Override
    public String toString() {
        return "Student [id=" + id + ", ten=" + ten + ", tuoi=" + tuoi + ", email=" + email + 
                ", id_lop=" + id_lop + ", ten_lop=" + ten_lop + ", id_chuongtrinh=" + id_chuongtrinh + ", ten_chuongtrinh" + ten_chuongtrinh + "]";
    }
}
