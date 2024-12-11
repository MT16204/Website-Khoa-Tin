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
            <article class="post" data-category="SuKien">
                <img src="images/chaodontansinhvien2024.jpg" alt="" style="filter: brightness(50%); filter: blur; border-radius: 0">
				<div class="post-meta">
                    <span class="author">Khao tin học / 03-11-2024</span>
                    <span class="category">Sự kiện</span>
                </div>
                <h2 style="margin-bottom: 30px;">Buổi Chào Đón Tân Sinh Viên Khóa 2024 – Khoa Tin Học</h2>
                <p style="line-height: 1.6; margin-bottom: 30px;">	
				Tối 29/10 vừa qua, được sự chỉ đạo của khoa Tin học, liên chi đoàn đã tổ chức buổi chào đón các bạn tân sinh viên K24 đã diễn ra thành công và đầy cảm xúc. 💖
				</p>
				<p style="line-height: 1.6; margin-bottom: 30px;">
				Chương trình có sự tham dự của tất cả các thầy cô trong khoa Tin học, nguyên bí thư các nhiệm kỳ, các anh chị cựu sinh viên và các bạn sinh viên yêu mến của ngôi nhà chung khoa Tin học.
				</p>
				<p style="line-height: 1.6; margin-bottom: 30px;">
				Phát biểu tại buổi lễ, TS. Nguyễn Trần Quốc Vinh – Trưởng Khoa Khoa Tin học đã gửi lời chúc mừng đến các bạn tân sinh viên K24, khuyến khích và động viên các bạn không ngừng cố gắng để vươn đến nhiều kết quả đáng tự hào hơn trong tương lai.
				</p>
				<p style="line-height: 1.6; margin-bottom: 30px;">
				🔰 Tại sự kiện này, các bạn tân sinh viên đã được: <br>
				• Lắng nghe những chia sẻ quý báu từ các thầy cô trong khoa về hành trình học tập, hoạt động ngoại khóa và cơ hội. <br>
				
				• Lắng nghe những chia sẻ đến từ CLB Tin học, truyền cảm hứng về hành trình khám phá và phát triển bản thân trong môi trường công nghệ thông tin đầy năng động và thử thách. <br>
				
				• Giao lưu, gặp gỡ các anh chị khóa trên, lắng nghe kinh nghiệm học tập, hoạt động Đoàn Hội và khám phá những bí quyết để vừa học tốt, vừa “quẩy” hết mình trong những năm tháng đại học. <br>
				
				• Thưởng thức các tiết mục văn nghệ sôi động và nhận những phần quà hấp dẫn từ các anh chị khoá trên, như một món quà chào đón các bạn tân sinh viên K24 đến với gia đình Tin học. 🎁 <br>
				
				• Nhân dịp này, Ban Chủ Nhiệm Khoa Tin học đã khen thưởng những sinh viên đạt thành tích xuất sắc trong học tập. Đặc biệt, vinh danh và khen thưởng 2 bạn Thủ khoa ngành đầu vào khóa tuyển sinh 2024 và 2 bạn đạt giải trong kỳ thi Olympic cụm chuyên Tin. Ngoài ra, các bạn trong Liên chi đoàn, CLB Tin học có thành tích xuất sắc trong hoạt động Đoàn Hội và CLB khoa Tin học cũng đã được tuyên dương. 🏆<br>
				</p>

				<p style="line-height: 1.6; margin-bottom: 30px;">
				🌟 Không khí buổi gặp gỡ tràn đầy năng lượng và tiếng cười. Các bạn tân sinh viên không chỉ hiểu thêm về ngành học mà mình đã chọn, mà còn có thêm động lực, sự tự tin để bước vào hành trình đại học sắp tới. 💪
				</p>
				<p style="line-height: 1.6; margin-bottom: 30px;">
				Chúng mình hy vọng sau buổi gặp gỡ này, các bạn K24 sẽ cảm thấy thêm phần tự hào và hứng khởi khi trở thành một phần của đại gia đình Tin học này. 🎓
				</p>
				<p style="line-height: 1.6; margin-bottom: 30px;">
				🌱 LCĐ khoa Tin học sẽ luôn đồng hành cùng các bạn trong suốt chặng đường học tập và phát triển. Hãy sẵn sàng cùng nhau khám phá và chinh phục những thử thách mới nhé!
				</p>
				<p style="line-height: 1.6; margin-bottom: 30px;">
				📸 Dưới đây là một vài khoảnh khắc đáng nhớ từ sự kiện, cùng điểm lại những giây phút tuyệt vời đó nào!
				</p>
				
                <img src="images/tsv-1.jpeg" alt="" style="width: 100%; height: 400px; object-fit: cover; margin-bottom: 10px;">
                <img src="images/tsv-2.jpeg" alt="" style="width: 100%; height: 400px; object-fit: cover; margin-bottom: 10px;">
                <img src="images/tsv-3.jpeg" alt="" style="width: 100%; height: 400px; object-fit: cover; margin-bottom: 10px;">
                <img src="images/tsv-4.jpeg" alt="" style="width: 100%; height: 400px; object-fit: cover; margin-bottom: 10px;">


				
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
        <a href="post1.jsp" class="prev"><i class="fas fa-chevron-left"></i></a>
        <a href="post1.jsp" class="page">1</a>
        <a href="post2.jsp" class="page active">2</a>
        <a href="post3.jsp" class="page">3</a>
        <a href="post4.jsp" class="page">4</a>
        <a href="post5.jsp" class="page">5</a>
        <a href="post6.jsp" class="page">6</a>
        <a href="post3.jsp" class="next"><i class="fas fa-chevron-right"></i></a>
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