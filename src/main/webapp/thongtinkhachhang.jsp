<%@page import="bean.khachhangbean"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Thông Tin Khách Hàng</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="icon" href="filePicture/favicon.ico">
</head>

<body>

    <div class="container mt-5" align="center">
        <div class="card mx-auto" style="max-width: 400px;">
        <c:set var="s" value="${requestScope.ds}"/>
        <c:choose>
        <c:when test="${not empty ds}">
            <div class="card-body">
            
                <h5 class="card-title">Họ và Tên: ${s.hoten}</h5>
                <p class="card-text">Mã Khách Hàng: ${s.makh }</p>
            </div>
            <ul class="list-group list-group-flush">
                <li class="list-group-item">Email: ${s.email }</li>
                <li class="list-group-item">Điện thoại: 0${s.sdt}</li>
                <!-- Thêm các thông tin khác tại đây -->
            </ul>
            <div class="card-body">
                <a href="capnhatthongtin" class="btn btn-primary">Cập Nhật Thông Tin</a>
            </div>
           
        </div>
        </c:when>
        <c:otherwise>
        <div class="card-body">
                <h5 class="card-title">Họ và Tên: </h5>
                <p class="card-text">Mã Khách Hàng: </p>
            </div>
            <ul class="list-group list-group-flush">
                <li class="list-group-item">Email: </li>
                <li class="list-group-item">Điện thoại: </li>
                <!-- Thêm các thông tin khác tại đây -->
            </ul>
            <div class="card-body">
                <a href="dangnhapController" class="btn btn-primary">Cập Nhật Thông Tin</a>
            </div>
        </c:otherwise>
        </c:choose>
        <a href="trangchuController" class="btn btn-outline-success">Về trang chủ</a>
    </div>

    <!-- Bootstrap JS và Popper.js -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>

</html>