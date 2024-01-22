<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Blog</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="fileCSS/menu.css">
    <style>
        nav {
            position: relative;
        }
    
        #Dichvus a:visited {
            color: black;
        }
    
        #Dichvus a:hover {
            color: white;
        }
        .card-text{
        	overflow: hidden;
        	white-space: nowrap;
        	max-width: 200px;
        	text-overflow: ellipsis;
        }
        .card-body{
        	border: 1px solid #000;
  			box-shadow: 0 0 5px rgba(0, 0, 0, 0.5);
        }
    </style>
</head>
<body>
<c:set var="ds" value="${requestScope.ds}"/>
<c:set var="dsmoi" value="${requestScope.dsmoi}"/>
<nav>
    <div id="nav-tong">
        <div id="logo">
            <li class="logo"></li><a>Bống BBQ</a>
        </div>
        <div id="nav-left">
            <li id="Home"><a href="trangchuController">TRANG CHỦ</a></li>
            <li id="Restaurant"><a href="trangchuController">NHÀ HÀNG</a></li>
            <li id="Order"><a href="datbanController">ĐẶT MÓN</a></li>
            <li id="Dichvu"><a href="">DỊCH VỤ TIỆC</a>
                <ul id="Dichvus">
                    <li id="s1"><a href="trangchuController#t1">Đặt tiệc sinh nhật</a></li>
                    <li id="s2"><a href="trangchuController#t1">Đặt bàn hẹn hò</a></li>
                    <li id="s3"><a href="trangchuController#t1">Đặt tiệc gia đình</a></li>
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
            <img id="img-search" src="filePicture/NicePng_search-icon-png_116167.png" alt="" height="20px" width="20px"
                usemap="#search">
            <map name="search">
                <area shape="rect" coords="0, 0, 22, 22" href="" alt="" id="timKiem" onclick="timKiem()">
            </map>
        </div>
    </div>
</nav>
    <div class="container mt-5">
        <h2 class="mb-4">Blog</h2>

        <div class="row">
            <!-- Danh sách bài viết -->
            <div class="col-md-8">
                <div class="card mb-4">
                <c:forEach var="s" items="${ds}">
                    <div class="card-body">
                        <div style="display:flex;"><h5 class="card-title">${s.tieude}</h5><span class="ml-auto">${s.ngay}</span></div>
                        <p class="card-text">${s.noidung}</p>
                        <a href="hienthibaivietKH?mabaiviet=${s.matintuc}" class="btn btn-primary">Đọc Thêm</a>
                    </div>
                </c:forEach>
                </div>
            </div>
            <!-- Bài viết chi tiết -->
            <div class="col-md-4">
                <div class="card">
                <h5 class="card-title">Bài viết mới nhất</h5>
                <c:forEach var="s" items="${dsmoi}">
                    <div class="card-body">
                        <h5 class="card-title"><a href="hienthibaivietKH?mabaiviet=${s.matintuc}">${s.tieude}</a></h5>
                        <p class="card-text">${s.noidung}</p>
                    </div>
                </c:forEach>
                </div>
            </div>
        </div>
    </div>

    <!-- Bootstrap JS và Popper.js -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>

</html>