<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Lịch Sử Đặt Bàn</title>
    <link rel="icon" href="filePicture/favicon.ico">
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap-theme.min.css">
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="fileCSS/menu.css">
  
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


<c:if test="${not empty sessionScope.dangnhap}">
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
</c:if>
<c:if test="${empty sessionScope.dangnhap}">
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
                <a class="nav-link" href="quanlykhachhang">Quản lý khách hàng</a>
            </li>
            </c:if>
            <c:if test="${not empty sessionScope.quanly or not empty sessionScope.admin or not empty sessionScope.nhanvien}">
            <li class="nav-item">
                <a class="nav-link" href="quanlymonan">Quản lý món ăn</a>
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
                <a class="nav-link" href="themnhanvien">Thêm nhân viên</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="trangdanhgia">Chỉnh sửa bình luận</a>
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
<c:if test="${not empty sessionScope.dangnhap}">
	<div style="margin-top: 150px;"></div>
</c:if>
<div class="container mt-5 table-hover">
<c:set var="ds" value="${requestScope.ds}"/>
<c:if test="${empty sessionScope.dangnhap}">
<h2>Lịch Sử Khách Đã Đặt Bàn</h2>
</c:if>
<c:if test="${not empty sessionScope.dangnhap}">
<h2>Lịch Sử Đặt Bàn</h2>
</c:if>
	<table class = "table table-bordered">
	<tr>
	</tr>
		<tr style="font-weight: 900;">
		<c:if test="${empty sessionScope.dangnhap}">
			<td>Mã Khách Hàng</td>
		</c:if>
			<td>Mã Đặt Bàn</td>
			<c:if test="${empty sessionScope.dangnhap}">
			<td>Tên Khách Hàng</td>
			</c:if>
			<td>Số điện thoại</td>
			<td>Ngày</td>
			<td>Giờ</td>
			<td>Số người</td>
			<td>Xem Bàn</td>
			<c:if test="${empty sessionScope.dangnhap}">
			<td>Hủy Bàn</td>
			</c:if>
		</tr>
		<c:forEach var="s" items="${ds}">
		<tr>
		<c:if test="${empty sessionScope.dangnhap}">
		<td>${s.makh}</td>
		</c:if>
		<td>${s.madatban}</td>
		<c:if test="${empty sessionScope.dangnhap}">
		<td>${s.hoten}</td>
		</c:if>
		<td>0${s.sdt}</td>
		<td>${s.ngay}</td>
		<td>${s.gio}</td>
		<td>${s.soluong}</td>
		<c:if test="${empty sessionScope.dangnhap}">
		<td><a href="tranglichsudatban?makh=${s.makh}&madatban=${s.madatban}" class="btn btn-primary">Xem bàn</a></td>
		</c:if>
		<c:if test="${not empty sessionScope.dangnhap}">
		<td><a href="tranglichsudatbanKH?makh=${s.makh}&madatban=${s.madatban}" class="btn btn-primary">Xem bàn</a></td>
		</c:if>
		<c:if test="${not empty sessionScope.admin or not empty sessionScope.quanly }">
		<td><a href="huybanAdmin?makh=${s.makh}&madatban=${s.madatban}" class="btn btn-danger">Xóa</a></td>
		</c:if>
		</tr>
		</c:forEach>
	</table>
</div>
</body>
</html>