<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Giới thiệu - Khoa tin học Trường Đại học Sư phạm</title>
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

    <section class="sub-header">

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

                    <a href="#course">Chương trình đào tạo  <i class="fas fa-caret-down"></i></a>
                    <input type="checkbox" id="btn-1">
                    <ul>
                        <li>
                            <label for="btn-2" class="show">Công nghệ thông tin <i class="fas fa-caret-down"></i></label>
                            <a href="#"> Chuyên ngành <i class="fas fa-caret-right"></i> </a>
                            <input type="checkbox" id="btn-2">
                            <ul>
                                <li><a href="Diff_Int_calc.jsp"> Cử nhân Công nghệ thông tin </a></li>
                                <li><a href="English-1.jsp"> Cử nhân Sư phạm Tin học </a></li>
                                <li><a href="History.jsp"> Thạc sĩ Hệ thống thông tin </a></li>
                            </ul>
                        </li>
                        <li>
                            <label for="btn-3" class="show">Đào tạo</label>
                            <a href="daotao.jsp"> Đào tạo <i class="fas fa-caret-right"></i> </a>
                            <input type="checkbox" id="btn-3">

                            <ul>
                                <li><a href="bacdaihoc.jsp"> Đào tạo bậc đại học </a></li>
                                <li><a href="bacthacsi.jsp"> Đào tạo bậc thạc sĩ </a></li>
                                <li><a href="bactiensi.jsp"> Đào tạo bậc tiến sĩ </a></li>
                            </ul>
                        </li>

                    </ul>
                </li>

                <li> <a href="faculty.jsp">Đội ngũ giảng viên</a></li>
                <li> <a href="blog.jsp">Bài viết</a></li>
                <li> <a href="contact.jsp">Liên hệ</a></li>
                <li> <a href="login.jsp"><i class="fas fa-sign-in-alt"> </i> Login</a></li>
            </ul>
        </nav>
        <h1>Giới thiệu</h1>
        <!-- Header text Section Ended -->
  
    </section>

    <!-- Giới thiệu -->
    <section class="aboutUs" id="about">

        <div class="row">
            <div class="aboutCol">
                <h2>We are the 1st batch of permanent campus</h2>

                <p>We are students of CSE 50th batch of Metropolitan University. We are the 1st batch of our permanent campus. Number of section of our batch is four. The number of students of our batch is 150. Majority of them are boys. Among them many
                    are genius in various field such as singer, footballer, cricketer, poet, actor and some are recites well.</p>

                <h2> We have many skillfull students </h2>
                <p> Some of our students are very serious about their skills. Many are good at programming and they passionately learning about new things. Some of them good at web-developing, designing etc. Many of them are genius in various field such as
                    singer, footballer, cricketer, poet, actor and some are recites well. </p>


                <a href="faculty.jsp"><div class="heroBtn redBtn">Cơ cấu tổ chức</div></a>
            </div>

            <div class="aboutCol">
                <img src="images/aboutGRP.jpg" alt="">
            </div>
        </div>
    </section>
    <!-- Giới thiệu -->

    <!-- Script for form started -->

    <script type="text/javascript">
        var submitted = false;
    </script>
    <iframe name="hidden_iframe" id="hidden_iframe" style="display: none" onload="formLoad()"></iframe>

    <!-- Script for form Ended -->

    <!-- Footer -->
    <section class="footer">

        <div class="fcol col-3 ftrTopEle">
            <h4> Lời nhắn </h4>
            <div class="contactCol">

                <form action="https://docs.google.com/forms/u/0/d/e/1FAIpQLScMlX0B_uFTrGkYDPPhw_hL1YmaveLVuTKmwvf587E1J7V_xg/formResponse" method="post" target="hidden_iframe" onsubmit="submitted=true" class="myform" id="myform">

                    <input type="text" name="entry.805276147" placeholder="Name" required>
                    <input type="email" name="emailAddress" placeholder="Email" required>
                    <textarea rows="3" name="entry.1586819207" placeholder="Feedback" required></textarea>
                    <button type="submit" class="heroBtn"> Gửi <i class="fas fa-paper-plane"></i> </button>
                </form>
            </div>
        </div>
        <div class="fcol col-3 ftrTopEle">

            <h4>Liên hệ</h4>

            <ol>
                <li><a href="https://metrouni.edu.bd" target="blank"> Trang chủ | UED <i class="fas fa-external-link-alt"></i></a></li>
                <li><a href="https://web.facebook.com/groups/Dept.of.CSE.MU/" target="blank"> Trang chủ khoa tin | UED <i class="fas fa-external-link-alt"></i></a></li>
                <li><a href="https://web.facebook.com/metropolitanuniversity" target="blank"> Facebook - UED <i class="fas fa-external-link-alt"></i></a></li>
                <li><a href="https://web.facebook.com/groups/metrouni/" target="blank">Facebook khoa tin | UED <i class="fas fa-external-link-alt"></i></a></li>
                <!-- <li><a href="https://web.facebook.com/groups/734057760032501/" target="blank">FB/ Computer Programming <i class="fas fa-external-link-alt"></i></a></li>
                <li><a href="https://www.youtube.com/channel/UC5HPvlTXV3rqOgit4Vp0IhA" target="blank"> MU YouTube Channel <i class="fas fa-external-link-alt"></i></a></li> -->
            </ol>
        </div>
        <div class="fcol col-3 ftrTopEle">

            <h4>Giới thiệu</h4>

            <p>This website is designed and developed by the students of CSE 50th batch of Metropolitan University and it is not an official website. Our main purpose is to help our batch and our junior batches through this website.</p><br>
        </div>
        <!-- <div class="fcol col-3 flink ftrTopEle">

            <h4>Theo dõi</h4>
            <div class="icons">
                <a href="#"> <i class="fab fa-facebook-f"> </i></a>
                <a href="#"> <i class="fab fa-linkedin-in"> </i></a>
            </div>
        </div> -->
        <div class="fcol col-6">
            <hr>
            <p> &copy; 2021 MU_CSE-50(Metropolitan University)</p>
        </div>

        <div class="fcol col-6 ftop">

            <a href="#top">
                <div class="gotop">
                    Back to Top <i class="fas fa-angle-double-up"></i>
                </div>
            </a>
        </div>
    </section>
    <!-- Footer -->

    <!-- Linked to javascript file -->
    <script src="js/index.js"></script>

</body>

</html>