<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <link rel="icon" href="filePicture/favicon.ico">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet">
  <title>Thêm nhân viên</title>
  <!-- Kết nối Bootstrap CSS -->
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
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
                <a class="nav-link" href="#">Xin chào: <%=session.getAttribute("ten")%>!</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#">Quyền truy cập: <%=session.getAttribute("quyen")%></a>
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
<div class="container mt-5">
  <div class="row justify-content-center">
    <div class="col-md-6">
      <div class="card">
        <div class="card-header">
          <h3 class="text-center">Thêm nhân viên</h3>
        </div>
        <div class="card-body">
          <!-- Form đăng ký -->
          <form action = "themnhanvien" method="post">
            <div class="form-group">
              <label for="employeeName">Tên đăng nhập:</label>
              <input type="text" class="form-control" id="employeeName" name="un" required>
            </div>
            <div class="form-group">
              <label for="password">Mật khẩu:</label>
              <input type="text" class="form-control" id="password" name="pass" required>
            </div>
            
            <div class="form-group">
              <label for="employeeName">Tên nhân viên:</label>
              <input type="text" class="form-control" id="employeeName" name="tennv" required>
            </div>
            <div class="form-group">
            <label for="employeeName">Quyền hạn:</label>
              <select name="quyenhan" class="form-control">
              		<option disabled selected>Chọn quyền</option>
              		<c:if test="${not empty sessionScope.admin}">
              		<option value="qlzadbjahsgdprdfesadassxxaeewcffgfvfessfsfs">Quản lý</option>
              		</c:if>
              		<option value="nhanvien">Nhân viên</option>
              </select>
            </div>
            <div class="form-group">
              <label for="employeeName">Mức lương:</label>
              <input type="number" class="form-control" id="employeeName" name="luong" required>
            </div>
            <c:out value="${requestScope.kq}"/>
            <button type="submit" name="th" class="btn btn-primary btn-block">Thêm nhân viên</button>
          </form>
        </div>
      </div>
    </div>
  </div>
</div>

<!-- Kết nối Bootstrap JS và Popper.js (nếu cần) -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.0.7/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>
</html>
