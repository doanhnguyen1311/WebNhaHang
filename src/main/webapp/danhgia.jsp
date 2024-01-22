<%@page import="bean.binhluanbean"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page import="java.util.ArrayList"%>
<%@page import="bean.khachhangbean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Trang Đánh Giá</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="fileCSS/menu.css">
    <style>
        nav{
            position: relative;
        }
        #Dichvus a:visited{
            color: black;
        }
        #Dichvus a:hover{
            color: white;
        }
    </style>
</head>

<body>
<nav>
    <div id="nav-tong">
        <div id="logo">
            <li class="logo"></li><a>Bống BBQ</a>
        </div>
        <div id="nav-left">
            <li id="Home"><a href="trangchuController">TRANG CHỦ</a></li>
            <li id="Restaurant"><a href="trangchuController#gttext">NHÀ HÀNG</a></li>
            <li id="Order"><a href="datbanController">ĐẶT MÓN</a></li>
            <li id="Dichvu"><a href="datbanController">DỊCH VỤ TIỆC</a>
            </li>
            <li id="contact"><a href="">LIÊN HỆ</a>
                <ul id="con">
                    <li id="c1"><a href="tel:0123456789">Bống BBQ Garden:0123456789</a></li>
                    <li id="c2"><a href="tel:0828484949">Bống BBQ LakeView:0123456789</a></li>
                </ul>
            </li>
        </div>
        <div id="nav-right">
            <input type="text" id="search" placeholder="Tìm kiếm">
            <img id="img-search" src="filePicture/NicePng_search-icon-png_116167.png" alt="" height="20px" width="20px"
                usemap="#search">
            <map name="search">
                <area shape="rect" coords="0, 0, 22, 22" href="" alt="" id="timKiem" onclick="timKiem()">
            </map>
        </div>
    </div>
    <c:set var="ds" value="${requestScope.ds}"/>
    <c:set var="kh" value = "${sessionScope.dangnhap}"/>
</nav>
    <div class="container mt-5">
        <div class="jumbotron">
            <h6 class="display-4">Trang Đánh Giá</h6>
            <p class="lead">Hãy để lại ý kiến của bạn về chất lượng phục vụ và món ăn của chúng tôi!</p>

            <form action="danhgia" method="post">
                <div class="form-group">
                    <label for="comment">Bình luận của bạn:</label>
                    <textarea class="form-control" id="comment" rows="3" name="cmt" placeholder="Nhập bình luận"></textarea>
                </div>
                <c:if test="${not empty kh}">
                <input type="hidden" name="makh" value="${kh.makh }">
                <input type="hidden" name="hoten" value="${kh.hoten }">
                </c:if>
                <button type="submit" name="th" class="btn btn-primary">Gửi Đánh Giá</button>
            </form>
            <br>
            <a href="trangchuController" class="btn btn-outline-primary">Quay về trang chủ</a>
            <hr>
            <h6 class="mt-4">Các Bình Luận Khác:</h6>
            <ul class="list-group">
            <c:forEach var="s" items="${ds}">
                <li class="list-group-item" style="display: flex;">
                    <strong class="mr-2">${s.hoten} :</strong>
                    ${s.cmt}
                <c:if test="${not empty sessionScope.admin or not empty sessionScope.quanly}">
                <div class="ml-auto">
                	<a class="btn btn-danger" href="xoabinhluan?mabl=${s.macmt}">Xóa</a>
                </div>
                </c:if>
                </li>
                
            </c:forEach>
            </ul>
        </div>
    </div>
    

    <!-- Bootstrap JS và Popper.js -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>

</html>>