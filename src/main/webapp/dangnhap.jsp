<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Đăng nhập</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="icon" href="filePicture/favicon.ico">
    <link href="https://getbootstrap.com/docs/5.3/assets/css/docs.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
    <script src="fileJavascript/jquery.min.js"></script>
    <link rel="stylesheet" href="fileCSS/trangdangnhap.css">
    <style>
    .navbar-expand-lg .navbar-nav .nav-link {
    padding-right: var(--bs-navbar-nav-link-padding-x);
    padding-left: var(--bs-navbar-nav-link-padding-x);
    color: #fff;
    }
   .form-control {
    color: #fff;
}
    .card-header:first-child {
    border-radius: var(--bs-card-inner-border-radius) var(--bs-card-inner-border-radius) 0 0;
    color: white;
}
.form-control:focus {
    color: #ffffff;
    background-color: var(--bs-body-bg);
    border-color: #86b7fe;
    outline: 0;
    box-shadow: 0 0 0 0.25rem rgba(13,110,253,.25);
}
.navbar-brand {
    padding-top: var(--bs-navbar-brand-padding-y);
    padding-bottom: var(--bs-navbar-brand-padding-y);
    margin-right: var(--bs-navbar-brand-margin-end);
    font-size: var(--bs-navbar-brand-font-size);
    color: var(--bs-navbar-brand-color);
    text-decoration: none;
    white-space: nowrap;
    color: #fff;
}
input{
color:#fff;}
input[type="text"] {
    color: #fff;
}
input:focus{
color:#fff;}
.card-body {
    flex: 1 1 auto;
    padding: var(--bs-card-spacer-y) var(--bs-card-spacer-x);
    color: var(--bs-card-color);
    background-color: yellow;
}
        body{
            background-color: rgb(223, 222, 188);
        }
        .bg-body-tertiary {
    --bs-bg-opacity: 1;
    background-color: transparent!important;
}
    </style>
</head>

<body>
<nav class="navbar navbar-expand-lg bg-body-tertiary">
    <div class="container-fluid">
        <a class="navbar-brand" href="#">Bống BBQ</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarScroll"
            aria-controls="navbarScroll" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarScroll">
            <ul class="navbar-nav me-auto my-2 my-lg-0 navbar-nav-scroll" style="--bs-scroll-height: 100px;">
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="trangchuController">Trang chủ</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Nhà Hàng</a>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown"
                        aria-expanded="false">
                        Đặt Bàn
                    </a>
                    <ul class="dropdown-menu">
                        <li><a class="dropdown-item" href="#">Đặt bàn gia đình</a></li>
                        <li><a class="dropdown-item" href="#">Đặt bàn hẹn hò</a></li>
                        <li><a class="dropdown-item" href="#">Đăt tiệc sinh nhật</a></li>
                        <li><a class="dropdown-item" href="#">Đăt bàn riêng</a></li>
                    </ul>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                        Liên Hệ
                    </a>
                    <ul class="dropdown-menu">
                        <li><a class="btn dropdown-item" href="">Bống BBQ Garden</a></li>
                        <li><a class="btn dropdown-item" href="">Bống BBQ LakeView</a></li>
                    </ul>
                </li>
            </ul>
            <li class="btn">
                <a href="dangnhapnhanvien" class="nav-link">
                    <i class="bi bi-person-circle">Đăng nhập admin</i>
                </a>
            </li>
        </div>
    </div>
</nav>

    <div class="container mt-5">
        <div class="row justify-content-center">
            <div class="col-md-6">
                <div class="card">
                    <div class="card-header">
                        Đăng nhập
                    </div>
                    <div class="card-body">
                        <form action="dangnhapController" method="post">
                            <div class="form-group">
                                <label for="username">Tên đăng nhập:</label>
                                <input type="text" class="form-control" id="username" name="username" required>
                            </div>
                            <div class="form-group">
                                <label for="password">Mật khẩu:</label>
                                <input type="password" class="form-control" id="password" name="password" required>
                            </div>
                            <c:set var="dem" value="${sessionScope.dem}"/>
                            <c:if test="${dem>=3}">
				 			<img src="simpleCaptcha.jpg" /><span><input type="text" name="answer"/><br></span>
				 			</c:if>
                            <%=request.getAttribute("loi") %>
                            <p style="color:#fff;">Bạn chưa có tài khoản? <span><a href="dangkyController">Đăng ký</a></span></p>
                            <button type="submit" class="btn btn-primary">Đăng nhập</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
</body>

</html>