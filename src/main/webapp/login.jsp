<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>it.ued</title>
    <link rel="stylesheet" href="css/login.css">
	<link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Mulish:wght@600;700;900&family=Quicksand:wght@400;500;600;700&display=swap" rel="stylesheet">
</head>
<body>
    <div class="container-login">
    <img src="images/cover.jpg" alt="Background" class="background-img">
        <div class="wrap-login">
         	<a href="index.jsp" class="back-to-home"><i class='bx bx-arrow-back' style="color:#f1c94e; font-size: 25px; font-weight: 100"></i></a>
            <h2 class="login-title">Đăng Nhập</h2>
            <form action="LoginServlet" method="post">
                <div class="input-container">
                    <label for="username" class="label">Tên đăng nhập:</label>
                    <input type="text" id="username" name="username" class="input-field" placeholder="Nhập tên đăng nhập" required>
                </div>
                <div class="input-container">
                    <label for="password" class="label">Mật khẩu:</label>
                    <input type="password" id="password" name="password" class="input-field" placeholder="Nhập mật khẩu" required>
                </div>
                <div class="btn-container">
                    <button type="submit" class="login-btn">Đăng Nhập</button>
                </div>
            </form>
            <div class="text-small">
                <p>Chưa có tài khoản? <a href="register.jsp">Đăng ký ngay</a></p>
            </div>
        </div>
    </div>
</body>
</html>
