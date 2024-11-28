package com.entity;

public class Student {


	private String id;
    private String ten;
    private String tuoi;
	private String lop;
    private String id_chuyen_nganh;
    public Student() {
 		super();
 		// TODO Auto-generated constructor stub
 	}
    public Student(String id, String ten, String tuoi, String lop, String id_chuyen_nganh) {
		super();
		this.id = id;
		this.ten = ten;
		this.tuoi = tuoi;
		this.lop = lop;
		this.id_chuyen_nganh = id_chuyen_nganh;
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
	public String getLop() {
		return lop;
	}
	public void setLop(String lop) {
		this.lop = lop;
	}
	public String getId_chuyen_nganh() {
		return id_chuyen_nganh;
	}
	public void setId_chuyen_nganh(String id_chuyen_nganh) {
		this.id_chuyen_nganh = id_chuyen_nganh;
	}
	@Override
	public String toString() {
		return "Student [id=" + id + ", ten=" + ten + ", tuoi=" + tuoi + ", lop=" + lop + ", id_chuyen_nganh="
				+ id_chuyen_nganh + "]";
	}

}

