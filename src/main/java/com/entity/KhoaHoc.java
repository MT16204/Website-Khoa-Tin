package com.entity;

public class KhoaHoc {
    private String id;
    private String ten_khoahoc;
	public KhoaHoc() {
		super();
		// TODO Auto-generated constructor stub
	}
	public KhoaHoc(String id, String ten_khoahoc) {
		super();
		this.id = id;
		this.ten_khoahoc = ten_khoahoc;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getTen_khoahoc() {
		return ten_khoahoc;
	}
	public void setTen_khoahoc(String ten_khoahoc) {
		this.ten_khoahoc = ten_khoahoc;
	}
	@Override
	public String toString() {
		return "KhoaHoc [id=" + id + ", ten_khoahoc=" + ten_khoahoc + "]";
	}
	

}

