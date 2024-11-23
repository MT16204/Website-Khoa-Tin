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

          <li><a href="index.jsp#" class="navbar-link">Trang chủ</a></li>
          
			<!-- Dropdown Menu với <details> và <summary> -->
			<li class="dropdown">
			    <details class="dropdown-toggle">
			        <summary class="navbar-link dropdown-link">
			            Giới thiệu
			            <i class='bx bx-chevron-down'></i>
			        </summary>
			        <ul class="dropdown-menu">
			            <li><a href="#about" class="dropdown-item">Giới thiệu chung</a></li>
			            <li><a href="#" class="dropdown-item">Cơ cấu tổ chức</a></li>
			        </ul>
			    </details>
			</li>
          
          <!-- <li><a href="#programs" class="navbar-link">Chương trình đào tạo</a></li> -->
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
        <div class="container">
          	<div class="home-content">
            	<h1 class="home-title">WEBSITE KHOA TIN</h1> <br>
				<h1 class="home-text"> Trường đại học sư phạm - Đại học Đà nẵng</h1>
          		<div class="home-cover">
            		<img src="images/cover.jpg" alt="Cover">
          		</div>
        	</div>
        </div>
      </section>

	<!-- CONTACT SECTION -->
      <section class="contact" id="contact">
        <div class="container">
          <h2 class="contact section-title">Liên hệ</h2>
          <div class="contact-wrapper">
            <form action="" class="contact-form">
              <div class="wrapper-flex">
                <div class="input-wrapper">
                  <label for="name">Tên:</label>
                  <input type="text" name="name" id="name" required placeholder="Enter Your Name" class="input-field"> 
                </div>
                <div class="input-wrapper">
                  <label for="email">Email:</label>
                  <input type="email" name="email" id="email" required placeholder="Enter Your Email" class="input-field">
                </div>
              </div>
              <label for="message">Tin nhắn:</label>
              <textarea name="message" id="message" required placeholder="Type Your Message" class="input-field"></textarea>
              <button type="submit" class="send">Gửi</button> 
            </form>

            <ul class="contact-list">
              <li>
                <a href="https://tuyensinh.ued.udn.vn/" target="blank" class="contact-link">Liên hệ qua mail: <span>tuyensinh@ued.udn.vn</span>
                </a>
              </li>
              <li>
                <a href="http://it.ued.udn.vn" target="blank" class="contact-link">Truy cập vào website: <span>http://it.ued.udn.vn</span>
                </a>
              </li>
              <li>
                <a href="#" class="contact-link">Số điện thoại: <span>0236 3841323</span>
                </a>
              </li>
              <li>
                <a href="https://www.google.com/search?q=Tr%C6%B0%E1%BB%9Dng+%C4%91%E1%BA%A1i+h%E1%BB%8Dc+s%C6%B0+ph%E1%BA%A1m+459+T%C3%B4n+%C4%90%E1%BB%A9c+Th%C3%A1ng%2C+%C4%90%C3%A0+N%E1%BA%B5ng&sca_esv=98e98a53a3894882&sxsrf=ADLYWIJvDIVqnzBu3MMVZNNFE1OjRysMCg%3A1731860177252&ei=0RY6Z4yID77m2roPqv_L8Qg&ved=0ahUKEwjMtKn14eOJAxU-s1YBHar_Mo4Q4dUDCA8&uact=5&oq=Tr%C6%B0%E1%BB%9Dng+%C4%91%E1%BA%A1i+h%E1%BB%8Dc+s%C6%B0+ph%E1%BA%A1m+459+T%C3%B4n+%C4%90%E1%BB%A9c+Th%C3%A1ng%2C+%C4%90%C3%A0+N%E1%BA%B5ng&gs_lp=Egxnd3Mtd2l6LXNlcnAiRVRyxrDhu51uZyDEkeG6oWkgaOG7jWMgc8awIHBo4bqhbSA0NTkgVMO0biDEkOG7qWMgVGjDoW5nLCDEkMOgIE7hurVuZzICECYyCBAAGIAEGKIEMggQABiABBiiBDIIEAAYgAQYogRIm4oBUPNzWJCGAXACeAGQAQCYAY4BoAGgB6oBAzAuOLgBA8gBAPgBAZgCCqACxgfCAgoQABiwAxjWBBhHwgIIECEYoAEYwwSYAwCIBgGQBgiSBwMyLjigB4Qb&sclient=gws-wiz-serp" target="_blank" class="contact-link">Địa chỉ:<span>459 Tôn Đức Thắng, Đà Nẵng.</span>
                </a>
              </li>
            </ul>
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

