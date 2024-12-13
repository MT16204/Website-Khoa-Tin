<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Giới thiệu - Khoa tin học Trường Đại học Sư Phạm</title>
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
    <section class="sub-header">
        <nav>
            <div class="logo" id="top">
                <a href="index.jsp"> <img src="images/logo.png" alt="Logo"> </a>
            </div>

            <label for="btn" class="icon">
                <span class="fas fa-bars"></span>
            </label>
            <input type="checkbox" name="" id="btn">

            <ul>
                <li> <a href="index.jsp">Trang chủ</a></li>
                <li> <a href="about.jsp">Giới thiệu</a></li>
                <li>
                    <label for="btn-1" class="show">Chương trình đào tạo <i class="fas fa-caret-down"></i></label>

                    <a href="#">Chương trình đào tạo  <i class="fas fa-caret-down"></i></a>
                    <input type="checkbox" id="btn-1">
                    <ul>
                        <li>
                            <label for="btn-2" class="show">Công nghệ thông tin <i class="fas fa-caret-down"></i></label>
                            <a href="#"> Chuyên ngành <i class="fas fa-caret-right"></i> </a>
                            <input type="checkbox" id="btn-2">
                            <ul>
                                <li><a href="cntt.jsp"> Cử nhân Công nghệ thông tin </a></li>
                                <li><a href="spt.jsp"> Sư phạm Tin học </a></li>
                            </ul>
                        </li>
                        <li>
                            <label for="btn-3" class="show">Đào tạo</label>
                            <a href="#"> Đào tạo <i class="fas fa-caret-right"></i> </a>
                            <input type="checkbox" id="btn-3">

                            <ul>
                                <li><a href="bacdaihoc.jsp"> Đào tạo bậc đại học </a></li>
                                <li><a href="bacthacsi.jsp"> Đào tạo bậc thạc sĩ </a></li>
                                <li><a href="bactiensi.jsp"> Đào tạo bậc tiến sĩ </a></li>
                            </ul>
                        </li>

                    </ul>
                </li>

                <li> <a href="faculty">Đội ngũ giảng viên</a></li>
                <li> <a href="blog.jsp">Bài viết</a></li>
                <li> <a href="contact.jsp">Liên hệ</a></li>
                <li> <a href="login.jsp"><i class="fas fa-sign-in-alt"> </i> Login</a></li>
            </ul>
        </nav>
        
        <h1>GIỚI THIỆU</h1>  
    </section>

    <!-- Giới thiệu -->
	<section class="sub-aboutUs" id="about">
	    <div class="row">
	        <div class="sub-aboutCol">
	            <h2>Giới thiệu Khoa Tin học</h2>
	            <p>
	                Khoa Tin học, thuộc Trường Đại học Sư phạm - Đại học Đà Nẵng, được thành lập vào tháng 2 năm 2004. 
	                Khoa chuyên đào tạo và nghiên cứu trong lĩnh vực Công nghệ thông tin và Hệ thống thông tin, với cam kết đặt người học làm trung tâm và không ngừng nâng cao chất lượng giáo dục.
	            </p>
	        </div>
	        <div class="sub-aboutCol">
	            <img src="images/about1.jpg" alt="Khoa Tin học" class="aboutImage">
	        </div>
	    </div>
	    
	    <div class="row">
	        <div class="sub-aboutCol">
	            <img src="images/about2.jpg" alt="Đội ngũ giảng viên" class="aboutImage">
	        </div>
	        <div class="sub-aboutCol">
	            <h2>Chức năng và Nhiệm vụ</h2>
	            <p>
	                Khoa Tin học đảm nhận vai trò đào tạo các chuyên ngành như Công nghệ thông tin, Sư phạm Tin học, và Hệ thống thông tin. 
	                Ngoài ra, Khoa còn thực hiện nghiên cứu khoa học trong nhiều lĩnh vực như Giáo dục điện tử, Thuật toán tối ưu, và Tin sinh học, 
	                góp phần phát triển nền khoa học công nghệ tại Việt Nam.
	            </p>
	        </div>
	    </div>
	
	    <div class="row">
	        <div class="sub-aboutCol">
	            <h2>Đội ngũ Giảng viên và Hợp tác</h2>
	            <p>
	                Đội ngũ giảng viên gồm 15 người, trong đó có 9 Tiến sĩ và 5 Nghiên cứu sinh. 
	                Ngoài ra Khoa còn hợp tác với nhiều doanh nghiệp lớn như FPT, Gameloft, và Axon Active, mang đến môi trường học tập và thực hành chất lượng cho sinh viên.
	            </p>
	        </div>
	        <div class="sub-aboutCol">
	            <img src="images/about3.jpg" alt="Hợp tác doanh nghiệp" class="aboutImage">
	        </div>
	    </div>
	   
	    <div class="buttonContainer">
	        <a href="faculty" class="sub-heroBtn redBtn">Cơ cấu tổ chức</a>
	    </div>
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
    <script src="js/index.js"></script>

</body>

</html>