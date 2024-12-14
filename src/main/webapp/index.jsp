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
    <title>Khoa tin học | UED</title>
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
    <section class="header">
        <nav>
			<div class="logo" id="top">
				<a href="index.jsp"> <img src="images/logo.png" alt="Logo">
				</a>
			</div>

			<label for="btn" class="icon"> <span class="fas fa-bars"></span>
			</label> <input type="checkbox" name="" id="btn">

			<ul>
				<li><a href="index.jsp">Trang chủ</a></li>
				<li><a href="#about">Giới thiệu</a></li>
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

				<li><a href="#faculty">Đội ngũ giảng viên</a></li>
				<li><a href="#blog">Bài viết</a></li>
				<li><a href="#contact">Liên hệ</a></li>
				<li><a href="login.jsp"><i class="fas fa-sign-in-alt">
					</i> Login</a></li>
			</ul>
		</nav>

        <div class="content">
            <div class="principle">
                <h1 id="headerH1"> KHOA TIN - TRƯỜNG ĐẠI HỌC SƯ PHẠM ĐÀ NẴNG </h1>
                <p id="headerP" style="font-style: italic">Đây là website giới thiệu về khoa tin Trường Đại học Sư Phạm - Đại học Đà Nẵng, cung cấp cho sinh viên các thông tin về đội ngũ giảng viên, chương trình đào tạo, lớp học của khoa.</p>

                <a href="#about" class="heroBtn"> Tìm hiểu ngay </a>
            </div>
        </div>
    </section>

    <!-- Giới thiệu -->
    <section class="aboutUs" id="about">
        <h1 class="headingStyle">Giới thiệu</h1>
        <div class="row">
            <div class="aboutCol">
                <h2>Khoa Tin học - Trường Đại học Sư phạm</h2>

	            <p>Khoa Tin học thuộc Trường Đại học Sư phạm - Đại học Đà Nẵng là một trong những khoa tiên phong trong lĩnh vực đào tạo và nghiên cứu công nghệ thông tin. Với bề dày lịch sử phát triển, khoa đã không ngừng đổi mới, sáng tạo để đáp ứng nhu cầu ngày càng cao của xã hội và nền công nghiệp 4.0.</p>

        	    <p>Khoa Tin học tự hào có đội ngũ giảng viên tâm huyết, trình độ cao, và luôn sẵn sàng hỗ trợ sinh viên phát triển toàn diện. Sinh viên của khoa không chỉ giỏi về lập trình, thiết kế web, và phát triển phần mềm mà còn tích cực tham gia các hoạt động ngoại khóa, nghiên cứu khoa học và đạt nhiều thành tích xuất sắc ở các cuộc thi trong nước và quốc tế.</p>

                <a href="about.jsp"><div class="heroBtn redBtn">Tìm hiểu thêm</div></a>
            </div>

            <div class="aboutCol">
                <img src="images/aboutGRP.jpg" alt="">
            </div>
        </div>
    </section>

    <!-- Bài viết -->
    <section class="blog" id="blog">
        <h1 class="headingStyle">Bài viết</h1>
		<p style="font-style: italic; margin-top: 20px; margin-bottom: 20px; text-align: center;">Tìm hiểu những bài viết mới nhất của khoa</p>        
        <div class="slider owl-carousel">
            <div class="crd">
                <div class="img prog"><img src="images/20nam.jpg" alt=""></div>
                <div class="cont">
                    <div class="ttl">Lễ kỷ niệm 20 năm thành lập Khoa Tin học</div>
                    <p>Một dòng sông không có thác ghềnh, một con kênh không có bậc nước sẽ trở thành dòng sông và con kênh êm đềm, phẳng lặng...</p>
                    <a href="blog.jsp" class="heroBtn"> Đọc thêm </a>
                </div>
            </div>
            <div class="crd">
                <div class="img prog"><img src="images/chaodontansinhvien2024.jpg" alt=""></div>
                <div class="cont">
                    <div class="ttl">Buổi Chào Đón Tân Sinh Viên Khóa 2024 – Khoa Tin Học</div>
                    <p>Tối 29/10 vừa qua, được sự chỉ đạo của khoa Tin học, liên chi đoàn đã tổ chức buổi chào đón các bạn tân sinh viên K24 đã diễn ra thành công...</p>
                    <a href="blog.jsp" class="heroBtn"> Đọc thêm </a>
                </div>
            </div>
            <div class="crd">
                <div class="img prog"><img src="images/banchaphanhlienchi.jpg" alt=""></div>
                <div class="cont">
                    <div class="ttl">Ra Mắt Ban Chấp Hành Liên Chi Đoàn Khoa Tin Học </div>
                    <p>Vừa qua Hội nghị kiện toàn Ban Chấp hành Liên Chi Đoàn Khoa Tin học đã diễn ra trong không khí trang trọng và phấn khởi. Sự kiện lần này...</p>
                    <a href="blog.jsp" class="heroBtn"> Đọc thêm </a>
                </div>
            </div>
            <div class="crd">
                <div class="img prog"><img src="images/thietkelogo.png" alt=""></div>
                <div class="cont">
                    <div class="ttl">Cuộc thi thiết kế logo khoa Tin học</div>
                    <p>Các bạn sinh viên yêu thích sáng tạo đâu rồi?! Bạn có ý tưởng độc đáo? Bạn muốn dấu ấn của mình hiện diện trên logo của Khoa? Đây là cơ hội...</p>
                    <a href="blog.jsp" class="heroBtn"> Đọc thêm </a>
                </div>
            </div>
            <div class="crd">
                <div class="img prog"><img src="images/chunhatxanh.jpeg" alt=""></div>
                <div class="cont">
                    <div class="ttl">Ngày chủ nhật xanh sinh viên Khoa Tin học</div>
                    <p>RA QUÂN NGÀY CAO ĐIỂM: “NGÀY CHỦ NHẬT XANH “ ĐỢT IV NĂM 2024 Ngày 22/09/2024 BCH Liên Chi Tin học cùng các bạn sinh viên đã đồng loạt...</p>
                    <a href="blog.jsp" class="heroBtn"> Đọc thêm </a>
                </div>
            </div>
            <div class="crd">
                <div class="img prog"><img src="images/tuandoanhnghiep.png" alt=""></div>
                <div class="cont">
                    <div class="ttl">Sự kiện tuần doanh nghiệp 2024</div>
                    <p>THÔNG BÁO: SỰ KIỆN TUẦN DOANH NGHIỆP Đây là cơ hội tốt để các em nắm bắt thông tin, tìm cơ hội thực tập, việc làm dành cho sinh viên...</p>
                    <a href="blog.jsp" class="heroBtn"> Đọc thêm </a>
                </div>
            </div>
        </div>
    </section>

    <!-- Đội ngũ giảng viên -->
    <section class="faculty" id="faculty">
    	<h1 class="headingStyle">Đội ngũ giảng viên</h1>
        <p style="font-style: italic; margin-top: 20px; margin-bottom: 20px; text-align: center;">Tìm hiểu thêm về đội ngũ giảng viên của khoa</p>
      
            <div class="facProfile">
                <img src="images/vinh.jpg" alt="">

                <h2> TS. NGUYỄN TRẦN QUỐC VINH </h2>
                <p> Chức vụ: Trưởng Khoa <p>

                <table>
                    <tr>
                        <td><i class="far fa-envelope"></i></td>
                        <td><a href="mailto:ntqvinh@ued.udn.vn">ntqvinh@ued.udn.vn</a></td>
                    </tr>
                </table>
            </div>

            <div class="facProfile">
                <img src="images/hang.jpg" alt="">

                <h2> TS. PHẠM DƯƠNG THU HẰNG </h2>
                <p> Chức vụ: Phó Trưởng Khoa </p>

                <table>
                    <tr>
                        <td><i class="far fa-envelope"></i></td>
                        <td><a href="mailto:pdthang@ued.udn.vn">pdthang@ued.udn.vn</a></td>
                    </tr>
                </table>
            </div>


            <div class="facProfile">
                <img src="images/lau.jpg" alt="">

                <h2> TS. NGUYỄN ĐÌNH LẦU </h2>
                <p> Chức vụ: Trưởng bộ môn </p>

                <table>
                    <tr>
                        <td><i class="far fa-envelope"></i></td>
                        <td><a href="mailto:ndlau@ued.udn.vn">ndlau@ued.udn.vn</a></td>
                    </tr>
                </table>
            </div>
            
            <div class="facProfile">
                <img src="images/anh.jpg" alt="">

                <h2> TS. NGUYỄN THỊ NGỌC ANH </h2>
                <p> Chức vụ: Giảng Viên </p>

                <table>
                    <tr>
                        <td><i class="far fa-envelope"></i></td>
                        <td><a href="mailto:ndlau@ued.udn.vn">ntnanh@ued.udn.vn</a></td>
                    </tr>
                </table>
            </div>
            
            <div class="d-flex justify-content-center mt-4">
                <a href="faculty" class="heroBtn">Xem thêm</a>
            </div> 
       
    </section>


    <!-- Liên hệ -->
    <section class="cta" id="contact">
        <h1> Quý phụ huynh, học sinh nếu có nhu cầu xin vui lòng liên hệ với chúng tôi </h1>
        <p>Thứ Hai - Chủ Nhật | 8:00 - 21:30</p>

        <a href="ContactServlet" class="heroBtn"> Liên hệ </a>
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
    
    <!-- Nút Liên hệ -->
    <div class="echbay-sms-messenger style-for-position-br">
		<div class="phonering-alo-alo">
			<a href="tel:0905121281" rel="nofollow" class="echbay-phonering-alo-event">.</a>
		</div>
		<div class="phonering-alo-messenger">
			<a href="https://www.facebook.com/khoatinhoc" target="_blank" rel="nofollow" class="echbay-phonering-messenger-event">.</a>
		</div>
	</div>
	

	<style>	
	.echbay-sms-messenger {
		width:45px
	}
	.echbay-sms-messenger a {
		line-height:45px;
	        color: transparent;
	display:block;
	}
	.echbay-sms-messenger {
		display:block
	}
	
	.echbay-sms-messenger div.phonering-alo-alo {
	    background-image: url(https://codfe.com/wp-content/uploads/2020/08/call.png);
		background-color:#f44336
	    
	}
	
	.echbay-sms-messenger div.phonering-alo-messenger {
	    background-image: url(https://codfe.com/wp-content/uploads/2020/08/messenger.png);
	    background-color:#f44336
	    
	}
	.echbay-sms-messenger div {
	    margin: 14px 0;
	    background: #0084FF center no-repeat;
	    background-size: 70%;
	    border-radius: 50%;
	    box-shadow: 0 3px 10px #888;
	}
	.echbay-sms-messenger {
	    text-align: center;
	    left:20px;
	    position: fixed;
	    bottom: 20px;
	    z-index: 999;
	}
	</style>
	

    <script>
        $(".slider").owlCarousel({
            margin: 10,
            loop: true,
            autoplay: true,
            autoplayTimeout: 3000, //3000ms = 3s
            autoplayHoverPause: true,
            autoplaySpeed: 1000,
            smartSpeed: 1000,
            responsive: {
                0: {
                    items: 1,
                    nav: false
                },
                600: {
                    items: 2,
                    nav: false
                },
                1000: {
                    items: 3,
                    nav: true
                }
            }
        });
    </script>

    <!-- Links Javascript -->
    <script src="js/index.js"></script>
    
</body>

</html>

