package com.entity;

public class Student {


	private String id;
    private String ten;
    private String tuoi;
	private String email;
    private String idlop;
    private String id_chuongtrinh;

    public Student() {
 		super();
 		// TODO Auto-generated constructor stub
 	}
    private String tenLop;          // Tên lớp
    private String tenChuongTrinh;  // Tên chương trình học

    // Thêm constructor đầy đủ
    public Student(String id, String ten, String tuoi, String email, String idlop, String tenLop, String tenChuongTrinh) {
        super();
        this.id = id;
        this.ten = ten;
        this.tuoi = tuoi;
        this.email = email;
        this.idlop = idlop;
        this.tenLop = tenLop;
        this.tenChuongTrinh = tenChuongTrinh;
    }
 // Constructor chỉ chứa các trường cần thiết cho cơ sở dữ liệu
    public Student(String id, String ten, String tuoi, String email, String idlop) {
        this.id = id;
        this.ten = ten;
        this.tuoi = tuoi;
        this.email = email;
        this.idlop = idlop;
    }

    // Getter và Setter cho tenLop và tenChuongTrinh
    public String getTenLop() {
        return tenLop;
    }

    public void setTenLop(String tenLop) {
        this.tenLop = tenLop;
    }

    public String getId_chuongtrinh() {
		return id_chuongtrinh;
	}
	public void setId_chuongtrinh(String id_chuongtrinh) {
		this.id_chuongtrinh = id_chuongtrinh;
	}
	public String getTenChuongTrinh() {
        return tenChuongTrinh;
    }

    public void setTenChuongTrinh(String tenChuongTrinh) {
        this.tenChuongTrinh = tenChuongTrinh;
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
	public String getIdlop() {
		return idlop;
	}
	public void setIdlop(String idlop) {
		this.idlop = idlop;
	}
    
}

