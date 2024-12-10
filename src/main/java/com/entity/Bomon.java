package com.entity;

public class Bomon {
    private String id;
    private String ten_to_bo_mon;
	public Bomon() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Bomon(String id, String ten_to_bo_mon) {
		super();
		this.id = id;
		this.ten_to_bo_mon = ten_to_bo_mon;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getTen_to_bo_mon() {
		return ten_to_bo_mon;
	}
	public void setTen_to_bo_mon(String ten_to_bo_mon) {
		this.ten_to_bo_mon = ten_to_bo_mon;
	}
	@Override
	public String toString() {
		return "Bomon [id=" + id + ", ten_to_bo_mon=" + ten_to_bo_mon + "]";
	}


}

