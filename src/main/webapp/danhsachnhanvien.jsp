<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <link rel="icon" href="filePicture/favicon.ico">
    <title>Danh Sách Nhân Viên</title>
    <!-- Bootstrap CSS -->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <script type="text/javascript">
    </script>
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
            <li class="nav-item">
                <a class="nav-link" href="trangdanhgia">Chỉnh sửa bình luận</a>
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
<c:set var="ds" value="${requestScope.ds}"/>
    <h2>Danh Sách Nhân Viên</h2>
    <table class="table table-bordered table-hover">
        <thead>
            <tr>
            	<th>Mã nhân viên</th>
            	<th>Tên nhân viên</th>
                <th>Tên Tài Khoản</th>
                <c:if test="${not empty sessionScope.admin or not empty sessionScope.quanly}">
                <th>Mật Khẩu</th>
                </c:if>
                <th>Chức vụ</th>
                <th>Quyền Hạn</th>
                <c:if test="${not empty sessionScope.admin}">
                <th>Lên Chức</th>
                </c:if>
            </tr>
        </thead>
        <tbody>
        <c:forEach var="s" items="${ds}">
            <tr>
            	<td>${s.manv}</td>
                <td>${s.tennv}</td>
                <td>${s.un}</td>
                <c:choose>
                <c:when test="${not empty sessionScope.admin}">
                <td>${s.pass}</td>
                </c:when>
                <c:otherwise>
                <td>******</td>
                </c:otherwise>
                </c:choose>
                <td>Nhân Viên</td>
                <td>
                <a href="chinhsuanhanvien?xoa=${s.manv}"  class="btn btn-danger">Xóa nhân viên</a></td>
                <c:if test="${not empty sessionScope.admin}">
                <td>
                <a href="chinhsuanhanvien?manv=${s.manv}"  class="btn btn-success">Thăng chức</a></td>
                </c:if>
             </tr>
        </c:forEach>
        </tbody>
    </table>

    <!-- Bootstrap JS and dependencies (jQuery, Popper.js) -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
