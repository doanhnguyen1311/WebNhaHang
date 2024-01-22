<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <link rel="icon" href="filePicture/favicon.ico">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap-theme.min.css">
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="fileCSS/menu.css">
    <style>
        body {
            font-family: 'Arial', sans-serif;
        }

        .container {
            margin-top: 50px;
        }

        th, td {
            text-align: center;
            white-space: nowrap;
        }

        .btn-danger {
            width: 80px;
        }
    </style>
    <title>Lịch sử đặt bàn</title>
</head>
<body>


<!-- First Navigation Bar -->
<nav>
        <div id="nav-tong">
            <div id="logo">
                <li class="logo"></li><a>Bống BBQ</a>
            </div>
            <c:set var="kh" value="${sessionScope.dangnhap}"/>
            <div id="nav-left">
                <li id="Home"><a href="trangchuController">TRANG CHỦ</a></li>
                <li id="Restaurant"><a href="hienthigiohang">GIỎ HÀNG</a></li>
                <c:if test="${not empty kh}">
                <li id="Order"><a href="datbanController?makh=${kh.makh}">ĐẶT BÀN</a></li>
                </c:if>
                <li id="Dichvu"><a href="trangchuController">DỊCH VỤ TIỆC</a>
                    <ul id="Dichvus">
                        <li id="s1"><a href="#t1">Đặt tiệc sinh nhật</a></li>
                        <li id="s2"><a href="#t1">Đặt bàn hẹn hò</a></li>
                        <li id="s3"><a href="#t1">Đặt tiệc gia đình</a></li>
                    </ul>
                </li>
                <li id="contact"><a href="">LIÊN HỆ</a>
                    <ul id="con">
                        <li id="c1"><a href="">Bống BBQ Garden:0123456789</a></li>
                        <li id="c2"><a href="">Bống BBQ LakeView:0123456789</a></li>
                    </ul>
                </li>
            </div>
            <div id="nav-right">
                <input type="text" id="search" placeholder="Tìm kiếm">
                <img id="img-search" src="filePicture/NicePng_search-icon-png_116167.png" alt="" height="20px" width="20px" usemap="#search">
                <map name="search">
                    <area shape="rect" coords="0, 0, 22, 22" href="" alt="" id="timKiem" onclick="timKiem()">
                </map>
            </div>
        </div>
    </nav>
<c:set var="ds" value="${requestScope.ds}"/>

<div style="margin-top:100px;"></div>
<a href="thongtindatbanKH" class="btn btn-primary">Trở về</a>
    <div class="container">
    
        <h1 class="mb-4">Lịch sử đặt bàn</h1>
        <table class="table table-bordered table-striped">
            <thead>
                <tr>
                    <th>Mã đặt bàn</th>
                    <th>Mã món</th>
                    <th>Ảnh</th>
                    <th>Tên món</th>
                    <th>Số lượng</th>
                    <th>Giá</th>
                    <th>Ngày</th>
                    <th>Giờ</th>
                </tr>
            </thead>
            <tbody>
            <c:forEach var="s" items="${ds}">
                <tr>
                    <td>${s.madatban}</td>
                    <td>${s.mamon}</td>
                    <td><img src="${s.anh}" width="50px"></td>
                    <td>${s.tenmon}</td>
                    <td>${s.soluong}</td>
                    <td>${s.gia}</td>
                    <td>${s.ngaydat}</td>
                    <td>${s.giodat}</td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</body>
</html>

