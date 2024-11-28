<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Sửa thông tin Giảng Viên</title>
    <!-- Thêm liên kết Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <!-- Thêm liên kết jQuery, Popper.js và Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<body>
    <div class="modal-dialog">
        <div class="modal-content">
            <form action="updategv" method="post" enctype="multipart/form-data">
                <input type="hidden" name="id" value="${sv.id}">
                <div class="modal-header">
                    <h4 class="modal-title">Chỉnh sửa thông tin Giảng Viên</h4>
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                </div>
                <div class="modal-body">
                    <!-- ID Giảng Viên -->
                    <div class="form-group">
                        <label for="id">ID</label>
                        <input name="id" type="text" class="form-control" value="${sv.id}" placeholder="Nhập ID" required readonly>
                    </div>
                    <!-- Tên Giảng Viên -->
                    <div class="form-group">
                        <label for="name">Tên</label>
                        <input name="name" type="text" class="form-control" value="${sv.ten}" placeholder="Nhập tên" required>
                    </div>
                    <!-- Hình ảnh hiện tại -->
                    <div class="form-group">
                        <label for="name">Hình ảnh</label>
                        <img src="${sv.anh}" alt="Ảnh giảng viên" style="width: 90px; height: 90px; object-fit: cover;"> 
                    </div>
                    <!-- Chọn ảnh mới -->
                    <div class="form-group">
                        <input type="file" name="image" accept="image/*" class="form-control">
                    </div>
                    <!-- Email -->
                    <div class="form-group">
                        <label for="email">Email</label>
                        <input name="email" type="text" class="form-control" value="${sv.email}" placeholder="Nhập email" required>
                    </div>
                    <!-- Chức vụ -->
                    <div class="form-group">
                        <label for="chucvu">Chức vụ</label>
                        <input name="chucvu" type="text" class="form-control" value="${sv.chuc_vu}" placeholder="Nhập chức vụ" required>
                    </div>
                    <!-- Mã Bộ Môn -->
                    <div class="form-group">
                        <label for="idbomon">Mã Bộ Môn</label>
                        <input name="idbomon" type="text" class="form-control" value="${sv.id_to_bo_mon}" placeholder="Nhập mã bộ môn" required>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Hủy</button>
                    <button type="submit" class="btn btn-success">Cập nhật</button>
                </div>
            </form>
        </div>
    </div>
</body>
</html>
