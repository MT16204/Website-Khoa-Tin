<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sửa thông tin Sinh Viên</title>
<!-- Thêm liên kết Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<!-- Thêm liên kết jQuery, Popper.js và Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="modal-dialog">
		<div class="modal-content">
			<form action="updateStudent" method="post">
				<div class="modal-header">
					<h4 class="modal-title">Chỉnh sửa thông tin Sinh Viên</h4>
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">&times;</button>
				</div>
				<div class="modal-body">
					<!-- ID Sinh Viên -->
					<div class="form-group">
						<label for="id">Mã Sinh Viên</label> <input name="id" type="text"
							class="form-control" value="${sv.id}" readonly>
					</div>
					<!-- Tên Sinh Viên -->
					<div class="form-group">
						<label for="name">Tên</label> <input name="name" type="text"
							class="form-control" value="${sv.ten}" placeholder="Nhập tên"
							required>
					</div>
					<!-- Tuổi -->
					<div class="form-group">
						<label for="tuoi">Tuổi</label> <input name="tuoi" type="date"
							class="form-control" value="${sv.tuoi}" placeholder="Nhập tuổi"
							required>
					</div>
					<!-- Lớp -->
					<div class="form-group">
						<label for="lop">Email</label> <input name="email" type="text"
							class="form-control" value="${sv.email}" placeholder="Nhập email"
							required>
					</div>
					<!-- Mã Chuyên Ngành -->
					<!-- Mã Lớp -->
					<div class="form-group">
						<label for="idlop">Lớp</label> <select name="idlop"
							class="form-select" aria-label="Default select example">
							<c:forEach items="${list3}" var="o">
								<option value="${o.id}"
									${o.ten_lop == sv.tenLop ? 'selected' : ''}>
									${o.ten_lop}</option>
								
							</c:forEach>
						</select>
					</div>
					<input type="hidden" id="id_chuongtrinh" name="id_chuongtrinh"
						value="${sv.id_chuongtrinh}">



				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-dismiss="modal">Hủy</button>
					<button type="submit" class="btn btn-success">Cập nhật</button>
				</div>
			</form>
		</div>
	</div>

</body>
</html>
