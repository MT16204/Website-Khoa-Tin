package com.dao;
import java.util.ArrayList;
import java.util.List;

import com.connection.*;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.entity.*;

public class DAO {
	Connection conn=null;
	PreparedStatement ps = null;
	ResultSet rs=null;
	
	public List<teacher> getAllTeacher() {
	    List<teacher> list = new ArrayList<>();
	    String query = "SELECT * FROM GiangVien";
	    try {
	    	DatabaseConnection dbContext = new DatabaseConnection();
	        conn = dbContext.getConnection();
	        ps = conn.prepareStatement(query);
	        rs = ps.executeQuery();
	        while (rs.next()) {
	            list.add(new teacher(rs.getString(1), 
	                                 rs.getString(2),
	                                 rs.getString(3),
	                                 rs.getString(4),
	                                 rs.getString(5),
	                                 rs.getString(6)));
	        }
	    } catch (Exception e) {
	        e.printStackTrace(); // Ghi log lỗi ra console
	    } finally {
	        try {
	            if (rs != null) rs.close();
	            if (ps != null) ps.close();
	            if (conn != null) conn.close();
	        } catch (Exception ex) {
	            ex.printStackTrace();
	        }
	    }
	    return list;
	}
	public List<Bomon> getbomonbyid(String id){
		List<Bomon> list = new ArrayList<>();
		String querry = "select * from ToBoMon \n"+" where id=?";
		try {
			DatabaseConnection dbContext = new DatabaseConnection();
			conn = dbContext.getConnection() ;
			ps = conn.prepareStatement(querry);
			ps.setString(1,id);
			rs = ps.executeQuery();
			while (rs.next()) {
				list.add(new Bomon(rs.getString(1), rs.getString(2)));
			}
			//
		} catch (Exception e) {
			// TODO: handle exception
		}
		return list;
		
	}
	public List<Bomon> bomon(){
	    List<Bomon> list1 = new ArrayList<>();
	    String query = "SELECT * FROM  ToBoMon";
	    try {
	    	DatabaseConnection dbContext = new DatabaseConnection();
	        conn = dbContext.getConnection();
	        ps = conn.prepareStatement(query);
	        rs = ps.executeQuery();
	        while (rs.next()) {
	        	list1.add(new Bomon(rs.getString(1), rs.getString(2)));
	        }
	        System.out.println("Fetched ToBoMon list: " + list1); // Thêm log
	    } catch (Exception e) {
	        e.printStackTrace();
	    } finally {
	        try {
	            if (rs != null) rs.close();
	            if (ps != null) ps.close();
	            if (conn != null) conn.close();
	        } catch (Exception ex) {
	            ex.printStackTrace();
	        }
	    }
	    return list1;        
	}
	public List<chuyennganh> getchuyennganhnbyid(String id){
		List<chuyennganh> list = new ArrayList<>();
		String querry = "select * from ChuyenNganh \n"+" where id=?";
		try {
			DatabaseConnection dbContext = new DatabaseConnection();
			conn = dbContext.getConnection() ;
			ps = conn.prepareStatement(querry);
			ps.setString(1,id);
			rs = ps.executeQuery();
			while (rs.next()) {
				list.add(new chuyennganh(rs.getString(1), rs.getString(2)));
			}
			//
		} catch (Exception e) {
			// TODO: handle exception
		}
		return list;
		
	}
	public List<chuyennganh> chuyennganh(){
	    List<chuyennganh> list1 = new ArrayList<>();
	    String query = "SELECT * FROM  ChuyenNganh";
	    try {
	    	DatabaseConnection dbContext = new DatabaseConnection();
	        conn = dbContext.getConnection();
	        ps = conn.prepareStatement(query);
	        rs = ps.executeQuery();
	        while (rs.next()) {
	        	list1.add(new chuyennganh(rs.getString(1), rs.getString(2)));
	        }
	    } catch (Exception e) {
	        e.printStackTrace();
	    } finally {
	        try {
	            if (rs != null) rs.close();
	            if (ps != null) ps.close();
	            if (conn != null) conn.close();
	        } catch (Exception ex) {
	            ex.printStackTrace();
	        }
	    }
	    return list1;        
	}
	public void insercontact(String email, String name, String idsubject, String message) {
	    String query = "INSERT INTO Contacts (email, name, idsubject, message) VALUES (?,?,?,?)";
	    try {
	        DatabaseConnection dbContext = new DatabaseConnection();
	        conn = dbContext.getConnection();
	        ps = conn.prepareStatement(query);
	        ps.setString(1, email);
	        ps.setString(2, name);
	        ps.setString(3, idsubject); // Chỉnh sửa đây
	        ps.setString(4, message);
	        ps.executeUpdate(); // Thực thi câu lệnh

	    } catch (Exception e) {
	        e.printStackTrace(); // In chi tiết lỗi ra console
	    }
	}

	public List<subject> subject(){
	    List<subject> list1 = new ArrayList<>();
	    String query = "SELECT * FROM  subject";
	    try {
	    	DatabaseConnection dbContext = new DatabaseConnection();
	        conn = dbContext.getConnection();
	        ps = conn.prepareStatement(query);
	        rs = ps.executeQuery();
	        while (rs.next()) {
	        	list1.add(new subject(rs.getString(1), rs.getString(2)));
	        }
	    } catch (Exception e) {
	        e.printStackTrace();
	    } finally {
	        try {
	            if (rs != null) rs.close();
	            if (ps != null) ps.close();
	            if (conn != null) conn.close();
	        } catch (Exception ex) {
	            ex.printStackTrace();
	        }
	    }
	    
	    return list1;        
	}
	
	public List<subject> subject1(){
	    List<subject> list1 = new ArrayList<>();
	    String query = "SELECT * FROM  subject";
	    try {
	    	DatabaseConnection dbContext = new DatabaseConnection();
	        conn = dbContext.getConnection();
	        ps = conn.prepareStatement(query);
	        rs = ps.executeQuery();
	        while (rs.next()) {
	        	list1.add(new subject(rs.getString(1), rs.getString(2)));
	        }
	    } catch (Exception e) {
	        e.printStackTrace();
	    } finally {
	        try {
	            if (rs != null) rs.close();
	            if (ps != null) ps.close();
	            if (conn != null) conn.close();
	        } catch (Exception ex) {
	            ex.printStackTrace();
	        }
	    }
	    
	    return list1;        
	}
	public List<contact> contactbyid(String id){
		List<contact> list = new ArrayList<>();
		String querry = "select * from contacts \n"+" where idsubject=?";
		try {
			DatabaseConnection dbContext = new DatabaseConnection();
			conn = dbContext.getConnection() ;
			ps = conn.prepareStatement(querry);
			ps.setString(1,id);
			rs = ps.executeQuery();
			while (rs.next()) {
				list.add (new contact(rs.getString(1), 
						rs.getString(2),
						rs.getString(3),
						rs.getString(4),
						rs.getString(5),
						rs.getString(6)));
			}
			//
		} catch (Exception e) {
			// TODO: handle exception
		}
		return list;
		
	}
	
	public List<teacher> getteacherbybomon(String id){
		List<teacher> list = new ArrayList<>();
		String querry = "select * from GiangVien \n"+" where id_to_bo_mon=?";
		try {
			DatabaseConnection dbContext = new DatabaseConnection();
			conn = dbContext.getConnection() ;
			ps = conn.prepareStatement(querry);
			ps.setString(1,id);
			rs = ps.executeQuery();
			while (rs.next()) {
				list.add (new teacher(rs.getString(1), 
						rs.getString(2),
						rs.getString(3),
						rs.getString(4),
						rs.getString(5),
						rs.getString(6)));
			}
			//
		} catch (Exception e) {
			// TODO: handle exception
		}
		return list;
		
	}
	public List<Student> getstudentbychuyennganh(String id){
		List<Student> list = new ArrayList<>();
		String querry = "select * from SinhVien \n"+" where id_chuyen_nganh=?";
		try {
			DatabaseConnection dbContext = new DatabaseConnection();
			conn = dbContext.getConnection() ;
			ps = conn.prepareStatement(querry);
			ps.setString(1,id);
			rs = ps.executeQuery();
			while (rs.next()) {
				list.add (new Student(rs.getString(1), 
						rs.getString(2),
						rs.getString(3),
						rs.getString(4),
						rs.getString(5))
						);
			}
			//
		} catch (Exception e) {
			// TODO: handle exception
		}
		return list;
		
	}
	public teacher laygv(String id) {
	    String query = "SELECT * FROM GiangVien WHERE id=?";
	    teacher gv = null;

	    try {
	    	DatabaseConnection dbContext = new DatabaseConnection();
	        conn = dbContext.getConnection();
	        ps = conn.prepareStatement(query);
	        ps.setString(1, id);
	        rs = ps.executeQuery();

	        if (rs.next()) {
	            gv = new teacher(
	                rs.getString("id"),  // MSSV
	                rs.getString("ten"), // Tên
	                rs.getString("anh"),   // Tuổi
	                rs.getString("email"), // Lớp
	                rs.getString("chuc_vu"), 
	                rs.getString("id_to_bo_mon") // Mã chuyên ngành
	            );
	        }
	    } catch (Exception e) {
	        e.printStackTrace();
	    } finally {
	        try {
	            if (rs != null) rs.close();
	            if (ps != null) ps.close();
	            if (conn != null) conn.close();
	        } catch (Exception e) {
	            e.printStackTrace();
	        }
	    }
		return gv;
	}
	public void updategv(teacher gv) {
	    String query = "UPDATE GiangVien SET ten = ?, anh = ?, email = ?, chuc_vu = ?, id_to_bo_mon = ? WHERE id = ?";

	    try {
	    	DatabaseConnection dbContext = new DatabaseConnection();
	        conn = dbContext.getConnection();
	        ps = conn.prepareStatement(query);
	        ps.setString(1, gv.getTen());
	        ps.setString(2, gv.getAnh());
	        ps.setString(3, gv.getEmail());
	        ps.setString(4, gv.getChuc_vu());
	        ps.setString(5, gv.getId_to_bo_mon());
	        ps.setString(6, gv.getId()); // Gán id
	        ps.executeUpdate();
	    } catch (Exception e) {
	        e.printStackTrace();
	    } finally {
	        try {
	            if (ps != null) ps.close();
	            if (conn != null) conn.close();
	        } catch (Exception e) {
	            e.printStackTrace();
	        }
	    }
	}


	public Student laysv(String id) {
	    String query = "SELECT * FROM SinhVien WHERE id=?";
	    Student sv = null;

	    try {
	    	DatabaseConnection dbContext = new DatabaseConnection();
	        conn = dbContext.getConnection();
	        ps = conn.prepareStatement(query);
	        ps.setString(1, id);
	        rs = ps.executeQuery();

	        if (rs.next()) {
	            sv = new Student(
	                rs.getString("id"),  // MSSV
	                rs.getString("ten"), // Tên
	                rs.getString("tuoi"),   // Tuổi
	                rs.getString("lop"), // Lớp
	                rs.getString("id_chuyen_nganh") // Mã chuyên ngành
	            );
	        }
	    } catch (Exception e) {
	        e.printStackTrace();
	    } finally {
	        try {
	            if (rs != null) rs.close();
	            if (ps != null) ps.close();
	            if (conn != null) conn.close();
	        } catch (Exception e) {
	            e.printStackTrace();
	        }
	    }
	    return sv;
	}
	public void updateStudent(Student sv) {
	    String query = "UPDATE SinhVien SET ten = ?, tuoi = ?, lop = ?, id_chuyen_nganh = ? WHERE id = ?";

	    try {
	    	DatabaseConnection dbContext = new DatabaseConnection();
	        conn = dbContext.getConnection();
	        ps = conn.prepareStatement(query);
	        ps.setString(1, sv.getTen());
	        ps.setString(2, sv.getTuoi());
	        ps.setString(3, sv.getLop());
	        ps.setString(4, sv.getId_chuyen_nganh());
	        ps.setString(5, sv.getId());
	        ps.executeUpdate();
	    } catch (Exception e) {
	        e.printStackTrace();
	    } finally {
	        try {
	            if (ps != null) ps.close();
	            if (conn != null) conn.close();
	        } catch (Exception e) {
	            e.printStackTrace();
	        }
	    }
	}

	public void delete(String id) {
	    String query = "DELETE FROM SinhVien WHERE id=?";
	    try {
	    	DatabaseConnection dbContext = new DatabaseConnection();
	        conn = dbContext.getConnection();
	        ps = conn.prepareStatement(query);
	        ps.setString(1, id);
	        int rowsAffected = ps.executeUpdate(); // Số dòng bị xóa
	        if (rowsAffected > 0) {
	            System.out.println("Xóa thành công!");
	        } else {
	            System.out.println("Không tìm thấy sinh viên với id: " + id);
	        }
	    } catch (Exception e) {
	        e.printStackTrace(); // In chi tiết lỗi ra console
	    } finally {
	        try {
	            if (ps != null) ps.close();
	            if (conn != null) conn.close();
	        } catch (Exception e) {
	            e.printStackTrace(); // Xử lý lỗi khi đóng tài nguyên
	        }
	    }
	}
	public void deletegv(String id) {
	    String query = "DELETE FROM GiangVien WHERE id=?";
	    try {
	    	DatabaseConnection dbContext = new DatabaseConnection();
	        conn = dbContext.getConnection();
	        ps = conn.prepareStatement(query);
	        ps.setString(1, id);
	        int rowsAffected = ps.executeUpdate(); // Số dòng bị xóa
	        if (rowsAffected > 0) {
	            System.out.println("Xóa thành công!");
	        } else {
	            System.out.println("Không tìm thấy sinh viên với id: " + id);
	        }
	    } catch (Exception e) {
	        e.printStackTrace(); // In chi tiết lỗi ra console
	    } finally {
	        try {
	            if (ps != null) ps.close();
	            if (conn != null) conn.close();
	        } catch (Exception e) {
	            e.printStackTrace(); // Xử lý lỗi khi đóng tài nguyên
	        }
	    }
	}

	public void inserGiangvien(String ten, String anh, String email, String chuc_vu, String id_to_bo_mon ) {
		String query = "INSERT INTO GiangVien (ten, anh, email, chuc_vu, id_to_bo_mon) VALUES (?,?,?,?,?)";
		 try {
			 DatabaseConnection dbContext = new DatabaseConnection();
		        conn = dbContext.getConnection();
		        ps = conn.prepareStatement(query);
		        ps.setString(1, ten);
		        ps.setString(2, anh);
		        ps.setString(3, email);
		        ps.setString(4, chuc_vu);
		        ps.setString(5, id_to_bo_mon);
		        ps.executeUpdate(); // Số dòng bị xóa
		       
		    } catch (Exception e) {
		        e.printStackTrace(); // In chi tiết lỗi ra console
		    }
	}
	public void insertSinhVien(String ten, String tuoi, String lop, String id_chuyen_nganh) {
	    if (ten == null || ten.isEmpty()) {
	        throw new IllegalArgumentException("Tên không được null hoặc rỗng.");
	    }
	    String query = "INSERT INTO SinhVien (ten, tuoi, lop, id_chuyen_nganh) VALUES (?, ?, ?, ?)";
	    try {
	    	DatabaseConnection dbContext = new DatabaseConnection();
	        conn = dbContext.getConnection();
	        ps = conn.prepareStatement(query);
	        ps.setString(1, ten);
	        ps.setString(2, tuoi);
	        ps.setString(3, lop);
	        ps.setString(4, id_chuyen_nganh);
	        ps.executeUpdate();
	    } catch (Exception e) {
	        e.printStackTrace();
	    } finally {
	        try {
	            if (ps != null) ps.close();
	            if (conn != null) conn.close();
	        } catch (SQLException e) {
	            e.printStackTrace();
	        }
	    }
	}



		
	}
