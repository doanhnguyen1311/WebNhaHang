<%@page import="bean.baivietbean"%>
<%@page import="bean.khachhangbean"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Trang Hiển Thị Bài Viết</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <link rel="icon" href="filePicture/favicon.ico"><link rel="stylesheet" href="fileCSS/menu.css">
     <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap-theme.min.css">
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<script type="text/javascript">
$(document).ready(function () {
	$(".ht").click(function(){
		$(".hienthi").toggle();
		$(".chinhsua").toggle();
	});
	$(".huy").click(function(){
		$(".hienthi").show();
		$(".chinhsua").hide();
	});
});
</script>
    <script>
        $(document).ready(function () {
            // phần này là của đăng nhập đăng ký
            // phần này là của thanh nav-left thay đổi li
            $("#Home").mouseenter(function () {
                $("#Home a").css("color", "black");
                $("#Home").css("background-color", "white");
            });
            $("#Home").mouseleave(function () {
                $("#Home a").css("color", "");
                $("#Home").css("background-color", "");
            });
            $("#Restaurant").mouseenter(function () {
                $("#Restaurant a").css("color", "black");
                $("#Restaurant").css("background-color", "white");
            });
            $("#Restaurant").mouseleave(function () {
                $("#Restaurant a").css("color", "");
                $("#Restaurant").css("background-color", "");
            });
            $("#Order").mouseenter(function () {
                $("#Order a").css("color", "black");
                $("#Order").css("background-color", "white");
            });
            $("#Order").mouseleave(function () {
                $("#Order a").css("color", "");
                $("#Order").css("background-color", "");
            });
            $("#Dichvu").mouseenter(function () {
                $("#Dichvu a").css("color", "black");
                $("#Dichvu").css("background-color", "white");
            });
            $("#Dichvu").mouseleave(function () {
                $("#Dichvu a").css("color", "");
                $("#Dichvu").css("background-color", "");
            });
            $("#contact").mouseenter(function () {
                $("#contact a").css("color", "black");
                $("#contact").css("background-color", "white");
            });
            $("#contact").mouseleave(function () {
                $("#contact a").css("color", "");
                $("#contact").css("background-color", "");
            });
            // phần này của Dichvus{
            $("#s1").mouseenter(function () {
                $("#s1 a").css("color", "white");
            });
            $("#s1").mouseleave(function () {
                $("#s1 a").css("color", "");
            });
            $("#s2").mouseenter(function () {
                $("#s2 a").css("color", "white");
            });
            $("#s2").mouseleave(function () {
                $("#s2 a").css("color", "");
            });
            $("#s3").mouseenter(function () {
                $("#s3 a").css("color", "white");
            });
            $("#s3").mouseleave(function () {
                $("#s3 a").css("color", "");
            });
            // }
            // Phần này là của Contact{
            $("#c1").mouseenter(function () {
                $("#c1 a").css("color", "white");
            });
            $("#c1").mouseleave(function () {
                $("#c1 a").css("color", "");
            });
            $("#c2").mouseenter(function () {
                $("#c2 a").css("color", "white");
            });
            $("#c2").mouseleave(function () {
                $("#c2 a").css("color", "");
            });
            // }
            // này là phần 3 ô tròn xanh
            $("#t1").mouseenter(function () {
                $("#t1 img").css("width", "70px");
            });
            $("#t1").mouseleave(function () {
                $("#t1 img").css("width", "");
            });
            $("#t2").mouseenter(function () {
                $("#t2 img").css("width", "70px");
            });
            $("#t2").mouseleave(function () {
                $("#t2 img").css("width", "");
            });
            $("#t3").mouseenter(function () {
                $("#t3 img").css("width", "70px");
            });
            $("#t3").mouseleave(function () {
                $("#t3 img").css("width", "");
            });
        });
    </script>
    <style>
    .btn-outline-warning {
    width: 60px;
    color: #ffc107;
    border-color: #ffc107;
}
    	.chinhsua{
    		display: none;
    	}
        body {
            background-color: #f8f9fa;
            padding-top: 20px;
        }

        .navbar {
            background-color: whitesmoke;
        }

        .navbar-brand,
        .navbar-nav .nav-link {
            color: white;
        }

        .navbar-brand:hover,
        .navbar-nav .nav-link:hover {
            color: #ffc107;
        }

        .post-container {
            max-width: 800px;
            margin: auto;
            margin-top: 20px;
            word-wrap:break-word;
        }

        .post {
            background-color: #ffffff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            margin-bottom: 20px;
        }

        .post-title {
            font-size: 24px;
            font-weight: bold;
            color: #007bff;
            margin-bottom: 10px;
        }

        .post-content {
            font-size: 16px;
            color: #333;
        }

        .back-link {
            color: #007bff;
            text-decoration: none;
            font-weight: bold;
            font-size: 18px;
            margin-bottom: 20px;
        }
        .back-link:hover {
            text-decoration: underline;
        }

        /* Thêm chi tiết xung quanh */
        .container {
            background-color: #f8f9fa;
            border-radius: 10px;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
            padding: 20px;
            margin-top: 100px;
        }
    </style>
<style>
    /* Custom styles for the navigation bar */
    .navbar {
        background: linear-gradient(to right, #FFD700, #FF6347);
    }

    .navbar-nav .nav-link {
        color: #fff; /* Set the default text color */
    }

    .navbar-nav .nav-link:hover {
        color: #fff; /* Set the hover text color */
        background-color: #FF8C00; /* Set the hover background color */
        transition: background-color 0.3s ease;
    }
</style>
</head>
<body>


<c:if test="${not empty sessionScope.quanly or not empty sessionScope.admin}">
<nav class="navbar navbar-expand-lg navbar-light" style="background: linear-gradient(to right, #FFD700, #FF6347);">
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav"
        aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item active">
                <a class="nav-link" href="trangchuController">Trang chủ <span class="sr-only">(current)</span></a>
            </li>
            <c:if test="${not empty sessionScope.quanly or not empty sessionScope.admin}">
            <li class="nav-item">
                <a class="nav-link" href="quanlybaiviet">Quản lý bài viết</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="quanlymonan">Quản lý món ăn</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="quanlykhachhang">Quản lý khách hàng</a>
            </li>
            </c:if>
        </ul>
        <ul class="navbar-nav ml-auto">
         <c:if test="${not empty sessionScope.quanly or not empty sessionScope.admin}">
            <li class="nav-item">
                <a class="nav-link" href="danhsachnhanvien">Danh sách nhân viên</a>
            </li>
         </c:if>
         <c:if test="${not empty sessionScope.admin}">
            <li class="nav-item">
                <a class="nav-link" href="danhsachquanly">Danh sách quản lý</a>
            </li>
         </c:if>
            <li class="nav-item">
                <a class="nav-link" href="dangnhapadmin">Đăng nhập admin</a>
            </li>
        </ul>
    </div>
</nav>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav"
        aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav">
        <c:if test="${not empty sessionScope.quanly or not empty sessionScope.admin}">
            <li class="nav-item">
                <a class="nav-link" href="thongtinkhachdatban">Thông tin khách đặt bàn</a>
            </li>
            
            <li class="nav-item">
                <a class="nav-link" href="quanlynguyenlieu">Quản lý nguyên liệu</a>
            </li>
        </c:if>
        <c:if test="${not empty sessionScope.quanly or not empty sessionScope.nhanvien}">
            <li class="nav-item">
                <a class="nav-link" href="xemmucluong">Xem mức lương</a>
            </li>
        </c:if>
        </ul>
        <ul class="navbar-nav ml-auto">
        <c:if test="${not empty sessionScope.ten}">
            <li class="nav-item">
                <a class="nav-link" href="#">Xin chào: ${sessionScope.ten}!</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#">Quyền truy cập: ${sessionScope.quyen}</a>
            </li> 
        </c:if>
        <c:if test="${not empty sessionScope.admin}">
        	<li class="nav-item">
                <a class="nav-link" href="#">Xin chào: Admin!</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#">Quyền truy cập: Admin</a>
            </li> 
        </c:if>
        </ul>
    </div>
</nav>
</c:if>
	<c:if test="${empty sessionScope.quanly and empty sessionScope.admin}">
    <nav>
        <div id="nav-tong">
            <div id="logo">
                <li class="logo"></li><a>Bống BBQ</a>
            </div>
            <c:set var="kh" value="${null}"/>
            <c:if test="${not empty sessionScope.dangnhap}">
            <c:set var="kh" value="${sessionScope.dangnhap}"/>
            </c:if>
            <div id="nav-left">
                <li id="Home"><a href="trangchuController">TRANG CHỦ</a></li>
                <li id="Restaurant"><a href="hienthigiohang">GIỎ HÀNG</a></li>
                <c:if test="${not empty sessionScope.dangnhap}"><<li id="Order"><a href="datbanController?makh=${kh.makh}">ĐẶT BÀN</a></li></c:if>
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
    </c:if>

    <div class="container post-container">
    <c:if test="${not empty sessionScope.quanly or not empty sessionScope.admin}">
        <div style="display:flex;"><a href="quanlybaiviet" class="btn btn-outline-primary">Trở về</a><div class="ml-auto"><img style="cursor: pointer;" src="filePicture/butchi.png" title="Chỉnh sửa" width="20px" class="ht"></div></div>
	</c:if>
	<c:if test="${empty sessionScope.quanly and empty sessionScope.admin}">
		<a href="trangchuController" class="btn btn-outline-primary">Trở về trang chủ</a>
	</c:if>
	<c:if test="${not empty requestScope.ds}">
	<c:set var="s" value="${requestScope.ds}"/>
        <div class="post hienthi">
            <h3 class="title">${s.tieude}</h3>
            <p class="post-content">
                ${s.noidung}
            </p>
        </div>
        <form action="chinhsuabaiviet" class="chinhsua" method="post">
        <div class="post">
            <textarea class="form-control" name="tieude">${s.tieude}</textarea>
            <textarea name="noidung" class="form-control" value="">${s.noidung}</textarea>
        </div>
        <div style="display: flex;"><input class="btn btn-outline-warning huy" value="Hủy" width="40px"><div style="margin: 0 5px;"></div><button type="submit" class="btn btn-success">OK</button></div>
        </form>
        
    </c:if> 
    </div>

    <!-- Bootstrap JS and dependencies -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</body>

</html>
