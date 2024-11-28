<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Khoa tin học | UED</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/login.css">
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Mulish:wght@600;700;900&family=Quicksand:wght@400;500;600;700&display=swap" rel="stylesheet">

    <!-- Thêm JavaScript để hiển thị popup -->
    <script type="text/javascript">
        function showPopup(message, messageType) {
            alert(message); // Hiển thị popup với thông báo
        }

        window.onload = function() {
            var message = "<%= request.getAttribute("message") != null ? request.getAttribute("message") : "" %>";
            var messageType = "<%= request.getAttribute("messageType") != null ? request.getAttribute("messageType") : "" %>";
            if (message) {
                showPopup(message, messageType);
            }
        }
    </script>
</head>
<body>
    <div class="container-login">
        <img src="images/cover.jpg" alt="Background" class="background-img">
        <div class="wrap-login">
            <a href="index.jsp" class="back-to-home"><i class='bx bx-arrow-back' style="color:#fa6055; font-size: 25px; font-weight: 100"></i></a>
            <h2 class="login-title">Đăng Ký</h2>
            <form action="RegisterServlet" method="post">
                <div class="input-container">
                    <label for="username" class="label">Tên đăng ký:</label>
                    <input type="text" id="username" name="username" class="input-field" placeholder="Nhập tên đăng nhập" required>
                </div>
                <div class="input-container">
                    <label for="email" class="label">Email:</label>
                    <input type="email" id="email" name="useremail" class="input-field" placeholder="Nhập địa chỉ email" required>
                </div>
                <div class="input-container">
                    <label for="password" class="label">Mật khẩu:</label>
                    <input type="password" id="password" name="password" class="input-field" placeholder="Nhập mật khẩu" required>
                </div>
                <div class="btn-container">
                    <button type="submit" class="login-btn">Đăng Ký</button>
                </div>
            </form>
            <div class="text-small">
                <p>Đã có tài khoản? <a href="login.jsp">Đăng nhập ngay</a></p>
            </div>
        </div>
    </div>
</body>
</html>
