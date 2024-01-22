<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Quản lý khách hàng</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <link rel="icon" href="filePicture/favicon.ico">
    <!-- Custom CSS -->
    <style>
        body {
            padding: 20px;
        }

        table {
            width: 100%;
            margin-top: 20px;
            font-size: 12px;
        }
        table a{
            font-size: 12px;
        }
        .btn{
            font-size: 12px;
        }
        th,
        td {
            white-space: nowrap;
            text-align: center;

        }

        th {
            background-color: #007bff;
            color: #ffffff;
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
        <h2 class="mb-4">Bảng quản lý khách hàng</h2>

        <table class="table table-bordered">
            <thead>
                <tr>
                    <th scope="col">Mã Khách Hàng</th>
                    <th scope="col">Họ và Tên</th>
                    <th scope="col">Tên Đăng Nhập</th>
                    <th scope="col">Mật Khẩu</th>
                    <th scope="col">Email</th>
                    <th scope="col">Số Điện Thoại</th>
                    <th scope="col">Xóa KH</th>
                    <th scope="col">Lịch Sử</th>
                </tr>
            </thead>
            <tbody>
                <!-- Dữ liệu khách hàng sẽ được thêm vào đây -->
                <tr>
                    <td>1</td>
                    <td>Nguyễn Văn A</td>
                    <td>user123</td>
                    <td>********</td>
                    <td>user123@example.com</td>
                    <td>0123456789</td>
                    <td><a href="" class="btn btn-warning">Xóa Khách Hàng</a></td>
                    <td><a href="" class="btn btn-primary">Lịch sử mua hàng</a></td>
                </tr>
                <!-- Thêm các dòng khác nếu cần -->
            </tbody>
        </table>
    </div>

    <!-- Bootstrap JS and dependencies -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

</body>

</html>