<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="com.dao.*"%>
<%@ page import="com.entity.*"%>
<!DOCTYPE html>
<html lang="vi">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Bài viết - Khoa tin học Trường Đại học Sư </title>
    <link rel="shortcut icon" type="image" href="images/logo.png">

    <!-- Links of CSS files -->
    <link rel="stylesheet" href="style.css">
    <!-- <link rel="stylesheet" href="assets/css/bootstrap.css"> -->
    
    <link rel="stylesheet" href="css/mobile.css" media="screen and (max-width: 968px)">

    <!-- Font Awesome CDN -->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.3/css/all.css" integrity="sha384-SZXxX4whJ79/gErwcOYf+zWLeJdY/qpuqC4cAa9rOGUstPomtqpuNWT9wdPEn2fk" crossorigin="anonymous">


    <!-- Google font link -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Oswald:wght@200;300;400;500;600;700&family=Poppins:wght@100;200;300;400;600;700&display=swap" rel="stylesheet">


    <!-- JQuery CDN -->
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>

    <!-- OwlCarousel2 CDN -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css">

</head>

<body>

    <!-- NavBar -->        
    <section class="sub-header blogPage">
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
						</label> <a href="#"> Chuyên ngành <i class="fas fa-caret-right"></i></a>
							<input type="checkbox" id="btn-2">
							<ul>
								<%-- Lấy danh sách chuyên ngành với id = 1 --%>
						<%
						    DAO dao = new DAO(); // Tạo đối tượng DAO
						    List<chuyennganh> majors = dao.getChuyenNganhById1(); // Lấy danh sách chuyên ngành từ DAO
						    if (majors != null && !majors.isEmpty()) { // Kiểm tra danh sách không rỗng
						        for (chuyennganh major : majors) { // Lặp qua danh sách chuyên ngành
						%>
						            <li><a href="cntt.jsp"><%= major.getTen_chuyen_nganh() %></a></li>
						<%
						        }
						    } else {
						%>
						        <li>Không có chuyên ngành nào</li>
						<%
						    }
						%>
						
						<%-- Lấy danh sách chuyên ngành với id = 2 --%>
						<%
						    List<chuyennganh> majors1 = dao.getChuyenNganhById2(); // Lấy danh sách chuyên ngành từ DAO
						    if (majors1 != null && !majors1.isEmpty()) { // Kiểm tra danh sách không rỗng
						        for (chuyennganh major : majors1) { // Lặp qua danh sách chuyên ngành
						%>
						            <li><a href="spt.jsp"><%= major.getTen_chuyen_nganh() %></a></li>
						<%
						        }
						    } else {
						%>
						        <li>Không có chuyên ngành nào</li>
						<%
						    }
						%>
						
						<%-- Lấy danh sách chuyên ngành với id = 3 --%>
						<%
						    List<chuyennganh> majors2 = dao.getChuyenNganhById3(); // Lấy danh sách chuyên ngành từ DAO
						    if (majors2 != null && !majors2.isEmpty()) { // Kiểm tra danh sách không rỗng
						        for (chuyennganh major : majors2) { // Lặp qua danh sách chuyên ngành
						%>
						            <li><a href="cntt.jsp"><%= major.getTen_chuyen_nganh() %></a></li>
						<%
						        }
						    } 
						%>


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

				<li><a href="faculty">Đội ngũ giảng viên</a></li>
				<li><a href="blog.jsp">Bài viết</a></li>
				<li><a href="ContactServlet">Liên hệ</a></li>
				<li><a href="login.jsp"><i class="fas fa-sign-in-alt">
					</i> Login</a></li>
			</ul>
		</nav>

        
        <h1> BÀI VIẾT </h1>
    </section>

    <!-- Post#4 -->            
    <div class="blog-container">
        <section class="blog-posts">
            <article class="post" data-category="TinTuc">
                <img src="images/thietkelogo.png" alt="" style="filter: brightness(50%); filter: blur; border-radius: 0">
				<div class="post-meta">
                    <span class="author">Khao tin học / 22-11-2024</span>
                    <span class="category">Tin Tức</span>
                </div>
                <h2 style="margin-bottom: 30px;">Cuộc thi thiết kế logo khoa Tin học nhân dịp kỷ niệm 20 năm ngày thành lập Khoa</h2>
                <p style="line-height: 1.6; margin-bottom: 30px;">	
				🔥 Các bạn sinh viên yêu thích sáng tạo đâu rồi?! 🔥
				</p>

				<p style="line-height: 1.6; margin-bottom: 30px;">
				💡 Bạn có ý tưởng độc đáo? 💡 Bạn muốn dấu ấn của mình hiện diện trên logo của Khoa Tin học? Đây là cơ hội dành cho bạn!
				</p>
				<p style="line-height: 1.6; margin-bottom: 30px;">
				Khoa Tin học chính thức phát động CUỘC THI THIẾT KẾ LOGO từ ngày 15/10 đến 15/11/2024. Hãy cùng nhau tạo ra một biểu tượng mới đầy ý nghĩa, đại diện cho tinh thần trẻ trung, năng động của Khoa chúng ta!
				</p>
				<p style="line-height: 1.6; margin-bottom: 30px;">
				🎁 GIẢI THƯỞNG HẤP DẪN: 🏆 01 Giải Nhất: [2 triệu] 🥇 01 Giải Nhì: [1 triệu] 🥉 01 Giải Ba: [500k] 🏆 03 Giải cộng đồng dành cho logo có lượt chia sẻ/thả tim/like nhiều nhất: [500k / 300k / 200k] và giấy chứng nhận giải thưởng của ban tổ chức.
				</p>	
				<p style="line-height: 1.6; margin-bottom: 30px;">
				👉 Cách thức tham gia: <br>
				1. Thiết kế logo theo ý tưởng của bạn. <br>
				2. Gửi thiết kế logo và thuyết trình ngắn về logo trước ngày 8/11/2024 theo link sau <br>
				https://forms.gle/i8wH1jHehfkGcftJ9 , những thiết kế logo gửi sớm sẽ được ưu tiên xuất hiện sớm trên trang bình chọn và sẽ có cơ hội nhận được nhiều tương tác từ cổ động viên. <br>
				Thông tin chi tiết về cuộc thi mời xem thêm tại đường link: https://docs.google.com/document/d/1li-IlqO1jKlSPshU0f_44wt1SbbKCrRW <br>
				3. Bài dự thi sẽ được đánh giá bởi hội đồng giám khảo và bình chọn từ cộng đồng.<br>
				</p>
				<p style="line-height: 1.6; margin-bottom: 30px;">
				💥 Còn chần chừ gì nữa?! Hãy để tài năng của bạn tỏa sáng và nhận những phần thưởng hấp dẫn từ Khoa Tin học!                </p>
				</p>
            </article>
            
        </section>
    
        <aside class="blog-sidebar">
            <h3>Danh mục</h3>
            <ul>
                <li><a href="blog.jsp" onclick="filterPosts('All')">Tất cả</a></li>  
                <li><a href="blog.jsp" onclick="filterPosts('SuKien')">Sự kiện</a></li>
                <li><a href="blog.jsp" onclick="filterPosts('TinTuc')">Tin tức</a></li>
            </ul>
        </aside>
    </div>
    
    <!-- Pagination -->
    <section class="pagination">
        <a href="post3.jsp" class="prev"><i class="fas fa-chevron-left"></i></a>
        <a href="post1.jsp" class="page">1</a>
        <a href="post2.jsp" class="page">2</a>
        <a href="post3.jsp" class="page">3</a>
        <a href="post4.jsp" class="page active">4</a>
        <a href="post5.jsp" class="page">5</a>
        <a href="post6.jsp" class="page">6</a>
        <a href="post5.jsp" class="next"><i class="fas fa-chevron-right"></i></a>
    </section>

	<!-- Footer -->
    <section class="footer">

        <div class="fcol col-3 ftrTopEle">
            <h4> Lời nhắn </h4>
            <div class="contactCol">

                <form action="https://docs.google.com/forms/u/0/d/e/1FAIpQLScMlX0B_uFTrGkYDPPhw_hL1YmaveLVuTKmwvf587E1J7V_xg/formResponse" method="post" target="hidden_iframe" onsubmit="submitted=true" class="myform" id="myform">

                    <input type="text" name="entry.805276147" placeholder="Tên" required>
                    <input type="email" name="emailAddress" placeholder="Email" required>
                    <textarea rows="3" name="entry.1586819207" placeholder="Lời nhắn" required></textarea>
                    <button type="submit" class="heroBtn"> Gửi <i class="fas fa-paper-plane"></i> </button>
                </form>
            </div>
        </div>
        <div class="fcol col-3 ftrTopEle">
            <h4>Liên hệ</h4>
            <ol>
                <li><a href="https://ued.udn.vn/" target="blank"> Trang chủ - UED <i class="fas fa-external-link-alt"></i></a></li>
                <li><a href="https://it.ued.udn.vn/" target="blank"> Trang chủ khoa tin - UED <i class="fas fa-external-link-alt"></i></a></li>
                <li><a href="https://www.facebook.com/ueddn" target="blank"> Facebook - UED <i class="fas fa-external-link-alt"></i></a></li>
                <li><a href="https://www.facebook.com/khoatinhoc" target="blank">Facebook khoa tin - UED <i class="fas fa-external-link-alt"></i></a></li>
            </ol>
        </div>
        <div class="fcol col-3 ftrTopEle">
            <h4>Giới thiệu</h4>
            <p>Đây là website giới thiệu về khoa tin Trường Đại học Sư Phạm - Đại học Đà Nẵng, cung cấp cho sinh viên các thông tin về đội ngũ giảng viên, chương trình đào tạo, lớp học của khoa.</p>
        </div>
        <div class="fcol col-6">
            <hr>
            <p> &copy; 2024 - Khoa tin Trường Đại học Sư phạm</p>
        </div>
    </section>

    <!-- Links Javascript -->        
 	<script src="js/blog.js"></script>

</body>
</html>