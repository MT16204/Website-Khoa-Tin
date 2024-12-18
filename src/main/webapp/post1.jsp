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

    <!-- Post#1 -->            
    <div class="blog-container">
        <section class="blog-posts">
            <article class="post" data-category="SuKien">
                <img src="images/20nam.jpg" alt="" style="filter: brightness(50%); filter: blur; border-radius: 0">
				<div class="post-meta">
                    <span class="author">Khao tin học / 22-11-2024</span>
                    <span class="category">Sự kiện</span>
                </div>
                <h2 style="margin-bottom: 30px;">Lễ kỷ niệm 20 năm thành lập Khoa Tin học</h2>
                <p style="line-height: 1.6; margin-bottom: 30px;">	
                Một dòng sông không có thác ghềnh, một con kênh không có bậc nước sẽ trở thành dòng sông và con kênh êm đềm, phẳng lặng. Nhưng dòng thời gian mà thiếu đi những mốc son, dấu ấn, điểm nhấn thì sẽ trở nên vô vị. 20 năm, một khoảng thời gian tuy chưa dài để viết nên lịch sử, nhưng đã có ý nghĩa thật lớn lao để đánh dấu một sự trưởng thành của khoa Tin học – trường Đại học Sư phạm – Đại học Đà Nẵng; và đồng thời là một điểm nhấn đậm nét về tình đồng nghiệp, tình thầy trò của những con người đã và đang gắn bó với khoa Tin học 20 năm qua. 
                </p>

				<p style="line-height: 1.6; margin-bottom: 30px;">
				Ra đời vào tháng 2 năm 2004, dựa trên cơ sở tách khoa Toán Tin thành 2 khoa Toán học và Tin học, từ đó khoa Tin học đã chính thức được thành lập. Trải qua 20 năm xây dựng và phát triển. Năm 2024 là sinh nhật lần thứ 20 của khoa Tin học của chúng ta. 20 năm đó với biết bao đổi thay, để rồi từ đó khoa Tin học đã đào tạo nhiều thế hệ thầy cô giáo dạy môn Tin học cho các trường phổ thông của cả nước và nhiều cử nhân CNTT đầy tài năng tỏa đi khắp nơi, đóng góp nhiều trong các lĩnh vực liên quan đến ngành Công nghệ thông tin. Vượt qua bao khó khăn, thách thức, nay khoa Tin học đã trở thành một khoa có uy tín trong hầu hết các lĩnh vực của Công nghệ thông tin, là một khoa lớn mạnh về số lượng và chất lượng từ đội ngũ giảng viên và số lượng sinh viên được đào tạo tại trường.
				</p>
				
				<p style="line-height: 1.6; margin-bottom: 30px;">
				Để nhìn lại chặng đường xây dựng và phát triển vẻ vang của khoa Tin học trong suốt 20 năm qua, đồng thời ghi nhận và tỏ lòng tri ân sâu sắc đối với các thầy cô, những người đã và đang công tác trong khoa Tin học – Trường Đại học Sư phạm – Đại học Đà Nẵng, vun đúc thêm sự hỗ trợ của các cấp, liên kết chặt chẽ với các doanh nghiệp, các trường phổ thông trong cả nước, các đơn vị bạn trong nước và quốc tế. Vào lúc 8h30 sáng Chủ Nhật 24/11 khoa Tin học sẽ tổ chức Chương trình kỉ niệm 20 năm thành lập Khoa. Thân mời các thế hệ sinh viên của Khoa sắp xếp thời gian về tham dự.
				</p>

				<p style="line-height: 1.6; margin-bottom: 30px;">
				Rất hân hạnh được đón tiếp!
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
        <a href="post1.jsp" class="page active">1</a>
        <a href="post2.jsp" class="page">2</a>
        <a href="post3.jsp" class="page">3</a>
        <a href="post4.jsp" class="page">4</a>
        <a href="post5.jsp" class="page">5</a>
        <a href="post6.jsp" class="page">6</a>
        <a href="post2.jsp" class="next"><i class="fas fa-chevron-right"></i></a>
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