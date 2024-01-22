<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page import="bean.baivietbean"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Quản lý bài viết</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <link rel="icon" href="filePicture/favicon.ico">
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap-theme.min.css">
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <style>
        body {
            padding: 20px;
        }

        .navbar {
            margin-bottom: 20px;
        }

        .post-list {
            margin-top: 20px;
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


<!-- First Navigation Bar -->
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
        </c:if>
        </ul>
        <ul class="navbar-nav ml-auto">
        <c:if test="${not empty sessionScope.ten}">
            <li class="nav-item">
                <a class="nav-link" href="#">Xin chào: <c:out value="${sessionScope.ten}"/>!</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#">Quyền truy cập: <c:out value="${sessionScope.quyen}"/></a>
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

    <div class="container">
        <h2 class="mb-4">Danh sách bài viết</h2>
        <c:set var="ds" value="${requestScope.dsbv}"/>
        <table class="table table-bordered">
            <thead>
                <tr>
                    <th scope="col">Mã Bài Viết</th>
                    <th scope="col">Tiêu Đề</th>
                    <th scope="col">Ngày Đăng</th>
                    <th scope="col"></th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="s" items="${ds}">
                <tr>
                    <td>${s.matintuc}</td>
                    <td><a href="hienthibaiviet?mabaiviet=${s.matintuc }">${s.tieude}</a></td>
                    <td>${s.ngay }</td>
                    <c:if test="${not empty sessionScope.quanly or not empty sessionScope.admin}">
                    <td><a href="xoabaiviet?mabaiviet=${s.matintuc}" class = "btn btn-danger">Xóa</a></td>
                    </c:if>
                </tr>
                </c:forEach>
            </tbody>
        </table>
        <!-- Form thêm bài viết -->
        <div class="mb-4">
            <button class="btn btn-primary" data-toggle="modal" data-target="#addPostModal">Thêm bài viết</button>
        </div>

        <!-- Danh sách bài viết -->
        <ul class="list-group post-list">
            <!-- Dữ liệu bài viết sẽ được thêm vào đây -->
        </ul>

        <!-- Modal thêm bài viết -->
        <div class="modal fade" id="addPostModal" tabindex="-1" role="dialog" aria-labelledby="addPostModalLabel"
            aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="addPostModalLabel">Thêm bài viết mới</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <!-- Form thêm bài viết sẽ được thêm vào đây -->
                        <form action = "ThemBaiViet" method="post">
                            <div class="form-group">
                                <label for="postTitle">Tiêu đề:</label>
                                <input type="text" class="form-control" id="postTitle" name="tieude" required>
                            </div>
                            <div class="form-group">
                                <label for="postContent">Nội dung:</label>
                                <textarea class="form-control" id="postContent" rows="4" name="noidung" required></textarea>
                            </div>
                            <button type="submit" class="btn btn-primary">Thêm bài viết</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Bootstrap JS and dependencies -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

</body>

</html>