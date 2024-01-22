<%@page import="bean.khachhangbean"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cập Nhật Thông Tin Khách Hàng</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <link rel="icon" href="filePicture/favicon.ico">
</head>
<body>
<c:set var="kh" value="${sessionScope.dangnhap}"/>
<div class="container mt-5">
    <div class="row justify-content-center">
        <div class="col-md-6">
            <div class="card">
                <div class="card-header">
                    Cập Nhật Thông Tin 
                </div>
                <div class="card-body">
                    <form action="capnhatthongtin" method="post">
                        <div class="form-group">
                            <label for="fullName">Họ và Tên:</label>
                            <input type="text" class="form-control" id="fullName" name="hoten" required>
                        </div>
                        <div class="form-group">
                            <label for="email">Email:</label>
                            <input type="email" class="form-control" id="email" name="email" required>
                        </div>
                        <div class="form-group">
                            <label for="phoneNumber">Số Điện Thoại:</label>
                            <input type="tel" class="form-control" id="phoneNumber" name="sdt" required>
                        </div>
                        <input type="hidden" name="makh" value="${kh.makh}">
                        <c:if test="${not empty requestScope.ok}">
                        <%=request.getAttribute("ok")%> 
                        </c:if>
                        <button type="submit" name="th" class="btn btn-primary">Cập Nhật</button>
                    </form>
                </div>
            </div>
            <c:choose>
            <c:when test="${not empty sessionScope.dangnhap}">
            <a class="btn btn-outline-success" href="thongtinController?makh=${kh.makh}">Trở về</a>
            </c:when>
            <c:otherwise>
            <a href="dangnhapController" class="btn btn-outline-success">Trở về</a>
            </c:otherwise>
            </c:choose>
        </div>
    </div>
</div>

<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>

</body>
</html>
