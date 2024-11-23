<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>

<!DOCTYPE html>
<html>
<head>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="description" content="Khoa Tin học, Trường Đại học Sư phạm – Đại học Đà Nẵng: Đào tạo Công nghệ thông tin và Sư phạm Tin học chất lượng cao.">
	<meta name="keywords" content="Tin học, Đại học Sư phạm, Công nghệ thông tin, Sư phạm Tin học, Hệ thống thông tin">
	<meta name="author" content="Khoa Tin học">
	
	
    <title>it.ued</title>
	<link rel="stylesheet" type="text/css" href="css/style.css">
	<link rel="stylesheet" type="text/css" href="css/responsive.css">
	<link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
	
  	<link rel="preconnect" href="https://fonts.googleapis.com">
  	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  	<link href="https://fonts.googleapis.com/css2?family=Mulish:wght@600;700;900&family=Quicksand:wght@400;500;600;700&display=swap" rel="stylesheet">
</head>
<body>
    
  <header class="header" data-header>
    <div class="container">

	<a href="#" class="logo">
    	<img src="images/logo.jpeg" alt="Logo">
	</a>

      <nav class="navbar">
        <ul class="navbar-list">

          <li><a href="#" class="navbar-link">Trang chủ</a></li>
          
			<!-- Dropdown Menu với <details> và <summary> -->
			<li class="dropdown">
			    <details class="dropdown-toggle">
			        <summary class="navbar-link dropdown-link">
			            Giới thiệu
			            <i class='bx bx-chevron-down'></i>
			        </summary>
			        <ul class="dropdown-menu">
			            <li><a href="#about" class="dropdown-item">Giới thiệu chung</a></li>
			            <li><a href="#faculty" class="dropdown-item">Cơ cấu tổ chức</a></li>
			        </ul>
			    </details>
			</li>
          
          <li class="dropdown">
			    <details class="dropdown-toggle">
			        <summary class="navbar-link dropdown-link">
			            Chương trình đào tạo
			            <i class='bx bx-chevron-down'></i>
			        </summary>
			        <ul class="dropdown-menu">
			            <li><a href="#" class="dropdown-item">Chuyên ngành</a></li>
			            <li><a href="#" class="dropdown-item">Cấp bậc đào tạo</a></li>
			        </ul>
			    </details>
			</li>
			
          <li><a href="contact.jsp#contact" class="navbar-link">Liên hệ</a></li>
        </ul>
        
        <div class="header-actions">
          <a href="login.jsp" class="header-action-link">Đăng nhập</a>
        </div>
      </nav>

    </div>
  </header>
  
  	<!-- HOME SECTION -->
      <section class="home" id="home">
          		<div class="home-cover">
            		<img src="images/cover.jpg" alt="Cover">
          		</div>
      </section>

    <!-- ABOUT SECTION -->
      <section class="about" id="about">
        <div class="container">
        	<div class="about-content">
            
            	<h2 class="h2 about-title">Giới thiệu</h2> <br>
            	<p class="about-text"><strong>Chào mừng đến với Khoa Tin học, Trường Đại học Sư phạm – Đại học Đà Nẵng!</strong>

				<p class="about-text">
					- Khoa tin học được thành lập từ tháng 2/2004, chuyên đào tạo các ngành Công nghệ thông tin, Sư phạm Tin học, Thạc sĩ Hệ thống thông tin, và giảng dạy tin học đại cương. Với đội ngũ giảng viên giàu kinh nghiệm cùng sự đồng hành của chuyên gia từ các doanh nghiệp, Khoa cam kết lấy người học làm trung tâm, chú trọng chất lượng, uy tín và đổi mới. 
					 Khoa Tin học là nơi lý tưởng để bạn hiện thực hóa đam mê và xây dựng nền tảng vững chắc cho tương lai.</p>
				
				<p class="about-text"><strong>Đội ngũ cán bộ:</strong><br>
					– Lực lượng giảng viên, cán bộ của Khoa gồm 15 người, trong đó có 9 Tiến sĩ, 2 Giảng viên chính, 5 Nghiên cứu sinh, và 1 Cử nhân (cán bộ thư ký và giáo vụ).</p>

				<p class="about-text"><strong>Các ngành nghề đào tạo:</strong><br>
					– Cử nhân Công nghệ thông tin<br>
					– Cử nhân Sư phạm Tin học<br>
					– Thạc sĩ Hệ thống thông tin</p>
    
         		</div>
         		
         		<div class="about-image">
      				<img src="images/Picture1.jpg" alt="About Image">
      				<p class="image-name"><em>Trưởng khoa</p></em>
      				<p class="image-name"><em>Ts. Nguyễn Trần Quốc Vinh</p></em>
    			</div>
         </div>
      </section>
 
 	<!-- FACULTY SECTION -->
	<section class="faculty" id="faculty">
	  <div class="container">
	    <h2 class="h2 faculty-title">Cơ cấu tổ chức</h2>
	
	    <div class="faculty-group">
	      <!-- Ban Chủ Nhiệm Khoa -->
	      <h3 class="faculty-group-title">Ban Chủ Nhiệm Khoa</h3>
	      <div class="faculty-list">
	        <div class="faculty-item">
	          <img src="images/member1.jpg" alt="Member 1">
	          <p class="faculty-name"><strong>TS. NGUYỄN TRẦN QUỐC VINH</p></strong>
	          <p class="faculty-name"><em>Chức vụ: Trưởng khoa</p></em>
	        </div>
	        <div class="faculty-item">
	          <img src="images/member2.jpg" alt="Member 2">
	          <p class="faculty-name"><strong>TS. PHẠM DƯƠNG THU HẰNG</p></strong>
	          <p class="faculty-name"><em>Chức vụ: Phó trưởng khoa</p></em>
	        </div>
	        <div class="faculty-item">
	          <img src="images/member3.jpg" alt="Member 3">
	          <p class="faculty-name"><strong>TS. PHẠM ANH PHƯƠNG</p></strong>
	          <p class="faculty-name"><em>Chức vụ: Phó trưởng khoa</p></em>
	        </div>
	      </div>
	    </div>
	
	    <div class="faculty-group">
	      <!-- Tổ Bộ Môn Hệ Thống Thông Tin -->
	      <h3 class="faculty-group-title">Tổ Bộ Môn Hệ Thống Thông Tin</h3>
	      <div class="faculty-list">
	        <div class="faculty-item">
	          <img src="images/member4.jpg" alt="Member 4">
	          <p class="faculty-name"><strong>TS. NGUYỄN ĐÌNH LẦU</p></strong>
	          <p class="faculty-name"><em>Chức vụ: Trưởng bộ môn</p></em>
	        </div>
	        <div class="faculty-item">
	          <img src="images/member5.png" alt="Member 5">
	          <p class="faculty-name"><strong>TS. NGUYỄN THỊ NGỌC ANH</p></strong>
	          <p class="faculty-name"><em>Chức vụ: Giảng viên</p></em>
	        </div>
	        <div class="faculty-item">
	          <img src="images/member6.jpg" alt="Member 6">
	          <p class="faculty-name"><strong>TS. NGUYỄN HOÀNG HẢI</p></strong>
	          <p class="faculty-name"><em>Chức vụ: Giảng viên</p></em>
	        </div>
	        <div class="faculty-item">
	          <img src="images/member7.jpg" alt="Member 7">
	          <p class="faculty-name"><strong>TS. ĐOÀN DUY BÌNH</p></strong>
	          <p class="faculty-name"><em>Chức vụ: Giảng viên</p></em>
	        </div>
	        <div class="faculty-item">
	          <img src="images/member8.jpg" alt="Member 8">
	          <p class="faculty-name"><strong>TS. VŨ THỊ TRÀ</p></strong>
	          <p class="faculty-name"><em>Chức vụ: Giảng viên</p></em>
	        </div>
	        <div class="faculty-item">
	          <img src="images/member9.png" alt="Member 9">
	          <p class="faculty-name"><strong>Ths. LÊ VĂN MỸ</p></strong>
	          <p class="faculty-name"><em>Chức vụ: Giảng viên</p></em>
	        </div>
	        <div class="faculty-item">
	          <img src="images/member10.png" alt="Member 10">
	          <p class="faculty-name"><strong>Ths. LÊ THỊ THANH BÌNH</p></strong>
	          <p class="faculty-name"><em>Chức vụ: Giảng viên</p></em>
	        </div>
	        <div class="faculty-item">
	          <img src="images/member11.jpg" alt="Member 11">
	          <p class="faculty-name"><strong>Ths. MAI HÀ THI</p></strong>
	          <p class="faculty-name"><em>Chức vụ: Giảng viên</p></em>
	        </div>
	      </div>
	    </div>
	
	    <div class="faculty-group">
	      <!-- Tổ Bộ Môn Phương Pháp Dạy -->
	      <h3 class="faculty-group-title">Tổ Bộ Môn Phương Pháp Dạy</h3>
	      <div class="faculty-list">
	        <div class="faculty-item">
	          <img src="images/member12.jpg" alt="Member 12">
	          <p class="faculty-name"><strong>TS. TRẦN VĂN HƯNG</p></strong>
	          <p class="faculty-name"><em>Chức vụ: Trưởng bộ môn</p></em>
	        </div>
	        <div class="faculty-item">
	          <img src="images/member13.jpg" alt="Member 13">
	          <p class="faculty-name"><strong>Ths. LÊ VIẾT CHUNG</p></strong>
	          <p class="faculty-name"><em>Chức vụ: Giảng viên</p></em>
	        </div>
	        <div class="faculty-item">
	          <img src="images/member14.jpg" alt="Member 14">
	          <p class="faculty-name"><strong>Ths. HỒ NGỌC TÚ</p></strong>
	          <p class="faculty-name"><em>Chức vụ: Giảng viên</p></em>
	        </div>
	      </div>
	    </div>
	
	    <div class="faculty-group">
	      <!-- Thư Ký Khoa -->
	      <h3 class="faculty-group-title">Thư Ký Khoa</h3>
	      <div class="faculty-list">
	        <div class="faculty-item">
	          <img src="images/member15.jpg" alt="Member 15">
	          <p class="faculty-name"><strong>CN. TRẦN THUỲ TRANG</p></strong>
	          <p class="faculty-name"><em>Chức vụ: Thư ký khoa</p></em>
	        </div>
	      </div>
	    </div>
	  </div>
	</section>

 
  	<!-- FOOTER -->
  	<footer>
    	<!-- <div class="footer-top">
      		<div class="container">
        		<div class="footer-brand">
          			<p class="footer-text">Thông tin liên hệ:</p>
          			<ul class="social-list">
            			<li><a href="#" class="social-link"><ion-icon name="logo-facebook"></ion-icon></a></li>
            			<li><a href="#" class="social-link"><ion-icon name="logo-github"></ion-icon></a></li>
            			<li><a href="#" class="social-link"><ion-icon name="logo-linkedin"></ion-icon></a></li>
          			</ul>
        	    </div>
      		</div>
    	</div> -->
    <div class="footer-bottom">
      <div class="container">
        <p class="copyright">
          &copy; 2024 G2 - All Right Reserved
        </p>
      </div>
    </div>
  </footer>
  
</body>
</html>

