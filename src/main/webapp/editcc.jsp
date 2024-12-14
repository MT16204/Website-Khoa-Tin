<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Sửa thông tin Chương Trình</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<body>
    <div class="modal-dialog">
        <div class="modal-content">
            <form action="updatecc" method="post">
                <div class="modal-header">
                    <h4 class="modal-title">Chỉnh sửa thông tin Chương Trình</h4>
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                </div>
                <div class="modal-body">
                    <!-- Mã Chương Trình -->
                    <div class="form-group">
                        <label for="id">Mã Chương Trình</label>
                        <input name="id" type="text" class="form-control" value="${sv.id}" readonly>
                    </div>
                    <!-- Tên Chương Trình -->
                    <div class="form-group">
                        <label for="name">Tên Chương Trình</label>
                        <input name="name" type="text" class="form-control" value="${sv.ten_chuyen_nganh}" placeholder="Nhập tên" required>
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
