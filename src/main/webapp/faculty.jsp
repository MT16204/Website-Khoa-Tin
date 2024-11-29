<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="vi">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Đội ngũ giảng viên - Khoa tin học Trường Đại học Sư phạm</title>
    <link rel="shortcut icon" type="image" href="images/logo.png">

    <!-- Links of CSS files -->
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="mobile.css" media="screen and (max-width: 968px)">

    <!-- Font Awesome CDN -->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.3/css/all.css" integrity="sha384-SZXxX4whJ79/gErwcOYf+zWLeJdY/qpuqC4cAa9rOGUstPomtqpuNWT9wdPEn2fk" crossorigin="anonymous">

    <!-- Google font link -->
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;600;700&display=swap" rel="stylesheet">

</head>

<body>

    <!-- Header Section Started -->

    <section class="sub-header facHeader">

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
                <li> <a href="#about">Giới thiệu</a></li>
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
                                <li><a href="cntt.jsp"> Cử nhân Công nghệ thông tin </a></li>
                                <li><a href="spt.jsp"> Cử nhân Sư phạm Tin học </a></li>
                                <!-- <li><a href="History.jsp"> Thạc sĩ Hệ thống thông tin </a></li> -->
                            </ul>
                        </li>
                        <li>
                            <label for="btn-3" class="show">Đào tạo</label>
                            <a href="#"> Đào tạo <i class="fas fa-caret-right"></i> </a>
                            <input type="checkbox" id="btn-3">

                            <ul>
                                <li><a href="bacdaihoc.jsp"> Đào tạo bậc đại học </a></li>
                                <li><a href="bacdthacsi.jsp"> Đào tạo bậc thạc sĩ </a></li>
                                <li><a href="bactiensi.jsp"> Đào tạo bậc tiến sĩ </a></li>
                            </ul>
                        </li>

                    </ul>
                </li>

                <li> <a href="#faculty">Đội ngũ giảng viên</a></li>
                <li> <a href="blog.jsp">Bài viết</a></li>
                <li> <a href="contact.jsp">Liên hệ</a></li>
                <li> <a href="login.jsp"><i class="fas fa-sign-in-alt"> </i> Login</a></li>
            </ul>
        </nav>



        <h1> Cơ cấu tổ chức </h1>
    </section>

    <!-- Header Section Ended -->

    <!-- Đội ngũ giảng viên -->
    <section class="container">
        <div class="facTray">
            <div class="facProfile">
                <img src="images/vinh.jpg" alt="">

                <h2> TS. NGUYỄN TRẦN QUỐC VINH </h2>
                <p> Chức vụ: Trưởng Khoa <p>

                <table>
                    <tr>
                        <td><i class="far fa-envelope"></i></td>
                        <td><a href="mailto:ntqvinh@ued.udn.vn">ntqvinh@ued.udn.vn</a></td>
                    </tr>
                    <tr>
                        <td><i class="fas fa-external-link-alt"></i></td>
                        <td><a href="English-1.jsp">Lớp học</a></td>
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
                    <tr>
                        <td><i class="fas fa-external-link-alt"></i></td>
                        <td><a href="English-1.jsp">Lớp học</a></td>
                    </tr>
                </table>
            </div>

            <div class="facProfile">
                <img src="images/phuong.jpg" alt="">

                <h2> TS. PHẠM ANH PHƯƠNG </h2>
                <p> Chức vụ: Phó Trưởng Khoa </p>

                <table>
                    <tr>
                        <td><i class="far fa-envelope"></i></td>
                        <td><a href="mailto:paphuong@ued.udn.vn">paphuong@ued.udn.vn</a></td>
                    </tr>
                    <tr>
                        <td><i class="fas fa-external-link-alt"></i></td>
                        <td><a href="English-1.jsp">Lớp học</a></td>
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
                    <tr>
                        <td><i class="fas fa-external-link-alt"></i></td>
                        <td><a href="English-1.jsp">Lớp học</a></td>
                    </tr>
                </table>
            </div>

            <div class="facProfile">
                <img src="images/anh.jpg" alt="">

                <h2> TS. NGUYỄN THỊ NGỌC ANH </h2>
                <p> Chức vụ: Giảng viên </p>

                <table>
                    <tr>
                        <td><i class="far fa-envelope"></i></td>
                        <td><a href="mailto:ntnanh@ued.udn.vn">ntnanh@ued.udn.vn</a></td>
                    </tr>
                    <tr>
                        <td><i class="fas fa-external-link-alt"></i></td>
                        <td><a href="English-1.jsp">Lớp học</a></td>
                    </tr>
                </table>
            </div>

            <div class="facProfile">
                <img src="images/hai.jpg" alt="">

                <h2> TS. NGUYỄN HOÀNG HẢI </h2>
                <p> Chức vụ: Giảng viên </p>

                <table>
                    <tr>
                        <td><i class="far fa-envelope"></i></td>
                        <td><a href="mailto:nhhai@ued.udn.vn">nhhai@ued.udn.vn</a></td>
                    </tr>
                    <tr>
                        <td><i class="fas fa-external-link-alt"></i></td>
                        <td><a href="English-1.jsp">Lớp học</a></td>
                    </tr>
                </table>
            </div>

            <div class="facProfile">
                <img src="images/binh.jpg" alt="">

                <h2> TS. ĐOÀN DUY BÌNH </h2>
                <p> Chức vụ: Giảng viên </p>

                <table>
                    <tr>
                        <td><i class="far fa-envelope"></i></td>
                        <td><a href="mailto:ddbinh@ued.udn.vn">ddbinh@ued.udn.vn</a></td>
                    </tr>
                    <tr>
                        <td><i class="fas fa-external-link-alt"></i></td>
                        <td><a href="English-1.jsp">Lớp học</a></td>
                    </tr>
                </table>
            </div>

            <div class="facProfile">
                <img src="images/tra.jpg" alt="">

                <h2> TS. VŨ THỊ TRÀ </h2>
                <p> Chức vụ: Giảng viên </p>

                <table>
                    <tr>
                        <td><i class="far fa-envelope"></i></td>
                        <td><a href="mailto:vttra@ued.udn.vn">vttra@ued.udn.vn</a></td>
                    </tr>
                    <tr>
                        <td><i class="fas fa-external-link-alt"></i></td>
                        <td><a href="English-1.jsp">Lớp học</a></td>
                    </tr>
                </table>
            </div>

            <div class="facProfile">
                <img src="images/my.png" alt="">

                <h2> Ths. LÊ VĂN MỸ </h2>
                <p> Chức vụ: Giảng viên </p>

                <table>
                    <tr>
                        <td><i class="far fa-envelope"></i></td>
                        <td><a href="mailto:lvmy@ued.udn.vn">lvmy@ued.udn.vn</a></td>
                    </tr>
                    <tr>
                        <td><i class="fas fa-external-link-alt"></i></td>
                        <td><a href="English-1.jsp">Lớp học</a></td>
                    </tr>
                </table>
            </div>

            <div class="facProfile">
                <img src="images/lttbinh.png" alt="">

                <h2> Ths. LÊ THỊ THANH BÌNH </h2>
                <p> Chức vụ: Giảng viên </p>

                <table>
                    <tr>
                        <td><i class="far fa-envelope"></i></td>
                        <td><a href="mailto:lttbinh@ued.udn.vn">lttbinh@ued.udn.vn</a></td>
                    </tr>
                    <tr>
                        <td><i class="fas fa-external-link-alt"></i></td>
                        <td><a href="English-1.jsp">Lớp học</a></td>
                    </tr>
                </table>
            </div>

            <div class="facProfile">
                <img src="images/mhthi.jpg" alt="">

                <h2> Ths. MAI HÀ THI </h2>
                <p> Chức vụ: Giảng viên </p>

                <table>
                    <tr>
                        <td><i class="far fa-envelope"></i></td>
                        <td><a href="mailto:mhthi@ued.udn.vn">mhthi@ued.udn.vn</a></td>
                    </tr>
                    <tr>
                        <td><i class="fas fa-external-link-alt"></i></td>
                        <td><a href="English-1.jsp">Lớp học</a></td>
                    </tr>
                </table>
            </div>

            <div class="facProfile">
                <img src="images/tvhung.jpg" alt="">

                <h2> TS. TRẦN VĂN HƯNG </h2>
                <p> Chức vụ: Trưởng bộ môn </p>

                <table>
                    <tr>
                        <td><i class="far fa-envelope"></i></td>
                        <td><a href="mailto:mhthi@ued.udn.vn">mhthi@ued.udn.vn</a></td>
                    </tr>
                    <tr>
                        <td><i class="fas fa-external-link-alt"></i></td>
                        <td><a href="English-1.jsp">Lớp học</a></td>
                    </tr>
                </table>
            </div>
            
            <div class="facProfile">
                <img src="images/lvchung.jpg" alt="">

                <h2> Ths. LÊ VIẾT CHUNG </h2>
                <p> Chức vụ: Giảng viên </p>

                <table>
                    <tr>
                        <td><i class="far fa-envelope"></i></td>
                        <td><a href="mailto:lvchung@ued.udn.vn">lvchung@ued.udn.vn</a></td>
                    </tr>
                    <tr>
                        <td><i class="fas fa-external-link-alt"></i></td>
                        <td><a href="English-1.jsp">Lớp học</a></td>
                    </tr>
                </table>
            </div>

            <div class="facProfile">
                <img src="images/hntu.jpg" alt="">

                <h2> Ths. HỒ NGỌC TÚ </h2>
                <p> Chức vụ: Giảng viên </p>

                <table>
                    <tr>
                        <td><i class="far fa-envelope"></i></td>
                        <td><a href="mailto:hntu@ued.udn.vn">hntu@ued.udn.vn</a></td>
                    </tr>
                    <tr>
                        <td><i class="fas fa-external-link-alt"></i></td>
                        <td><a href="English-1.jsp">Lớp học</a></td>
                    </tr>
                </table>
            </div>

            <div class="facProfile">
                <img src="images/tttrang.jpg" alt="">

                <h2> CN. TRẦN THUỲ TRANG </h2>
                <p> Chức vụ: Thư ký khoa </p>

                <table>
                    <tr>
                        <td><i class="far fa-envelope"></i></td>
                        <td><a href="mailto:tttrang@ued.udn.vn">tttrang@ued.udn.vn</a></td>
                    </tr>
                </table>
            </div>

            <!-- <div class="facProfile">
                <img src="images/Nazia-Sultana-Chowdhury.png" alt="">

                <h2> Nazia Sultana Chowdhury </h2>
                <p> Lecturer </p>

                <table>
                    <tr>
                        <td><i class="far fa-envelope"></i></td>
                        <td><a href="mailto:nazia.nishat1971@gmail.com">nazia.nishat1971@gmail.com</a></td>
                    </tr>
                    <tr>
                        <td><i class="fa fa-phone"></i></td>
                        <td><a href="tel:+8801627055017">+880 1627 055 017</a></td>
                    </tr>
                </table>
            </div> -->
        </div>
    </section>
    <!-- Đội ngũ giảng viên -->


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