<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!doctype html>

<html
  lang="en"
  class="light-style layout-menu-fixed layout-compact"
  dir="ltr"
  data-theme="theme-default"
  data-assets-path="assets/"
  data-template="vertical-menu-template-free"
  data-style="light">
  <head>
    <meta charset="utf-8" />
    <meta name="viewport"content="width=device-width, initial-scale=1.0, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0" />
    <meta name="description" content="" />

    <title> Admin </title>
    <link rel="shortcut icon" type="image" href="images/logo.png">
	<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"></script>


    <!-- Fonts -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"></script>
    
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
      href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700&ampdisplay=swap"
      rel="stylesheet" />

    <link rel="stylesheet" href="assets/vendor/fonts/remixicon/remixicon.css" />

    <!-- Menu waves for no-customizer fix -->
    <link rel="stylesheet" href="assets/vendor/libs/node-waves/node-waves.css" />
	<!-- Bootstrap CSS -->
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

	<!-- jQuery (yêu cầu cho Bootstrap 4 trở xuống) -->
	<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>

	<!-- Bootstrap JS -->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

    <!-- Core CSS -->
    <link rel="stylesheet" href="assets/vendor/css/core.css" class="template-customizer-core-css" />
    <link rel="stylesheet" href="assets/vendor/css/theme-default.css" class="template-customizer-theme-css" />
    <link rel="stylesheet" href="assets/css/demo.css" />
    <link rel="stylesheet" href="assets/vendor/css/core.css" class="template-customizer-core-css" />

    <!-- Vendors CSS -->
    <link rel="stylesheet" href="assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.css" />

    <!-- Page CSS -->

    <!-- Helpers -->
    <script src="assets/vendor/js/helpers.js"></script>
    <!--! Template customizer & Theme config files MUST be included after core stylesheets and helpers.js in the <head> section -->
    <!--? Config:  Mandatory theme config file contain global vars & default theme options, Set your preferred theme option in this file.  -->
    <script src="assets/js/config.js"></script>
  </head>

  <body>
    <!-- Layout wrapper -->
    <div class="layout-wrapper layout-content-navbar">
      <div class="layout-container">
        <!-- Menu -->

        <aside id="layout-menu" class="layout-menu menu-vertical menu bg-menu-theme">
          <div class="app-brand demo">
            <a href="HomeControl" class="app-brand-link">
              <!-- <span class="app-brand-logo demo me-1">
                <span style="color: var(--bs-primary)">
                  <svg width="30" height="24" viewBox="0 0 250 196" fill="none" xmlns="http://www.w3.org/2000/svg">
                    <path
                      fill-rule="evenodd"
                      clip-rule="evenodd"
                      d="M12.3002 1.25469L56.655 28.6432C59.0349 30.1128 60.4839 32.711 60.4839 35.5089V160.63C60.4839 163.468 58.9941 166.097 56.5603 167.553L12.2055 194.107C8.3836 196.395 3.43136 195.15 1.14435 191.327C0.395485 190.075 0 188.643 0 187.184V8.12039C0 3.66447 3.61061 0.0522461 8.06452 0.0522461C9.56056 0.0522461 11.0271 0.468577 12.3002 1.25469Z"
                      fill="currentColor" />
                    <path
                      opacity="0.077704"
                      fill-rule="evenodd"
                      clip-rule="evenodd"
                      d="M0 65.2656L60.4839 99.9629V133.979L0 65.2656Z"
                      fill="black" />
                    <path
                      opacity="0.077704"
                      fill-rule="evenodd"
                      clip-rule="evenodd"
                      d="M0 65.2656L60.4839 99.0795V119.859L0 65.2656Z"
                      fill="black" />
                    <path
                      fill-rule="evenodd"
                      clip-rule="evenodd"
                      d="M237.71 1.22393L193.355 28.5207C190.97 29.9889 189.516 32.5905 189.516 35.3927V160.631C189.516 163.469 191.006 166.098 193.44 167.555L237.794 194.108C241.616 196.396 246.569 195.151 248.856 191.328C249.605 190.076 250 188.644 250 187.185V8.09597C250 3.64006 246.389 0.027832 241.935 0.027832C240.444 0.027832 238.981 0.441882 237.71 1.22393Z"
                      fill="currentColor" />
                    <path
                      opacity="0.077704"
                      fill-rule="evenodd"
                      clip-rule="evenodd"
                      d="M250 65.2656L189.516 99.8897V135.006L250 65.2656Z"
                      fill="black" />
                    <path
                      opacity="0.077704"
                      fill-rule="evenodd"
                      clip-rule="evenodd"
                      d="M250 65.2656L189.516 99.0497V120.886L250 65.2656Z"
                      fill="black" />
                    <path
                      fill-rule="evenodd"
                      clip-rule="evenodd"
                      d="M12.2787 1.18923L125 70.3075V136.87L0 65.2465V8.06814C0 3.61223 3.61061 0 8.06452 0C9.552 0 11.0105 0.411583 12.2787 1.18923Z"
                      fill="currentColor" />
                    <path
                      fill-rule="evenodd"
                      clip-rule="evenodd"
                      d="M12.2787 1.18923L125 70.3075V136.87L0 65.2465V8.06814C0 3.61223 3.61061 0 8.06452 0C9.552 0 11.0105 0.411583 12.2787 1.18923Z"
                      fill="white"
                      fill-opacity="0.15" />
                    <path
                      fill-rule="evenodd"
                      clip-rule="evenodd"
                      d="M237.721 1.18923L125 70.3075V136.87L250 65.2465V8.06814C250 3.61223 246.389 0 241.935 0C240.448 0 238.99 0.411583 237.721 1.18923Z"
                      fill="currentColor" />
                    <path
                      fill-rule="evenodd"
                      clip-rule="evenodd"
                      d="M237.721 1.18923L125 70.3075V136.87L250 65.2465V8.06814C250 3.61223 246.389 0 241.935 0C240.448 0 238.99 0.411583 237.721 1.18923Z"
                      fill="white"
                      fill-opacity="0.3" />
                  </svg>
                </span>
              </span> -->
              <span class="app-brand-text demo menu-text fw-semibold ms-4">Admin</span>
            </a>

            <a href="javascript:void(0);" class="layout-menu-toggle menu-link text-large ms-auto">
              <i class="menu-toggle-icon d-xl-block align-middle"></i>
            </a>
          </div>

          <div class="menu-inner-shadow"></div>

          <ul class="menu-inner py-1">
            <!-- Dashboards -->
           
  			 <li class="menu-header mt-7">
              <span class="menu-header-text">QUẢN LÝ</span>
            </li>
            <!-- Layouts -->
		   <li class="menu-item">
              <a href="javascript:void(0);" class="menu-link menu-toggle">
                <i class="menu-icon tf-icons ri-layout-2-line"></i>
                <div data-i18n="Layouts">Quản lý Giáo viên</div>
              </a>
    		 
              <ul class="menu-sub">
               <c:forEach items="${list}" var="o">
                <li class="menu-item">
                  <a href="GiaovienControl?id=${o.id}" class="menu-link">
                    <div data-i18n="Without menu">${o.ten_to_bo_mon}</div>
                  </a>
                </li>
               </c:forEach>
              
              </ul>
            </li>

					<!-- Front Pages -->
            <li class="menu-item">
              <a href="javascript:void(0);" class="menu-link menu-toggle">
                <i class="menu-icon tf-icons ri-file-copy-line"></i>
                <div data-i18n="Front Pages">Quản lý Sinh viên</div>
              
              </a>
              <ul class="menu-sub">
               <c:forEach items="${list3}" var="o">
                <li class="menu-item">
                  
                  <a href="GiaovienControl?idsv=${o.id}" class="menu-link">
                 
                    <div data-i18n="Landing">${o.ten_chuyen_nganh}</div>
                  </a>
                </li>
                 </c:forEach>
              </ul>
            </li>

        </aside>
        <!-- / Menu -->

        <!-- Layout container -->
        <div class="layout-page">
          <!-- Navbar -->

          <nav
            class="layout-navbar container-xxl navbar navbar-expand-xl navbar-detached align-items-center bg-navbar-theme"
            id="layout-navbar">
            <div class="layout-menu-toggle navbar-nav align-items-xl-center me-4 me-xl-0 d-xl-none">
              <a class="nav-item nav-link px-0 me-xl-6" href="javascript:void(0)">
                <i class="ri-menu-fill ri-24px"></i>
              </a>
            </div>

            <div class="navbar-nav-right d-flex align-items-center" id="navbar-collapse">
              <!-- Search -->
              <div class="navbar-nav align-items-center">
                <div class="nav-item d-flex align-items-center">
                  <i class="ri-search-line ri-22px me-2"></i>
                  <input
                    type="text"
                    class="form-control border-0 shadow-none"
                    placeholder="Search..."
                    aria-label="Search..." />
                </div>
              </div>
              <!-- /Search -->

              <ul class="navbar-nav flex-row align-items-center ms-auto">

                <!-- User -->
                <li class="nav-item navbar-dropdown dropdown-user dropdown">
                  <a
                    class="nav-link dropdown-toggle hide-arrow p-0"
                    href="javascript:void(0)"
                    data-bs-toggle="dropdown">
                    <div class="avatar avatar-online">
                      <img src="assets/img/avatars/1.png" alt class="w-px-40 h-auto rounded-circle" />
                    </div>
                  </a>
                  <ul class="dropdown-menu dropdown-menu-end mt-3 py-2">
                    <li>
                      <a class="dropdown-item" href="#">
                        <div class="d-flex align-items-center">
                          <div class="flex-shrink-0 me-2">
                            <div class="avatar avatar-online">
                              <img src="assets/img/avatars/1.png" alt class="w-px-40 h-auto rounded-circle" />
                            </div>
                          </div>
                          <div class="flex-grow-1">
                            <h6 class="mb-0 small">John Doe</h6>
                            <small class="text-muted">Admin</small>
                          </div>
                        </div>
                      </a>
                    </li>
                    <li>
                      <div class="dropdown-divider"></div>
                    </li>
                    <li>
                      <a class="dropdown-item" href="#">
                        <i class="ri-user-3-line ri-22px me-2"></i>
                        <span class="align-middle">My Profile</span>
                      </a>
                    </li>
                    <li>
                      <a class="dropdown-item" href="#">
                        <i class="ri-settings-4-line ri-22px me-2"></i>
                        <span class="align-middle">Settings</span>
                      </a>
                    </li>
                    <li>
                      <a class="dropdown-item" href="#">
                        <span class="d-flex align-items-center align-middle">
                          <i class="flex-shrink-0 ri-file-text-line ri-22px me-3"></i>
                          <span class="flex-grow-1 align-middle">Billing</span>
                          <span
                            class="flex-shrink-0 badge badge-center rounded-pill bg-danger h-px-20 d-flex align-items-center justify-content-center"
                            >4</span
                          >
                        </span>
                      </a>
                    </li>
                    <li>
                      <div class="dropdown-divider"></div>
                    </li>
                    <li>
                      <div class="d-grid px-4 pt-2 pb-1">
                        <a class="btn btn-danger d-flex" href="javascript:void(0);">
                          <small class="align-middle">Logout</small>
                          <i class="ri-logout-box-r-line ms-2 ri-16px"></i>
                        </a>
                      </div>
                    </li>
                  </ul>
                </li>
                <!--/ User -->
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
													<a href="#addEmployeeModal" class="btn btn-success" data-bs-toggle="modal">
													<i class="material-icons"></i>
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
													data-toggle="tooltip" 
													title="edit">&#xE254;</i></a>
											 <a href="deletegv?id=${o.id}" class="delete"
												data-toggle="modal"><i class="material-icons"
													data-toggle="tooltip" 
													title="Delete">&#xE872;</i></a>
											</td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
					</c:if>
				</div>
				<div id="addEmployeeModal" class="modal fade" tabindex="-1" role="dialog"
					aria-labelledby="addsvModalLabel" aria-hidden="true">
					<div class="modal-dialog">
						<div class="modal-content">
<form action="add3" method="post" enctype="multipart/form-data">
								<div class="modal-header">
									<h4 class="modal-title" id="addsvModalLabel">Thêm Giảng Viên</h4>
									<button type="button" class="close" data-dismiss="modal"
										aria-hidden="true">&times;</button>
								</div>
								<div class="modal-body">
									<!-- Tên Sinh Viên -->
									<div class="form-group">
									<label>Tên</label> <input name="name" type="text"											class="form-control" placeholder="Nhập tên" required>
									</div>
									<!-- Tuổi -->
									<div class="form-group">
										<label>Email</label> <input name="Email" type="text"
											class="form-control" required>
									</div>
									<div class="form-group">
										<label>Hình ảnh</label> <input type="file" name="image"
											accept="image/*" class="form-control" >
									</div>
									<!-- Lớp -->
									<div class="form-group">
											<label>Chức vụ</label> <input name="chucvu" type="text"
											class="form-control" required>
									</div>
									<!-- Mã Chuyên Ngành -->
									<div class="form-group">
										<label>Tổ Bộ Môn</label> <select
											name="idbomon" class="form-select"
											aria-label="Default select example">
											<c:forEach items="${list}" var="o">
												<option value="${o.id}">${o.ten_to_bo_mon}</option>
											</c:forEach>
										</select>
									</div>

								</div>
								<div class="modal-footer">
									<button type="button" class="btn btn-secondary"
										data-dismiss="modal">Hủy</button>
									<button type="submit" class="btn btn-success">Thêm Giảng Viên</button>
								</div>
							</form>
						</div>
					</div>
				</div>
				


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
										<label for="tuoi">Tuổi</label> <input name="tuoi" type="text"
											class="form-control" placeholder="Nhập tuổi" required>
									</div>
									<!-- Lớp -->
									<div class="form-group">
										<label for="lop">Lớp</label> <input name="lop" type="text"
											class="form-control" placeholder="Nhập lớp" required>
									</div>
									<!-- Mã Chuyên Ngành -->
									<div class="form-group">
										<label>Chuyên ngành theo học</label> <select
											name="idchuyennganh" class="form-select"
											aria-label="Default select example">
											<c:forEach items="${list3}" var="o">
												<option value="${o.id}">${o.ten_chuyen_nganh}</option>
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



				
				<div class="content-wrapper">
					
					<c:if test="${not empty list4}">
				
						<div class="table-responsive text-nowrap sticky-table">
							<c:forEach items="${listtt}" var="o">
								<h3 class="card-header">Danh sách Sinh Viên chuyên ngành
									${o.ten_chuyen_nganh}</h3>
							</c:forEach>
						<table class="table table-bordered table-striped">
							<thead>
								<tr>
										<th>Tên</th>
										<th>Tuổi</th>
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
											<td>${o.tuoi}</td>
											<td>${o.lop}</td>
										<td><a href="edit?id=${o.id}" class="edit"
												data-toggle="modal"><i class="material-icons"
													data-toggle="tooltip" 
													title="edit">&#xE254;</i></a>
											 <a href="delete?id=${o.id}" class="delete"
												data-toggle="modal"><i class="material-icons"
													data-toggle="tooltip" 
													title="Delete">&#xE872;</i></a>
											</td>
										</tr>
								</c:forEach>

							</tbody>
						</table>
					</div>
					</c:if>
				</div>


            <!-- / Footer -->

            <div class="content-backdrop fade"></div>
          </div>
          <!-- Content wrapper -->
        </div>
        <!-- / Layout page -->
      </div>

      <!-- Overlay -->
      <div class="layout-overlay layout-menu-toggle"></div>
  
    <!-- / Layout wrapper -->


    <!-- Core JS -->
    <!-- build:js assets/vendor/js/core.js -->
    <script src="assets/vendor/libs/jquery/jquery.js"></script>
    <script src="assets/vendor/libs/popper/popper.js"></script>
    <script src="assets/vendor/js/bootstrap.js"></script>
    <script src="assets/vendor/libs/node-waves/node-waves.js"></script>
    <script src="assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.js"></script>
    <script src="assets/vendor/js/menu.js"></script>

    <!-- endbuild -->

    <!-- Vendors JS -->
    <script src="assets/vendor/libs/apex-charts/apexcharts.js"></script>

    <!-- Main JS -->
    <script src="assets/js/main.js"></script>

    <!-- Page JS -->
<!--     <script src="assets/js/dashboards-analytics.js"></script>
 -->
    <!-- Place this tag before closing body tag for github widget button. -->
    <script async defer src="https://buttons.github.io/buttons.js"></script>
  </body>
</html>