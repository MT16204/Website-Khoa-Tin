package com.entity;

public class teacher {
	private String id;
    private String ten;
    private String anh;
	private String email;
	private String chuc_vu;
    private String id_to_bo_mon;
	public teacher() {
		super();
		// TODO Auto-generated constructor stub
	}
	public teacher(String id, String ten, String anh, String email, String chuc_vu, String id_to_bo_mon) {
		super();
		this.id = id;
		this.ten = ten;
		this.anh = anh;
		this.email = email;
		this.chuc_vu = chuc_vu;
		this.id_to_bo_mon = id_to_bo_mon;
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
	public String getAnh() {
		return anh;
	}
	public void setAnh(String anh) {
		this.anh = anh;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getChuc_vu() {
		return chuc_vu;
	}
	public void setChuc_vu(String chuc_vu) {
		this.chuc_vu = chuc_vu;
	}
	public String getId_to_bo_mon() {
		return id_to_bo_mon;
	}
	public void setId_to_bo_mon(String id_to_bo_mon) {
		this.id_to_bo_mon = id_to_bo_mon;
	}
	@Override
	public String toString() {
		return "teacher [id=" + id + ", ten=" + ten + ", anh=" + anh + ", email=" + email + ", chuc_vu=" + chuc_vu
				+ ", id_to_bo_mon=" + id_to_bo_mon + "]";
	}

}

