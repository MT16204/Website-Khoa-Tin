package com.entity;

public class lop {
    private String id;
    private String ten_lop;
    private String id_chuongtrinh;
	public lop() {
		super();
		// TODO Auto-generated constructor stub
	}
	public lop(String id, String ten_lop, String id_chuongtrinh) {
		super();
		this.id = id;
		this.ten_lop = ten_lop;
		this.id_chuongtrinh = id_chuongtrinh;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
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
	@Override
	public String toString() {
		return "lop [id=" + id + ", ten_lop=" + ten_lop + ", id_chuongtrinh=" + id_chuongtrinh + "]";
	}
	

	

}

