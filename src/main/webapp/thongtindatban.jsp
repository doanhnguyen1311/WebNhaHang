<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page import="bean.khachhangbean"%>
<%@page import="bean.datmonbean"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" href="filePicture/favicon.ico">
    <title>Thông Tin Bàn Đặt</title>
    <!-- Include Bootstrap CSS from CDN -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
    <script>
    $(document).ready(function() {
        $("#hien").click(function() {
            $(".anhien").slideToggle();
            $("#anh").toggle();
        });
    });
</script>
    <style>
    	#hien{
    		margin-left: 50px;
    	}
    	.anhien{
    		display: none;
    	}
    </style>
</head>
<body>
<a class="btn btn-success" href="giohang">Trở về</a>
<div class="container mt-5">
<c:if test="${not empty requestScope.ds}">
<c:set var="kh" value="${sessionScope.dangnhap}"/>
		<div class="jumbotron">
            <h1 class="display-4">Bàn của bạn đang chờ xác nhận!</h1>
              -------><button id="hien" class="btn btn-outline-success">Xem bàn</button>
            <hr class="my-4">
            <img src="filePicture/giohang.png" alt="Empty Cart" class="img-fluid" width="150px" id="anh">
        </div>
    <h2 class="anhien">Thông Tin Đặt Bàn</h2>
    <c:set var="ds" value="${requestScope.ds}"/>
    <table class="table table-hover table-bordered anhien">
        <thead>
            <tr>
                <th>Mã Đặt Bàn</th>
                <th>Mã KH(Đăng Nhập)</th>
                <th>Tên Khách Đặt</th>
                <th>Ngày Đặt</th>
                <th>Giờ Đặt</th>
            </tr>
        </thead>
        <tbody>
        <c:set var="m" value="${ds[0]}"/>
        	<tr>
                <td>${m.madatban}</td>
                <td>${m.makh}</td>
                <td>${m.tenkh}</td>
                <td>${m.ngaydat}</td>
                <td>${m.giodat}</td>
            </tr>
            <tr>
                <td>----------</td>
                <td>----------</td>
                <td>----------</td>
                <td>----------</td>
                <td>----------</td>
            </tr>
            <tr>
            	<td style = "font-weight: 900;">Món Ăn Đã Đặt</td>
            	<td></td>
	            <td></td>
	            <td></td>
	            <td></td>
            </tr>
            <tr>
            	<td>Mã món</td>
            	<td>Ảnh</td>
	            <td>Tên Món</td>
	            <td>Số lượng</td>
	            <td>Giá</td>
            </tr>
            <c:forEach var="s" items="${ds}">
            <tr>
	            <td align="center">${s.mamon}</td>
	            <td align="center">
            	<img src="${s.anh}" height="40px" width="40px">
            	</td>
	            <td align="center">${s.tenmon}</td>
	            <td align="center">${s.soluong}</td>
	            <td align="center">${s.gia}</td>
            </tr>
            </c:forEach>
        </tbody>
    </table><c:if test="${not empty sessionScope.tong}">
    <c:set var="tong" value="${sessionScope.tong}"/>
    <h4 class="anhien">Tổng cộng: ${tong}<sup>đ</sup></h4></c:if>
    <c:if test="">
    <c:set var="tong" value="${requestScope.tong}"/>
    <h4 class="anhien">Tổng cộng: ${tong}<sup>đ</sup></h4></c:if>
    <form action="huybanController" method="post" class="anhien">
    <button class="btn btn-danger" type="submit">Hủy bàn</button>
    </form>
</div>
</c:if>
<c:if test="${empty requestScope.ktr and empty requestScope.ds}">
<c:set var="kh" value="${sessionScope.dangnhap}"/>
		<div class="jumbotron">
            <h1 class="display-4">Hiện tại bạn chưa đặt bàn nào!</h1>
            -------><a href="datbanController?makh=${kh.makh}" class="btn btn-warning">Quay lại đặt bàn</a>
            <hr class="my-4">
            <img src="filePicture/giohang.png" alt="Empty Cart" class="img-fluid" width="150px">
        </div>
</c:if>
<c:if test="${not empty requestScope.ktr and empty requestScope.ds}">
<c:set var="kh" value="${sessionScope.dangnhap}"/>
<div class="jumbotron">
            <h1 class="display-4" style="color: green;">Bàn của bạn đã được xác nhận!</h1>
              <div style="display:flex;">-------><a href="datbanController?makh=${kh.makh}" class="btn btn-warning">Tạo Bàn Mới</a><button id="hien" class="btn btn-outline-success">Xem bàn</button></div>
            <hr class="my-4">
            <img src="filePicture/giohang.png" alt="Empty Cart" class="img-fluid" width="150px" id="anh">
        </div>
        <div class="container mt-5">
<c:if test="${not empty requestScope.ktr}">
    <h2 class="anhien">Thông Tin Đặt Bàn</h2>
    <c:set var="ds" value="${requestScope.ktr}"/>
    <table class="table table-hover table-bordered anhien">
        <thead>
            <tr>
                <th>Mã Đặt Bàn</th>
                <th>Mã KH(Đăng Nhập)</th>
                <th>Tên Khách Đặt</th>
                <th>Ngày Đặt</th>
                <th>Giờ Đặt</th>
            </tr>
        </thead>
        <tbody>
        <c:set var="m" value="${ds[0]}"/>
        	<tr>
                <td>${m.madatban}</td>
                <td>${m.makh}</td>
                <td>${m.tenkh}</td>
                <td>${m.ngaydat}</td>
                <td>${m.giodat}</td>
            </tr>
            <tr>
                <td>----------</td>
                <td>----------</td>
                <td>----------</td>
                <td>----------</td>
                <td>----------</td>
            </tr>
            <tr>
            	<td style = "font-weight: 900;">Món Ăn Đã Đặt</td>
            	<td></td>
	            <td></td>
	            <td></td>
	            <td></td>
            </tr>
            <tr>
            	<td>Mã món</td>
            	<td>Ảnh</td>
	            <td>Tên Món</td>
	            <td>Số lượng</td>
	            <td>Giá</td>
            </tr>
            <c:forEach var="s" items="${ds}">
            <tr>
	            <td align="center">${s.mamon}</td>
	            <td align="center">
            	<img src="${s.anh}" height="40px" width="40px">
            	</td>
	            <td align="center">${s.tenmon}</td>
	            <td align="center">${s.soluong}</td>
	            <td align="center">${s.gia}</td>
            </tr>
            </c:forEach>
        </tbody>
    </table><c:if test="${not empty sessionScope.tong}">
    <c:set var="tong" value="${sessionScope.tong}"/>
    <h4 class="anhien">Tổng cộng: ${tong}<sup>đ</sup></h4></c:if>
    <c:if test="">
    <c:set var="tong" value="${requestScope.tong}"/>
    <h4 class="anhien">Tổng cộng: ${tong}<sup>đ</sup></h4></c:if>
    <form action="huybanController" method="post" class="anhien">
    <button class="btn btn-danger" type="submit">Hủy bàn</button>
    </form>
</div>
</c:if>
</c:if>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>

