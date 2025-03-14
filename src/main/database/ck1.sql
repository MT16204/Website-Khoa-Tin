create database ck1;
use ck1;


CREATE TABLE subject (
    idsubject INT AUTO_INCREMENT PRIMARY KEY,
    namesubject VARCHAR(255) NOT NULL
);
use ck1;

INSERT INTO subject (namesubject) VALUES
('Về tài khoản và hệ thống'),
('Về chương trình đào tạo'),
('Về lịch học và lịch thi'),
('Về cơ sở vật chất'),
('Về thông tin cá nhân'),
('Về sự kiện và hoạt động');

CREATE TABLE Contacts (
    id INT AUTO_INCREMENT PRIMARY KEY,
    email VARCHAR(255) NOT NULL,
    name VARCHAR(255) NOT NULL,
    idsubject INT NOT NULL,
    message TEXT NOT NULL,
    sent_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (idsubject) REFERENCES subject(idsubject) ON DELETE CASCADE ON UPDATE CASCADE
);

INSERT INTO Contacts (email, name, idsubject, message) VALUES
('nguyenvana@example.com', 'Nguyễn Văn A', 1, 'Thông tin về tài khoản và hệ thống rất hữu ích.'),
('tranthib@example.com', 'Trần Thị B', 1, 'Cần thêm thông tin về cách đăng nhập vào hệ thống.'),
('lequangc@example.com', 'Lê Quang C', 1, 'Tôi gặp lỗi khi đăng nhập vào tài khoản, mong được hỗ trợ.'),

('nguyenthid@example.com', 'Nguyễn Thị D', 2, 'Chương trình đào tạo rất hay, tôi muốn biết thêm về lịch học.'),
('vuvanew@example.com', 'Vũ Văn E', 2, 'Cảm ơn vì các chương trình đào tạo rất chi tiết.'),
('phamthif@example.com', 'Phạm Thị F', 2, 'Có thể cung cấp thêm thông tin về các khóa học không?'),

('ngovang@example.com', 'Ngô Văn G', 3, 'Lịch học và lịch thi cần được cập nhật thường xuyên.'),
('huynhthih@example.com', 'Huỳnh Thị H', 3, 'Lịch thi cần có thông báo sớm hơn để chuẩn bị tốt hơn.'),
('lethiv@example.com', 'Lê Thị V', 3, 'Tôi muốn biết thông tin chi tiết về lịch thi sắp tới.'),

('nguyenhoaig@example.com', 'Nguyễn Hoài I', 4, 'Cơ sở vật chất rất tốt, nhưng cần cải thiện Wi-Fi.'),
('hoangthiha@example.com', 'Hoàng Thị H', 4, 'Cần có thêm nhiều phòng học để giảm tải cho sinh viên.'),
('vothangj@example.com', 'Võ Thắng J', 4, 'Tôi thấy cơ sở vật chất tốt nhưng thiếu không gian học nhóm.'),

('nguyenquana@example.com', 'Nguyễn Quân A', 5, 'Cập nhật thông tin cá nhân nhanh chóng và dễ dàng.'),
('tranminhb@example.com', 'Trần Minh B', 5, 'Tôi cần chỉnh sửa thông tin cá nhân nhưng không tìm thấy chức năng này.'),
('doanthanht@example.com', 'Đoàn Thanh T', 5, 'Mong muốn có thêm tùy chọn bảo mật cho tài khoản cá nhân.'),

('letrinhh@example.com', 'Lê Trinh H', 6, 'Rất mong có thêm thông tin về các sự kiện và hoạt động.'),
('phamhuynhk@example.com', 'Phạm Huỳnh K', 6, 'Tôi muốn tham gia các sự kiện nhưng không biết lịch tổ chức.'),
('ngoducm@example.com', 'Ngô Đức M', 6, 'Các sự kiện rất hấp dẫn nhưng cần được quảng bá rộng rãi hơn.');

CREATE TABLE users (	
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL,
    password VARCHAR(255) NOT NULL,
    email VARCHAR(100) NOT NULL,
    role VARCHAR(20) DEFAULT 'user'
);

INSERT INTO users (username, password,email, role) 
VALUES ('admin', '12345','admin@gmail.com', 'admin');

CREATE TABLE ChuyenNganh (
    id INT AUTO_INCREMENT PRIMARY KEY,      -- Mã chuyên ngành (Primary Key)
    ten_chuyen_nganh VARCHAR(255) NOT NULL  -- Tên chuyên ngành
);
CREATE TABLE ChuongTrinhHoc (
    id INT AUTO_INCREMENT PRIMARY KEY,          -- Mã chương trình học
    ten_chuong_trinh VARCHAR(255) NOT NULL    -- Tên chương trình học
);
INSERT INTO ChuyenNganh (ten_chuyen_nganh) VALUES 
('Công nghệ thông tin'),
('Sư phạm tin học');

INSERT INTO ChuongTrinhHoc (ten_chuong_trinh) VALUES
('Cử nhân Công nghệ thông tin'),
('Sư phạm Tin học');

CREATE TABLE ToBoMon (
    id INT AUTO_INCREMENT PRIMARY KEY,       -- Mã tổ bộ môn (Primary Key)
    ten_to_bo_mon VARCHAR(255) NOT NULL  
);
INSERT INTO ToBoMon (ten_to_bo_mon) VALUES 
('Ban Chủ nhiệm'),
('Tổ bộ môn Hệ thống thông tin'),
('Tổ môn Phương pháp giảng dạy');
CREATE TABLE GiangVien (
    id INT AUTO_INCREMENT PRIMARY KEY,
    ten VARCHAR(255) NOT NULL,
    anh VARCHAR(255),
    email VARCHAR(255) NOT NULL UNIQUE,
    chuc_vu VARCHAR(255) NOT NULL,
    id_to_bo_mon INT NOT NULL,
    FOREIGN KEY (id_to_bo_mon) REFERENCES ToBoMon(id)
);

-- Thêm dữ liệu vào bảng GiangVien, chia đều vào các tổ bộ môn
INSERT INTO GiangVien (ten, anh, email, chuc_vu, id_to_bo_mon) VALUES 
('TS. NGUYỄN TRẦN QUỐC VINH', 'images/vinh.jpg', 'ntqvinh@ued.udn.vn', 'Trưởng Khoa', 1),
('TS. PHẠM DƯƠNG THU HẰNG', 'images/hang.jpg', 'pdthang@ued.udn.vn', 'Phó Trưởng Khoa', 1),
('TS. PHẠM ANH PHƯƠNG', 'images/phuong.jpg', 'paphuong@ued.udn.vn', 'Phó Trưởng Khoa', 1),

('TS. NGUYỄN ĐÌNH LẦU', 'images/lau.jpg', 'ndlau@ued.udn.vn', 'Trưởng bộ môn', 2),
('TS. NGUYỄN THỊ NGỌC ANH', 'images/anh.jpg', 'ntnanh@ued.udn.vn', 'Giảng viên', 2),
('TS. NGUYỄN HOÀNG HẢI', 'images/hai.jpg', 'nhhai@ued.udn.vn', 'Giảng viên', 2),
('TS. ĐOÀN DUY BÌNH', 'images/binh.jpg', 'ddbinh@ued.udn.vn', 'Giảng viên', 2),
('TS. VŨ THỊ TRÀ', 'images/tra.jpg', 'vttra@ued.udn.vn', 'Giảng viên', 2),
('Ths. LÊ VĂN MỸ', 'images/my.png', 'lvmy@ued.udn.vn', 'Giảng viên', 2),
('Ths. LÊ THỊ THANH BÌNH', 'images/lttbinh.png', 'lttbinh@ued.udn.vn', 'Giảng viên', 2),
('Ths. MAI HÀ THI', 'images/mhthi.jpg', 'mhthi@ued.udn.vn', 'Giảng viên', 2),

('TS. TRẦN VĂN HƯNG', 'images/hung.jpg', 'tvhung@ued.udn.vn', 'Trưởng bộ môn', 3),
('Ths. LÊ VIẾT CHUNG', 'images/chung.jpg', 'lvchung@ued.udn.vn', 'Giảng viên', 3),
('Ths. HỒ NGỌC TÚ', 'images/tu.jpg', 'hntu@ued.udn.vn', 'Giảng viên', 3);

CREATE TABLE KhoaHoc (
    id INT AUTO_INCREMENT PRIMARY KEY,          -- Mã khóa học
    ten_khoa_hoc VARCHAR(255) NOT NULL      -- Tên khóa học
);

INSERT INTO KhoaHoc (ten_khoa_hoc) VALUES
('2020-2024'),
('2021-2025'),
('2022-2026'),
('2023-2027');


CREATE TABLE Lop (
    id INT AUTO_INCREMENT PRIMARY KEY,       -- Mã lớp (Primary Key)
    ten_lop VARCHAR(255) NOT NULL,           -- Tên lớp
    id_chuyennganh INT NOT NULL,             -- Mã chuyên ngành (Foreign Key)
    id_chuongtrinh INT NOT NULL,             -- Mã chương trình học (Foreign Key)
    id_khoahoc INT NOT NULL,                 -- Mã khóa học (Foreign Key)
    FOREIGN KEY (id_chuyennganh) REFERENCES ChuyenNganh(id),   -- Liên kết với bảng ChuyenNganh
    FOREIGN KEY (id_chuongtrinh) REFERENCES ChuongTrinhHoc(id),-- Liên kết với bảng ChuongTrinhHoc
    FOREIGN KEY (id_khoahoc) REFERENCES KhoaHoc(id)            -- Liên kết với bảng KhoaHoc
);


INSERT INTO Lop (ten_lop, id_chuyennganh, id_chuongtrinh, id_khoahoc)VALUES
('20CNTT1',1, 1, 1),
('20CNTT2',1, 1, 1),
('20CNTTC',1, 1, 1),
('20SPT',2, 2, 1),
('21CNTT1',1, 1, 2),
('21CNTT2',1, 1, 2),
('21CNTTC',1, 1, 2),
('21SPT',2, 2, 2),
('22CNTT1',1, 1, 3),
('22CNTT2',1, 1, 3),
('22CNTTC',1, 1, 3),
('22SPT',2, 2, 3),
('23CNTT1',1, 1, 4),
('23CNTT2',1, 1, 4),
('23CNTTC',1, 1, 4),
('23SPT',2, 2, 4);


CREATE TABLE GiangVien_LopHoc (
    giang_vien_id INT,  -- Mã giảng viên
    lop_hoc_id INT,  -- Mã lớp học
    PRIMARY KEY (giang_vien_id, lop_hoc_id),  -- Khóa chính kép
    FOREIGN KEY (giang_vien_id) REFERENCES GiangVien(id),
    FOREIGN KEY (lop_hoc_id) REFERENCES Lop(id)
);

CREATE TABLE SinhVien (
    id INT AUTO_INCREMENT PRIMARY KEY,      -- Mã sinh viên (Primary Key)
    ten VARCHAR(255) NOT NULL,              -- Tên sinh viên
    tuoi DATE NOT NULL,                     -- Tuổi sinh viên
    email VARCHAR(255),                     -- Email sinh viên
    id_lop INT NOT NULL,                    -- Mã lớp (Foreign Key)
    FOREIGN KEY (id_lop) REFERENCES Lop(id)  -- Liên kết với bảng Lớp
);

INSERT INTO SinhVien (ten, tuoi, email, id_lop)
VALUES
    ('Nguyễn Văn An', '2002-05-14', 'nguyenvana@example.com', 1),
    ('Lê Thị Bích Ngọc', '2002-07-23', 'bichngoc@example.com', 1),
    ('Trần Văn Hùng', '2002-01-11', 'vanhung@example.com', 1),
    ('Phạm Thị Hoa', '2002-03-19', 'thhoa@example.com', 1),
    ('Đặng Văn Toàn', '2002-09-05', 'vantoan@example.com', 1),
    ('Hoàng Thị Lan', '2002-11-02', 'thilan@example.com', 1),
    ('Nguyễn Hoàng Minh', '2002-06-30', 'hoangminh@example.com', 1),
    ('Vũ Thị Mai', '2002-02-21', 'vuthimai@example.com', 1),
    ('Ngô Văn Quang', '2002-04-12', 'vanquang@example.com', 1),
    ('Trần Thị Kim Anh', '2002-10-08', 'kimanh@example.com', 1),
    ('Phan Văn Bảo', '2002-12-25', 'vanbao@example.com', 1),


  ('Nguyễn Văn Bình', '2002-01-15', 'nguyenvanbinh@example.com', 2),
    ('Trần Thị Thanh', '2002-02-18', 'tranthithanh@example.com', 2),
    ('Lê Văn Hùng', '2002-03-22', 'levanhung@example.com', 2),
    ('Phạm Thị Hồng', '2002-04-10', 'phamthihong@example.com', 2),
    ('Ngô Văn Sơn', '2002-05-12', 'ngovanson@example.com', 2),
    ('Vũ Thị Thu', '2002-06-08', 'vuthithu@example.com', 2),
    ('Đặng Văn Thành', '2002-07-25', 'dangvanthanh@example.com', 2),
    ('Hoàng Thị Mai', '2002-08-14', 'hoangthimai@example.com', 2),
    ('Nguyễn Minh Tâm', '2002-09-30', 'nguyenminhtam@example.com', 2),
    ('Phan Văn Hoàng', '2002-10-22', 'phanvanhoang@example.com', 2),
    ('Nguyễn Hoàng Nam', '2002-01-10', 'nguyenhoangnam@example.com', 3),
    ('Trần Thị Ngọc', '2002-02-15', 'tranthingoc@example.com', 3),
    ('Lê Văn Hải', '2002-03-18', 'levanhai@example.com', 3),
    ('Phạm Thị Lan', '2002-04-12', 'phamthilan@example.com', 3),
    ('Ngô Văn Hòa', '2002-05-08', 'ngovanhoa@example.com', 3),
    ('Vũ Thị Hạnh', '2002-06-28', 'vuthihanh@example.com', 3),
    ('Đặng Văn Tuấn', '2002-07-19', 'dangvantuan@example.com', 3),
    ('Hoàng Thị Cúc', '2002-08-04', 'hoangthicuc@example.com', 3),
    ('Nguyễn Thị Hà', '2002-09-25', 'nguyenthitha@example.com', 3),
    ('Phan Minh Đức', '2002-10-14', 'phanminhduc@example.com', 3),
    ('Nguyễn Văn Phúc', '2002-01-08', 'nguyenvanphuc@example.com', 4),
    ('Trần Thị Thủy', '2002-02-22', 'tranthithuy@example.com', 4),
    ('Lê Minh Tuấn', '2002-03-17', 'leminhtuan@example.com', 4),
    ('Phạm Văn Sơn', '2002-04-25', 'phamvanson@example.com', 4),
    ('Ngô Thị Quỳnh', '2002-05-14', 'ngothiquynh@example.com', 4),
    ('Vũ Minh Quân', '2002-06-18', 'vuminhquan@example.com', 4),
    ('Đặng Thị Hà', '2002-07-27', 'dangthiha@example.com', 4),
    ('Hoàng Văn Đức', '2002-08-20', 'hoangvanduc@example.com', 4),
    ('Nguyễn Văn Anh', '2002-09-13', 'nguyenvananh@example.com', 4),
    ('Phan Thị Huyền', '2002-10-29', 'phanthihuyen@example.com', 4),
    ('Nguyễn Văn Bình', '2003-01-15', 'nguyenvanbinh@example.com', 5),
    ('Trần Thị Hương', '2003-02-10', 'tranthihuong@example.com', 5),
    ('Lê Quang Minh', '2003-03-20', 'lequangminh@example.com', 5),
    ('Phạm Thanh Tâm', '2003-04-05', 'phamthanhtam@example.com', 5),
    ('Nguyễn Thị Lan', '2003-05-18', 'nguyenthilan@example.com', 5),
    ('Hoàng Văn Hậu', '2003-06-22', 'hoangvanhau@example.com', 5),
    ('Phạm Văn Long', '2003-07-30', 'phamvanlong@example.com', 5),
    ('Trần Quốc Hùng', '2003-08-25', 'tranquochung@example.com', 5),
    ('Nguyễn Văn Hưng', '2003-09-12', 'nguyenvanhung@example.com', 5),
    ('Lê Minh Châu', '2003-10-08', 'leminhchau@example.com', 5),

    -- Sinh viên cho lớp id_lop = 6
    ('Nguyễn Văn Tùng', '2003-01-12', 'nguyenvantung@example.com', 6),
    ('Trần Đức Anh', '2003-02-14', 'tranducanh@example.com', 6),
    ('Lê Thu Trang', '2003-03-18', 'lethutrang@example.com', 6),
    ('Phạm Hoàng Nam', '2003-04-22', 'phamhoangnam@example.com', 6),
    ('Nguyễn Thu Hà', '2003-05-09', 'nguyenthuha@example.com', 6),
    ('Hoàng Văn Tân', '2003-06-16', 'hoangvantan@example.com', 6),
    ('Phạm Thị Lý', '2003-07-23', 'phamthily@example.com', 6),
    ('Trần Văn Toàn', '2003-08-28', 'tranvantoan@example.com', 6),
    ('Nguyễn Hồng Phúc', '2003-09-15', 'nguyenhongphuc@example.com', 6),
    ('Lê Thị Mai', '2003-10-19', 'lethimai@example.com', 6),

    -- Sinh viên cho lớp id_lop = 7
    ('Nguyễn Văn Khánh', '2003-01-25', 'nguyenvankhanh@example.com', 7),
    ('Trần Thị Hoa', '2003-02-28', 'tranthihoa@example.com', 7),
    ('Lê Quang Vũ', '2003-03-06', 'lequangvu@example.com', 7),
    ('Phạm Văn Cường', '2003-04-10', 'phamvancuong@example.com', 7),
    ('Nguyễn Thị Bích', '2003-05-13', 'nguyenthibich@example.com', 7),
    ('Hoàng Văn Đại', '2003-06-15', 'hoangvandai@example.com', 7),
    ('Phạm Thị Thu', '2003-07-19', 'phamthithu@example.com', 7),
    ('Trần Quốc Đạt', '2003-08-20', 'tranquocdat@example.com', 7),
    ('Nguyễn Văn Tuấn', '2003-09-25', 'nguyenvantuan@example.com', 7),
    ('Lê Thị Huyền', '2003-10-22', 'lethihuyen@example.com', 7),

    -- Sinh viên cho lớp id_lop = 8
    ('Nguyễn Thị Ánh', '2003-01-05', 'nguyenthianh@example.com', 8),
    ('Trần Văn Thành', '2003-02-11', 'tranvanthanh@example.com', 8),
    ('Lê Hồng Sơn', '2003-03-15', 'lehongson@example.com', 8),
    ('Phạm Thu Hà', '2003-04-12', 'phamthuha@example.com', 8),
    ('Nguyễn Minh Hoàng', '2003-05-21', 'nguyenminhhoang@example.com', 8),
    ('Hoàng Văn Hùng', '2003-06-30', 'hoangvanhung@example.com', 8),
    ('Phạm Thị Hoa', '2003-07-12', 'phamthihoa@example.com', 8),
    ('Trần Quốc Việt', '2003-08-10', 'tranquocviet@example.com', 8),
    ('Nguyễn Văn Toàn', '2003-09-14', 'nguyenvantoan@example.com', 8),
    ('Lê Thị Hạnh', '2003-10-26', 'lethihanh@example.com', 8),

    -- Sinh viên cho lớp id_lop = 9
    ('Nguyễn Văn A', '2004-01-01', 'nguyenvana@example.com', 9),
    ('Trần Thị B', '2004-02-14', 'tranthib@example.com', 9),
    ('Lê Minh C', '2004-03-10', 'leminhc@example.com', 9),
    ('Phạm Thị D', '2004-04-22', 'phamthid@example.com', 9),
    ('Ngô Văn E', '2004-05-11', 'ngovane@example.com', 9),
    ('Vũ Thị F', '2004-06-17', 'vuthif@example.com', 9),
    ('Đặng Văn G', '2004-07-09', 'dangvang@example.com', 9),
    ('Hoàng Thị H', '2004-08-20', 'hoangthih@example.com', 9),
    ('Nguyễn Thị I', '2004-09-15', 'nguyenthii@example.com', 9),
    ('Phan Minh J', '2004-10-10', 'phanminhj@example.com', 9),

    -- Sinh viên cho lớp id_lop = 10
    ('Nguyễn Thị K', '2004-01-25', 'nguyenthik@example.com', 10),
    ('Trần Văn L', '2004-02-18', 'tranvanl@example.com', 10),
    ('Lê Minh M', '2004-03-29', 'leminhm@example.com', 10),
    ('Phạm Thị N', '2004-04-02', 'phamthin@example.com', 10),
    ('Ngô Thị O', '2004-05-13', 'ngothio@example.com', 10),
    ('Vũ Văn P', '2004-06-23', 'vuvanp@example.com', 10),
    ('Đặng Thị Q', '2004-07-19', 'dangthiq@example.com', 10),
    ('Hoàng Văn R', '2004-08-11', 'hoangvanr@example.com', 10),
    ('Nguyễn Minh S', '2004-09-06', 'nguyenminhs@example.com', 10),
    ('Phan Thị T', '2004-10-14', 'phanthit@example.com', 10),

    -- Sinh viên cho lớp id_lop = 11
    ('Nguyễn Văn U', '2004-01-30', 'nguyenvanu@example.com', 11),
    ('Trần Minh V', '2004-02-22', 'tranminhv@example.com', 11),
    ('Lê Thị W', '2004-03-05', 'lethiw@example.com', 11),
    ('Phạm Văn X', '2004-04-14', 'phamvanx@example.com', 11),
    ('Ngô Minh Y', '2004-05-28', 'ngominhy@example.com', 11),
    ('Vũ Thị Z', '2004-06-10', 'vuthiz@example.com', 11),
    ('Đặng Minh AA', '2004-07-25', 'dangminhaa@example.com', 11),
    ('Hoàng Minh BB', '2004-08-15', 'hoangminhbb@example.com', 11),
    ('Nguyễn Thị CC', '2004-09-02', 'nguyenthicc@example.com', 11),
    ('Phan Minh DD', '2004-10-28', 'phanminhdd@example.com', 11),

    ('Nguyễn Thị EE', '2004-01-12', 'nguyenthiee@example.com', 12),
    ('Trần Minh FF', '2004-02-08', 'tranminhff@example.com', 12),
    ('Lê Thị GG', '2004-03-17', 'lethigg@example.com', 12),
    ('Phạm Thị HH', '2004-04-09', 'phamthihh@example.com', 12),
    ('Ngô Minh II', '2004-05-23', 'ngominhii@example.com', 12),
    ('Vũ Thị JJ', '2004-06-14', 'vuthijj@example.com', 12),
    ('Đặng Minh KK', '2004-07-12', 'dangminhkk@example.com', 12),
    ('Hoàng Minh LL', '2004-08-01', 'hoangminhll@example.com', 12),
    ('Nguyễn Thị MM', '2004-09-10', 'nguyenthimm@example.com', 12),
    ('Phan Minh NN', '2004-10-18', 'phanminhnn@example.com', 12),
    ('Nguyễn Văn A', '2005-01-12', 'nguyenvana@example.com', 13),
    ('Trần Thị B', '2005-02-18', 'tranthib@example.com', 13),
    ('Lê Văn C', '2005-03-15', 'levanc@example.com', 13),
    ('Phạm Thị D', '2005-04-22', 'phamthid@example.com', 13),
    ('Ngô Minh E', '2005-05-10', 'ngominhe@example.com', 13),
    ('Vũ Thị F', '2005-06-08', 'vuthif@example.com', 13),
    ('Đặng Văn G', '2005-07-14', 'dangvang@example.com', 13),
    ('Hoàng Thị H', '2005-08-21', 'hoangthih@example.com', 13),
    ('Nguyễn Thị I', '2005-09-05', 'nguyenthii@example.com', 13),
    ('Phan Minh J', '2005-10-19', 'phanminhj@example.com', 13),

    -- Sinh viên cho lớp id_lop = 14
    ('Nguyễn Văn K', '2005-01-25', 'nguyenvank@example.com', 14),
    ('Trần Minh L', '2005-02-14', 'tranminhl@example.com', 14),
    ('Lê Thị M', '2005-03-28', 'lethim@example.com', 14),
    ('Phạm Văn N', '2005-04-09', 'phamvann@example.com', 14),
    ('Ngô Thị O', '2005-05-23', 'ngothio@example.com', 14),
    ('Vũ Văn P', '2005-06-30', 'vuvanp@example.com', 14),
    ('Đặng Minh Q', '2005-07-11', 'dangminhq@example.com', 14),
    ('Hoàng Thị R', '2005-08-06', 'hoangthir@example.com', 14),
    ('Nguyễn Minh S', '2005-09-15', 'nguyenminhs@example.com', 14),
    ('Phan Văn T', '2005-10-03', 'phanvant@example.com', 14),

    -- Sinh viên cho lớp id_lop = 15
    ('Nguyễn Thị U', '2005-01-10', 'nguyenthieu@example.com', 15),
    ('Trần Minh V', '2005-02-19', 'tranminhv@example.com', 15),
    ('Lê Văn W', '2005-03-06', 'levanw@example.com', 15),
    ('Phạm Thị X', '2005-04-15', 'phamthix@example.com', 15),
    ('Ngô Minh Y', '2005-05-30', 'ngominhy@example.com', 15),
    ('Vũ Thị Z', '2005-06-17', 'vuthiz@example.com', 15),
    ('Đặng Văn AA', '2005-07-29', 'dangvanaa@example.com', 15),
    ('Hoàng Thị BB', '2005-08-04', 'hoangthibb@example.com', 15),
    ('Nguyễn Minh CC', '2005-09-12', 'nguyenminhcc@example.com', 15),
    ('Phan Thị DD', '2005-10-07', 'phanthidd@example.com', 15),

    -- Sinh viên cho lớp id_lop = 16
    ('Nguyễn Văn EE', '2005-01-08', 'nguyenvanee@example.com', 16),
    ('Trần Minh FF', '2005-02-22', 'tranminhff@example.com', 16),
    ('Lê Thị GG', '2005-03-19', 'lethigg@example.com', 16),
    ('Phạm Thị HH', '2005-04-13', 'phamthihh@example.com', 16),
    ('Ngô Minh II', '2005-05-18', 'ngominhii@example.com', 16),
    ('Vũ Văn JJ', '2005-06-14', 'vuvanjj@example.com', 16),
    ('Đặng Thị KK', '2005-07-27', 'dangthikk@example.com', 16),
    ('Hoàng Minh LL', '2005-08-01', 'hoangminhll@example.com', 16),
    ('Nguyễn Thị MM', '2005-09-20', 'nguyenthimm@example.com', 16),
    ('Phan Minh NN', '2005-10-18', 'phanminhnn@example.com', 16);


 
   
-- Xoá tin nhắn và cập nhật lại id cho mục quản lý tương tác
/*
 * use ck1; 
DELETE FROM Contacts;
ALTER TABLE Contacts AUTO_INCREMENT = 1;
 */

-- Xoá Danh sách giảng viên và cập nhật lại id
/*
 * use ck1; 
DELETE FROM GiangVien;
ALTER TABLE GiangVien AUTO_INCREMENT = 1;
*/

  


