<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Quản Lý Món Ăn</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <link rel="icon" href="filePicture/favicon.ico">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap-theme.min.css">
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
<script src="https://cdn.datatables.net/1.11.5/js/jquery.dataTables.min.js"></script>
<script>
    $(document).ready(function () {
        $('#search').on('keyup', function () {
            var searchText = $(this).val().toLowerCase();
            $('#myTable tbody tr').each(function (){
                var rowText = $(this).text().toLowerCase();
                $(this).toggle(rowText.indexOf(searchText) > -1);
            });
        });
    });
</script>
    <style>
    
        body {
            padding: 20px;
        }

        table {
            width: 100%;
            margin-top: 20px;
        }

        th,
        td {
            text-align: center;
        }
	.container{
		margin-top: 50px;
	}
        th {
            background-color: #007bff;
            color: #ffffff;
        }

        .food-image {
            max-width: 100px;
            max-height: 100px;
            object-fit: cover;
        }
        .inpsua{
        	width: 60px;
        	font-size: 10px;
        }
        .btn{
        padding: -10.625rem .75rem;
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
    .btn-success {
    color: #fff;
    height: 25px;
    background-color: #28a745;
    border-color: #28a745;
}
	.inpsua:focus{
		outline: none;	
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
    <div class="container">
        <div style="display:flex;"><h2 class="mb-4">Quản Lý Món Ăn</h2> <c:if test="${not empty sessionScope.quanly or not empty sessionScope.admin}"><a href="themmonanController" class="ml-auto btn btn-success">Thêm món+</a></c:if></div>
<div class="input-group mb-3">
    <input type="text" class="form-control" placeholder="Tìm kiếm món ăn" aria-label="Tìm kiếm" id="search" aria-describedby="basic-addon2">
</div>
        <table class="table table-bordered" id="myTable">
        <thead>
            <tr><th scope="col">Mã Loại</th>
                <th scope="col">Ảnh</th>
                <th scope="col">Mã Món Ăn</th>
                <th scope="col">Tên Món Ăn</th>
                <th scope="col">Giá</th>
                <c:if test="${not empty sessionScope.admin or not empty sessionScope.quanly}">
                <th scope="col">Thao Tác</th>
				</c:if>
            </tr>
        </thead>
        <tbody>
        <c:set var="ds" value="${requestScope.ds}"/>
            <c:forEach var="s" items="${ds}">
            <tr>
            	<td>${s.maloai}</td>
                <td><img class="food-image" src="${s.anh}" alt="Food Image"></td>
                <td>${s.mamon}</td>
                <td>${s.tenmon}
                <c:if test="${not empty sessionScope.admin or not empty sessionScope.quanly}">
                <br>
                <form action="suamonan">
                <input type="hidden" value="${s.mamon}" name="mamonan">
                <input placeholder="Sửa tên" type="text" name="suaten" width="30px" class="inpsua" required>
                <button type="submit" class="inpsua btn-outline-success">Sửa</button>
                </form></c:if>
                </td>
                <td>${s.gia} 
                <c:if test="${not empty sessionScope.admin or not empty sessionScope.quanly}">
                <br>
                <form action="suamonan">
                <input type="hidden" value="${s.mamon}" name="mamon">
                <input placeholder="Sửa giá" type="number" name="suagia" width="30px" class="inpsua" required>
                <button type="submit" class="inpsua btn-outline-success">Sửa</button>
                </form>
                </c:if>
                </td>
                <c:if test="${not empty sessionScope.admin or not empty sessionScope.quanly}">
                <td> 
                    <a href="xoamonan?mamon=${s.mamon}" class="btn btn-info btn-sm">Xóa</a>
                </td>
                </c:if>
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