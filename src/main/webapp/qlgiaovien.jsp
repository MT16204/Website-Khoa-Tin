<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!doctype html>

<html lang="en" class="light-style layout-menu-fixed layout-compact"
	dir="ltr" data-theme="theme-default" data-assets-path="assets/"
	data-template="vertical-menu-template-free" data-style="light">
<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0" />
<title>Admin</title>
<meta name="description" content="" />
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"></script>
<link rel="shortcut icon" type="image" href="images/logo.png">

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"></script>
<link rel="preconnect" href="https://fonts.googleapis.com" />
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
<link
	href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700&ampdisplay=swap"
	rel="stylesheet" />
<link rel="stylesheet"
	href="assets/vendor/fonts/remixicon/remixicon.css" />
<link rel="stylesheet"
	href="assets/vendor/libs/node-waves/node-waves.css" />
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
<link rel="stylesheet" href="assets/vendor/css/core.css"
	class="template-customizer-core-css" />
<link rel="stylesheet" href="assets/vendor/css/theme-default.css"
	class="template-customizer-theme-css" />
<link rel="stylesheet" href="assets/css/demo.css" />
<link rel="stylesheet" href="assets/vendor/css/core.css"
	class="template-customizer-core-css" />
<link rel="stylesheet"
	href="assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.css" />
<script src="assets/vendor/js/helpers.js"></script>
<script src="assets/js/config.js"></script>
<style>
.accordion {
	max-width: 900px;
	margin: 20px 20px;
	padding: 20px 20px;
	border-radius: 8px;
	overflow: hidden;
	box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
	background-color: #ffffff;
}

.accordion-item {
	border-bottom: 1px solid #ddd;
	overflow: hidden;
	transition: all 0.3s ease-in-out;
}

.accordion-header {
	padding: 20px 20px;
	cursor: pointer;
	display: flex;
	justify-content: space-between;
	align-items: center;
	background-color: #f8f9fa;
	font-size: 16px;
	font-weight: bold;
	color: #333;
	transition: background-color 0.3s ease, color 0.3s ease;
}

.accordion-header.active {
	background-color: #e9ecef;
	color: #0056b3;
}

.accordion-content {
	padding: 20px 20px;
	display: none;
	background-color: #f8f9fa;
	font-size: 14px;
	color: #555;
	line-height: 1.5;
}
</style>
</head>

<body>
	<!-- Layout wrapper -->
	<div class="layout-wrapper layout-content-navbar">
		<div class="layout-container">
			<!-- Menu -->

			<aside id="layout-menu"
				class="layout-menu menu-vertical menu bg-menu-theme">
				<div class="app-brand demo">
					<a href="HomeControl" class="app-brand-link"> <span
						class="app-brand-logo demo me-1"> <span style="color: var(--bs-primary)"> </span>
					</span> <span class="app-brand-text demo menu-text fw-semibold ms-2">Admin</span>
					</a> <a href="javascript:void(0);"
						class="layout-menu-toggle menu-link text-large ms-auto"> <i
						class="menu-toggle-icon d-xl-block align-middle"></i>
					</a>
				</div>

				<div class="menu-inner-shadow"></div>

				<ul class="menu-inner py-1">
					<!-- Dashboards -->

					<li class="menu-header mt-7"><span class="menu-header-text">QUẢN
							LÝ</span></li>
					<!-- Layouts -->
					<li class="menu-item"><a href="javascript:void(0);"
						class="menu-link menu-toggle"> <i
							class="menu-icon tf-icons ri-layout-2-line"></i>
							<div data-i18n="Layouts">Quản lý Giáo viên</div>
					</a>

						<ul class="menu-sub">
							<c:forEach items="${list}" var="o">
								<li class="menu-item"><a href="GiaovienControl?id=${o.id}"
									class="menu-link">
										<div data-i18n="Without menu">${o.ten_to_bo_mon}</div>
								</a></li>
							</c:forEach>

						</ul></li>

					<!-- Front Pages -->
					<li class="menu-item"><a href="javascript:void(0);"
						class="menu-link menu-toggle"> <i
							class="menu-icon tf-icons ri-file-copy-line"></i>
							<div data-i18n="Front Pages">Quản lý Sinh viên</div>

					</a>
						<ul class="menu-sub">
							<c:forEach items="${list3}" var="o">
								<li class="menu-item"><a
									href="GiaovienControl?idsv=${o.id}" class="menu-link">

										<div data-i18n="Landing">${o.ten_chuyen_nganh}</div>
								</a></li>
							</c:forEach>
						</ul></li>
					<li class="menu-item"><a href="javascript:void(0);"
						class="menu-link menu-toggle"> <i
							class="menu-icon tf-icons ri-file-copy-line"></i>
							<div data-i18n="Front Pages">Quản lý Tương tác</div>

					</a>
						<ul class="menu-sub">
							<c:forEach items="${list5}" var="o">
								<li class="menu-item"><a
									href="GiaovienControl?idsubject=${o.idsubject}"
									class="menu-link">
										<div data-i18n="Landing">${o.namesubject}</div>
								</a></li>
							</c:forEach>

						</ul></li>
			</aside>
			<!-- / Menu -->

			<!-- Layout container -->
			<div class="layout-page">
				<!-- Navbar -->

				<nav
					class="layout-navbar container-xxl navbar navbar-expand-xl navbar-detached align-items-center bg-navbar-theme"
					id="layout-navbar">
					<div
						class="layout-menu-toggle navbar-nav align-items-xl-center me-4 me-xl-0 d-xl-none">
						<a class="nav-item nav-link px-0 me-xl-6"
							href="javascript:void(0)"> <i class="ri-menu-fill ri-24px"></i>
						</a>
					</div>

					<div class="navbar-nav-right d-flex align-items-center"
						id="navbar-collapse">
						<!-- Thanh tìm kiếm -->
						<div class="navbar-nav align-items-center">
							<div class="nav-item d-flex align-items-center">
								<i class="ri-search-line ri-22px me-2"></i> <input type="text"
									id="searchInput" class="form-control border-0 shadow-none"
									placeholder="Tìm kiếm" aria-label="Search..."
									oninput="filterList()" />

							</div>
						</div>

						<!-- /Thanh tìm kiếm -->

						<ul class="navbar-nav flex-row align-items-center ms-auto">
							<li class="nav-item navbar-dropdown dropdown-user dropdown">
								<a class="nav-link dropdown-toggle hide-arrow p-0"
								href="javascript:void(0);" data-bs-toggle="dropdown">
									<div class="avatar avatar-online">
										<img src="assets/img/avatars/1.png" alt
											class="w-px-40 h-auto rounded-circle" />
									</div>
							</a>
								<ul class="dropdown-menu dropdown-menu-end mt-3 py-2">
									<li><a class="dropdown-item" href="#">
											<div class="d-flex align-items-center">
												<div class="flex-shrink-0 me-2">
													<div class="avatar avatar-online">
														<img src="assets/img/avatars/1.png" alt
															class="w-px-40 h-auto rounded-circle" />
													</div>
												</div>
												<div class="flex-grow-1">
													<h6 class="mb-0 small">Admin</h6>
													<small class="text-muted">Admin</small>
												</div>
											</div>
									</a></li>
									<li>
										<div class="dropdown-divider"></div>
									</li>

									<li>
										<div class="dropdown-divider"></div>
									</li>
									<li>
										<div class="d-grid px-4 pt-2 pb-1">
											<a class="btn btn-danger d-flex" href="LogoutServlet"> <small
												class="align-middle">Logout</small> <i
												class="ri-logout-box-r-line ms-2 ri-16px"></i>
											</a>
										</div>
									</li>
								</ul>
							</li>
						</ul>
					</div>
				</nav>

				<!-- / Navbar -->

				<!-- Content wrapper -->
				<div class="content-wrapper">

					<c:if test="${not empty list2}">


						<div class="table-responsive text-nowrap sticky-table">
							<c:forEach items="${listt}" var="o">
								<h3 class="card-header">Danh sách Giảng Viên
									${o.ten_to_bo_mon}</h3>
							</c:forEach>
							<table class="table table-bordered table-striped">
								<thead>
									<tr>
										<th>Tên</th>
										<th>Hình ảnh</th>
										<th>Email</th>
										<th>Chức vụ</th>
										<th>
											<div class="col-sm-6">
												<a href="#addEmployeeModal" class="btn btn-success"
													data-bs-toggle="modal"> <i class="material-icons"></i>
													<span>Add</span></a>
											</div>

										</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach items="${list2}" var="o">
										<tr>
											<td>${o.ten}</td>
											<td><c:choose>
													<c:when test="${not empty o.anh}">
														<img src="${o.anh}" alt="Ảnh giảng viên"
															style="width: 90px; height: 90px; object-fit: cover;">
													</c:when>
													<c:otherwise>
														<img src="images/default-avatar.png" alt="Ảnh mặc định"
															style="width: 90px; height: 90px; object-fit: cover;">
													</c:otherwise>
												</c:choose></td>
											<td>${o.email}</td>
											<td>${o.chuc_vu}</td>
											<td><a href="editgv?id=${o.id}" class="edit"
												data-toggle="modal"><i class="material-icons"
													data-toggle="tooltip" title="edit">&#xE254;</i></a> <a
												href="deletegv?id=${o.id}" class="delete"
												data-toggle="modal"><i class="material-icons"
													data-toggle="tooltip" title="Delete">&#xE872;</i></a></td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
					</c:if>
				</div>
				
				<!-- Thêm Giảng viên -->
				<div id="addEmployeeModal" class="modal fade" tabindex="-1"
					role="dialog" aria-labelledby="addsvModalLabel" aria-hidden="true">
					<div class="modal-dialog">
						<div class="modal-content">
							<form action="add3" method="post" enctype="multipart/form-data">
								<div class="modal-header">
									<h4 class="modal-title" id="addsvModalLabel">Thêm Giảng
										Viên</h4>
									<button type="button" class="close" data-dismiss="modal"
										aria-hidden="true">&times;</button>
								</div>
								<div class="modal-body">
									<!-- Tên Sinh Viên -->
									<div class="form-group">
										<label>Tên</label> <input name="name" type="text"
											class="form-control" placeholder="Nhập tên" required>
									</div>
									<!-- Tuổi -->
									<div class="form-group">
										<label>Email</label> <input name="Email" type="text"
											class="form-control" required>
									</div>
									<div class="form-group">
										<label>Hình ảnh</label> <input type="file" name="image"
											accept="image/*" class="form-control" required>
									</div>
									<!-- Lớp -->
									<div class="form-group">
										<label>Chức vụ</label> <input name="chucvu" type="text"
											class="form-control" required>
									</div>
									<!-- Mã Chuyên Ngành -->
									<div class="form-group">
										<label>Tổ Bộ Môn</label> <select name="idbomon"
											class="form-select" aria-label="Default select example">
											<c:forEach items="${list}" var="o">
												<option value="${o.id}">${o.ten_to_bo_mon}</option>
											</c:forEach>
										</select>
									</div>

								</div>
								<div class="modal-footer">
									<button type="button" class="btn btn-secondary"
										data-dismiss="modal">Hủy</button>
									<button type="submit" class="btn btn-success">Thêm
										Giảng Viên</button>
								</div>
							</form>
						</div>
					</div>
				</div>


				<!-- Thêm Sinh Viên -->
				<div id="addsv" class="modal fade" tabindex="-1" role="dialog"
					aria-labelledby="addsvModalLabel" aria-hidden="true">
					<div class="modal-dialog">
						<div class="modal-content">
							<form action="addsvnek" method="post">
								<div class="modal-header">
									<h4 class="modal-title" id="addsvModalLabel">Thêm Sinh
										Viên</h4>
									<button type="button" class="close" data-dismiss="modal"
										aria-hidden="true">&times;</button>
								</div>
								<div class="modal-body">
									<!-- Tên Sinh Viên -->
									<div class="form-group">
										<label for="name">Tên</label> <input name="name" type="text"
											class="form-control" placeholder="Nhập tên" required>
									</div>
									<!-- Tuổi -->
									<div class="form-group">
										<label for="tuoi">Ngày Sinh</label> <input name="tuoi"
											type="date" class="form-control" required>
									</div>

									<!-- Lớp -->
									<div class="form-group">
										<label for="email">Email</label> <input name="email"
											type="text" class="form-control" placeholder="Nhập Email"
											required>
									</div>
									<!-- Mã Chuyên Ngành -->
									<div class="form-group">
										<label>Lớp</label> <select name="lop" class="form-select"
											aria-label="Default select example">
											<c:forEach items="${list10}" var="o">
												<option value="${o.id}">${o.ten_lop}</option>
											</c:forEach>
										</select>
									</div>

								</div>
								<div class="modal-footer">
									<button type="button" class="btn btn-secondary"
										data-dismiss="modal">Hủy</button>
									<button type="submit" class="btn btn-success">Thêm
								</div>
							</form>
						</div>
					</div>
				</div>



				<!-- Tương tác -->
				<div class="main-content">
				<c:if test="${not empty list7}">
					<div class="accordion">
							<c:forEach items="${list7}" var="o">
								<div class="accordion-item">
									<div class="accordion-header">
										${o.name} <span style="float: right; cursor: pointer;">▼</span>
									</div>
									<div class="accordion-content">
										<p>${o.message}</p>
									</div>
								</div>
							</c:forEach>						
					</div>
					</c:if>
				</div>



<script>  
    document.addEventListener("DOMContentLoaded", () => {
        const headers = document.querySelectorAll('.accordion-header');

        headers.forEach(header => {
            header.addEventListener('click', () => {
                const content = header.nextElementSibling;

                // Toggle hiển thị nội dung
                const isOpen = content.style.display === "block";
                document.querySelectorAll('.accordion-content').forEach(c => (c.style.display = "none"));
                document.querySelectorAll('.accordion-header').forEach(h => h.classList.remove('active'));

                if (!isOpen) {
                    content.style.display = "block";
                    header.classList.add('active');
                } else {
                    content.style.display = "none";
                }
            });
        });
    }); 
</script>

				<!-- Danh sách Sinh Viên -->
				<div class="content-wrapper">
					<c:if test="${not empty list4}">

						<div class="table-responsive text-nowrap sticky-table">
							<h3 class="card-header">Danh sách Sinh Viên chuyên ngành
								${list4[0].tenChuongTrinh}</h3>
							<table class="table table-bordered table-striped">
								<thead>
									<tr>
										<th>Tên</th>
										<th>Ngày Sinh</th>
										<th>Email</th>
										<th>Lớp Sinh Hoạt</th>
										<th>
											<div class="col-sm-6">
												<a href="#addsv" class="btn btn-success"
													data-bs-toggle="modal"> <i class="material-icons"></i>
													<span>Add</span></a>
											</div>

										</th>

									</tr>
								</thead>
								<tbody>
									<c:forEach items="${list4}" var="o">
										<tr>
											<td>${o.ten}</td>
											<td><fmt:parseDate value="${o.tuoi}"
													pattern="yyyy-MM-dd" var="parsedDate" /> <fmt:formatDate
													value="${parsedDate}" pattern="dd-MM-yyyy" /></td>

											<td>${o.email}</td>
											<td>${o.tenLop}</td>
											<td><a href="edit?id=${o.id}" class="edit"
												data-toggle="modal"><i class="material-icons"
													data-toggle="tooltip" title="edit">&#xE254;</i></a> <a
												href="delete?id=${o.id}" class="delete" data-toggle="modal"><i
													class="material-icons" data-toggle="tooltip" title="Delete">&#xE872;</i></a>
											</td>
										</tr>
									</c:forEach>

								</tbody>
							</table>
						</div>
					</c:if>
				</div>
				<div class="content-backdrop fade"></div>
			</div>
			<!-- Content wrapper -->
		</div>
		<!-- / Layout page -->
	</div>
	<div class="layout-overlay layout-menu-toggle"></div>
	<script src="assets/vendor/libs/jquery/jquery.js"></script>
	<script src="assets/vendor/libs/popper/popper.js"></script>
	<script src="assets/vendor/js/bootstrap.js"></script>
	<script src="assets/vendor/libs/node-waves/node-waves.js"></script>
	<script src="assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.js"></script>
	<script src="assets/vendor/js/menu.js"></script>
	<script src="assets/vendor/libs/apex-charts/apexcharts.js"></script>
	<script src="assets/js/main.js"></script>
	<script src="assets/js/dashboards-analytics.js"></script>
	<script async defer src="https://buttons.github.io/buttons.js"></script>
	<!-- Bootstrap Bundle JS -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

	<script>
  function filterList() {
    // Lấy giá trị người dùng nhập
    const query = document.getElementById("searchInput").value.toLowerCase();

    // Lấy tất cả các hàng trong bảng
    const rows = document.querySelectorAll("table tbody tr");

    // Lặp qua các hàng để kiểm tra nội dung
    rows.forEach((row) => {
      // Lấy toàn bộ văn bản trong hàng (kết hợp tên, email, chức vụ)
      const rowText = row.textContent.toLowerCase();

      // Hiển thị hoặc ẩn hàng dựa vào từ khóa
      if (rowText.includes(query)) {
        row.style.display = ""; // Hiển thị hàng
      } else {
        row.style.display = "none"; // Ẩn hàng
      }
    });
  }
</script>
</body>
</html>
