package com.entity;

public class chuyennganh {
    private String id;
    private String ten_chuyen_nganh;
	public chuyennganh() {
		super();
		// TODO Auto-generated constructor stub
	}
	public chuyennganh(String id, String ten_chuyen_nganh) {
		super();
		this.id = id;
		this.ten_chuyen_nganh = ten_chuyen_nganh;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getTen_chuyen_nganh() {
		return ten_chuyen_nganh;
	}
	public void setTen_chuyen_nganh(String ten_chuyen_nganh) {
		this.ten_chuyen_nganh = ten_chuyen_nganh;
	}
	@Override
	public String toString() {
		return "chuyennganh [id=" + id + ", ten_chuyen_nganh=" + ten_chuyen_nganh + "]";
	}
	

}

