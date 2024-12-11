<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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

    <!-- Header Section Started -->
    <section class="sub-header blogPage">
        <!-- Navigation Section Started -->
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

        
        <h1> BÀI VIẾT </h1>
    </section>

    
    <div class="blog-container">
        <section class="blog-posts">
            <article class="post" data-category="TinTuc">
                <img src="images/thietkelogo.png" alt="">
                <div class="post-meta">
                    <span class="author">Khao tin học / 03-11-2024</span>
                    <span class="category">Tin Tức</span>
                </div>
                <h2>Cuộc thi thiết kế logo khoa Tin học nhân dịp kỷ niệm 20 năm ngày thành lập Khoa</h2>
                <p>Các bạn sinh viên yêu thích sáng tạo đâu rồi?! Bạn có ý tưởng độc đáo? Bạn muốn dấu ấn của mình hiện diện trên logo của Khoa Tin học? Đây là cơ hội dành cho bạn! Khoa Tin học...</p>
                <a href="post4.jsp" class="read-more">Đọc thêm</a>
            </article>
            
            <article class="post" data-category="TinTuc">
                <img src="images/chunhatxanh.jpeg" alt="">
                <div class="post-meta">
                    <span class="author">Khao tin học / 03-11-2024</span>
                    <span class="category">Tin Tức</span>
                </div>
                <h2>Ngày chủ nhật xanh sinh viên Khoa Tin học</h2>
                <p>RA QUÂN NGÀY CAO ĐIỂM: “NGÀY CHỦ NHẬT XANH “ ĐỢT IV NĂM 2024 Ngày 22/09/2024 BCH Liên Chi Tin học cùng các bạn sinh viên đã đồng loạt ra quân “Ngày chủ nhật xanh” để dọn sạch bãi biển...</p>
                <a href="post5.jsp" class="read-more">Đọc thêm</a>
            </article>
            
            <article class="post" data-category="SuKien">
                <img src="images/tuandoanhnghiep.png" alt="">
                <div class="post-meta">
                    <span class="author">Khao tin học / 21-10-2024</span>
                    <span class="category">Sự kiện</span>
                </div>
                <h2>Sự kiện tuần doanh nghiệp 2024</h2>
                <p>THÔNG BÁO: SỰ KIỆN TUẦN DOANH NGHIỆP Đây là cơ hội tốt để các em nắm bắt thông tin, tìm cơ hội thực tập, việc làm...</p>
                <a href="post6.jsp" class="read-more">Đọc thêm</a>
            </article>
        </section>
    
        <aside class="blog-sidebar">
            <h3>Danh mục</h3>
            <ul>
                <li><a href="blog.jsp" onclick="filterPosts('All')">Tất cả</a></li>  
                <li><a href="#" onclick="filterPosts('SuKien')">Sự kiện</a></li>
                <li><a href="#" onclick="filterPosts('TinTuc')">Tin tức</a></li>
            </ul>
        </aside>
    </div>
    
    <!-- Pagination -->
    <section class="pagination">
        <a href="blog.jsp" class="prev"><i class="fas fa-chevron-left"></i></a>
        <a href="blog.jsp" class="page">1</a>
        <a href="blog2.jsp" class="page active">2</a>
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
    <!-- Footer -->
 <script src="js/blog.js"></script>

</body>
</html>