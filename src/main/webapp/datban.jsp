<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page import="bean.khachhangbean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Đặt Bàn - Bống BBQ</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="icon" href="filePicture/favicon.ico">
    <link rel="stylesheet" href="fileCSS/menu.css">
    <style>
        #Dichvus a:visited{
            color: black;
        }
        #Dichvus a:hover{
            color: white;
        }
        body {
            background-color: #f8f9fa;
        }
        .container {
            margin-top: 150px;
        }
        form {
            background-color: #ffffff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        .text-center {
        text-align: center!important;
        margin-top: 200px;
        }
    </style>
</head>
<body>
<nav>
    <div id="nav-tong">
        <div id="logo">
            <li class="logo"></li><a>Bống BBQ</a>
        </div>
        <div id="nav-left">
            <li id="Home"><a href="trangchuController">TRANG CHỦ</a></li>
            <li id="Restaurant"><a href="trangchuController">NHÀ HÀNG</a></li>
            <li id="Order"><a href="menuController">ĐẶT MÓN</a></li>
            <li id="Dichvu"><a href="trangchuController#t1">DỊCH VỤ TIỆC</a>
                <ul id="Dichvus">
                    <li id="s1"><a href="trangchuController#t1">Đặt tiệc sinh nhật</a></li>
                    <li id="s2"><a href="trangchuController#t1">Đặt bàn hẹn hò</a></li>
                    <li id="s3"><a href="trangchuController#t1">Đặt tiệc gia đình</a></li>
                </ul>
            </li>
            <li id="contact"><a href="">LIÊN HỆ</a>
                <ul id="con">
                    <li id="c1"><a href="tel:0129124141">Bống BBQ Garden:0123456789</a></li>
                    <li id="c2"><a href="tel:0238459892">Bống BBQ LakeView:0123456789</a></li>
                </ul>
            </li>
        </div>
        <div id="nav-right">
            <input type="text" id="search" placeholder="Tìm kiếm">
            <img id="img-search" src="filePicture/NicePng_search-icon-png_116167.png" alt="" height="20px" width="20px"
                usemap="#search">
            <map name="search">
                <area shape="rect" coords="0, 0, 22, 22" href="" alt="" id="timKiem" onclick="timKiem()">
            </map>
        </div>
    </div>
</nav>
    <div class="container">
        <h2 class="text-center mb-4">Đặt Bàn - Bống BBQ</h2>
        <form action="datbanController" method="post">
            <div class="form-group">
                <label for="phone">Số Điện Thoại:</label>
                <input type="tel" class="form-control" id="phone" name="sdt" placeholder="Nhập số điện thoại" required>
            </div>
            <div class="form-group">
                <label for="date">Ngày Đặt:</label>
                <input type="date" class="form-control" name="ngay" id="date" required>
            </div>
            <div class="form-group">
                <label for="time">Giờ Đặt:</label>
                <input type="time" class="form-control" name="gio" id="time" required>
            </div>
            <div class="form-group">
                <label for="guests">Số Lượng Khách:</label>
                <input type="number" class="form-control" name="soluong" id="guests" min="1" required>
            </div>
            <c:set var="kh" value="${sessionScope.dangnhap}"/>
            <input type="hidden" name="makh" value="${kh.makh}">
            <div class="form-group">
            <%=request.getAttribute("kq")%>
            </div>
            <button type="submit" class="btn btn-primary">Tạo Bàn</button>
        </form>
    </div>

    <!-- Bootstrap JS và Popper.js -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>

</html>