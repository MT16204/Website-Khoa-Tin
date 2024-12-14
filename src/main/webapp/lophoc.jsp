<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Danh Sách Sinh Viên - Khoa tin học Trường Đại học Sư phạm</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Công nghệ thông tin - Khoa tin học Trường Đại học Sư phạm</title>
<link rel="shortcut icon" type="image" href="images/logo.png">

<!-- Links of CSS files -->
<link rel="stylesheet" href="style.css">
<link rel="stylesheet" href="css/mobile.css"
	media="screen and (max-width: 968px)">

<!-- Font Awesome CDN -->
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.15.3/css/all.css"
	integrity="sha384-SZXxX4whJ79/gErwcOYf+zWLeJdY/qpuqC4cAa9rOGUstPomtqpuNWT9wdPEn2fk"
	crossorigin="anonymous">

<!-- Google font link -->
<link rel="preconnect" href="https://fonts.gstatic.com">
<link
	href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;600;700&display=swap"
	rel="stylesheet">

<style>
table {
	width: 80%; /* Điều chỉnh chiều rộng bảng */
	padding: 40px;
	margin: 30px auto; /* Khoảng cách trên và dưới bảng */
	border-collapse: collapse;
	box-shadow: 0 2px 12px rgba(0, 0, 0, 0.1);
}

table td {
	word-wrap: break-word; /* Tránh text dài bị tràn */
	white-space: nowrap;
	/* Giữ cho nội dung trong các cột không bị xuống dòng */
}

th {
	background-color: #f44336;
	color: white;
	padding: 12px;
	text-align: center;
	font-weight: bold;
}

td {
	padding: 12px;
	text-align: center;
	border: 1px solid #ddd;
}

table tr:nth-child(even) {
	background-color: #f9f9f9;
}

tr:nth-child(odd) {
	background-color: #ffffff;
}

table tr:hover {
	background-color: #f1f1f1;
}
</style>

</head>
<body>

    <!-- NavBar -->        
	<section class="sub-header libr">
		<nav>
			<div class="logo" id="top">
				<a href="index.jsp"> <img src="images/logo.png" alt="Logo">
				</a>
			</div>

			<label for="btn" class="icon"> <span class="fas fa-bars"></span>
			</label> <input type="checkbox" name="" id="btn">

			<ul>
				<li><a href="index.jsp">Trang chủ</a></li>
				<li><a href="about.jsp">Giới thiệu</a></li>
				<li><label for="btn-1" class="show">Chương trình đào
						tạo <i class="fas fa-caret-down"></i>
				</label> <a href="#">Chương trình đào tạo <i class="fas fa-caret-down"></i></a>
					<input type="checkbox" id="btn-1">
					<ul>
						<li><label for="btn-2" class="show">Công nghệ thông
								tin <i class="fas fa-caret-down"></i>
						</label> <a href="#"> Chuyên ngành <i class="fas fa-caret-right"></i>
						</a> <input type="checkbox" id="btn-2">
							<ul>
								<li><a href="cntt.jsp"> Cử nhân Công nghệ thông tin </a></li>
								<li><a href="spt.jsp"> Cử nhân Sư phạm Tin học </a></li>
							</ul></li>
						<li><label for="btn-3" class="show">Đào tạo</label> <a
							href="#"> Đào tạo <i class="fas fa-caret-right"></i>
						</a> <input type="checkbox" id="btn-3">

							<ul>
								<li><a href="bacdaihoc.jsp"> Đào tạo bậc đại học </a></li>
								<li><a href="bacthacsi.jsp"> Đào tạo bậc thạc sĩ </a></li>
								<li><a href="bactiensi.jsp"> Đào tạo bậc tiến sĩ </a></li>
							</ul></li>

					</ul></li>

				<li><a href="faculty.jsp">Đội ngũ giảng viên</a></li>
				<li><a href="blog.jsp">Bài viết</a></li>
				<li><a href="ContactServlet">Liên hệ</a></li>
				<li><a href="login.jsp"><i class="fas fa-sign-in-alt">
					</i> Login</a></li>
			</ul>
		</nav>

		<h1>DANH SÁCH SINH VIÊN CÁC LỚP</h1>
	</section>

	<table>
		<thead>
			<tr>
				<th>Mã Sinh Viên</th>
				<th>Họ Tên</th>
				<th>Ngày Sinh</th>
				<th>Email</th>
				<th>Mã Lớp</th>

			</tr>
		</thead>
		<tbody>
			<c:forEach items="${list5}" var="o">

				<tr>
					<td>${o.id}</td>
					<td>${o.ten}</td>
					<td><fmt:parseDate value="${o.tuoi}" pattern="yyyy-MM-dd"
							var="parsedDate" /> <fmt:formatDate value="${parsedDate}"
							pattern="dd-MM-yyyy" />
					<td>${o.email}</td>
					<td>${o.tenLop}</td>

				</tr>
			</c:forEach>



		</tbody>
	</table>


	<!-- Footer -->
	<section class="footer">

		<div class="fcol col-3 ftrTopEle">
			<h4>Lời nhắn</h4>
			<div class="contactCol">

				<form
					action="https://docs.google.com/forms/u/0/d/e/1FAIpQLScMlX0B_uFTrGkYDPPhw_hL1YmaveLVuTKmwvf587E1J7V_xg/formResponse"
					method="post" target="hidden_iframe" onsubmit="submitted=true"
					class="myform" id="myform">

					<input type="text" name="entry.805276147" placeholder="Tên"
						required> <input type="email" name="emailAddress"
						placeholder="Email" required>
					<textarea rows="3" name="entry.1586819207" placeholder="Lời nhắn"
						required></textarea>
					<button type="submit" class="heroBtn">
						Gửi <i class="fas fa-paper-plane"></i>
					</button>
				</form>
			</div>
		</div>
		<div class="fcol col-3 ftrTopEle">
			<h4>Liên hệ</h4>
			<ol>
				<li><a href="https://ued.udn.vn/" target="blank"> Trang chủ
						- UED <i class="fas fa-external-link-alt"></i>
				</a></li>
				<li><a href="https://it.ued.udn.vn/" target="blank"> Trang
						chủ khoa tin - UED <i class="fas fa-external-link-alt"></i>
				</a></li>
				<li><a href="https://www.facebook.com/ueddn" target="blank">
						Facebook - UED <i class="fas fa-external-link-alt"></i>
				</a></li>
				<li><a href="https://www.facebook.com/khoatinhoc"
					target="blank">Facebook khoa tin - UED <i
						class="fas fa-external-link-alt"></i></a></li>
			</ol>
		</div>
		<div class="fcol col-3 ftrTopEle">
			<h4>Giới thiệu</h4>
			<p>Đây là website giới thiệu về khoa tin Trường Đại học Sư Phạm -
				Đại học Đà Nẵng, cung cấp cho sinh viên các thông tin về đội ngũ
				giảng viên, chương trình đào tạo, lớp học của khoa.</p>
		</div>
		<div class="fcol col-6">
			<hr>
			<p>&copy; 2024 - Khoa tin Trường Đại học Sư phạm</p>
		</div>
	</section>

    <!-- Links Javascript -->        
	<script src="js/index.js"></script>

</body>

</html>
