# Website Khoa tin học 

## 1. Giới thiệu 
- Đây là đồ án cuối kì cho môn lập trình Web, đề tài "Tạo một ứng dụng giới thiệu website khoa Tin học – đội ngũ giảng viên – các lớp học, các chương trình đào tạo".
- Thành viên:
  + Phạm Minh Tuấn
  + Mai Thị Thanh Huyền
 
## 2. Mô tả chức năng
- Trang chủ: Cung cấp thông tin tổng quan về khoa tin học.
- Giới thiệu: Cung cấp thông tin về khoa và tổ chức.
- Chương trình đào tạo:
  + Chuyên ngành: Cung cấp các chương trình học, danh sách khoá học, lớp học, sinh viên của hai chuyên ngành chính là Cử nhân Công nghệ thông tin và Sư phạm tin học.
  + Đào tạo: Giới thiệu các chương trình đào tạo như Đào tạo bậc Đại Học, Thạc Sĩ, và Tiến Sĩ.
- Đội ngũ giảng viên: Cung cấp thông tin chi tiết về các giảng viên của khoa tin.
- Bài viết: Cập nhật các bài viết về sự kiện, tin tức của khoa.
- Liên hệ: Cung cấp thông tin liên hệ như địa chỉ, số điện thoại, email của khoa.
- Admin: Trang quản lý chi tiết danh sách các giảng viên và sinh viên của khoa.

## 3. Công nghệ sử dụng 
- Ngôn ngữ & thư viện:
  + Ngôn ngữ lập trình: Java Servlet, JSP, HTML, CSS.
  + Framework: Bootstrap (hỗ trợ responsive).
  + Thư viện: JDBC (kết nối cơ sở dữ liệu).
    
- Hệ thống quản lý & cơ sở dữ liệu:
  + Cơ sở dữ liệu: MySQL.
  + Hệ quản lý mã nguồn: Git.

- Tính năng chính:
  + CRUD: Hiển thị, Thêm mới, Sửa xoá và Cập nhật danh sách giảng viên và sinh viên.

## 4. Hướng dẫn cách chạy dự án
1. Clone project về local :
``` bash
git clone https://github.com/MT16204/Website-Khoa-Tin.git
```
2. Taọ Database :
- Mở Mysql/PostgreSQL.
- Copy các câu lệnh từ ck1.sql trong src/java/main/database, và tạo Database và bảng.
- Thay các đường dẫn trong `DatabaseConnection.java`:
``` bash
String dbUrl = "jdbc:mysql://localhost:3306/mydatabase"; // database
String dbUsername = "username"; // username
String dbPassword = "password"; // mật khẩu
```
    
3. Chạy dự án trên Apache tomcat:
- Chạy file `index.jsp`
- Mở trình duyệt và truy cập vào đường dẫn: `http://localhost:8080/Website-Khoa-Tin`
