<%@page import="bean.datbanbean"%>
<%@page import="bean.khachhangbean"%>
<%@page import="bean.giohangbean"%>
<%@page import="java.util.ArrayList"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Giỏ Hàng</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="icon" href="filePicture/favicon.ico">
    <link rel="stylesheet" href="fileCSS/menu.css">
    
    <style>
        nav{
            position: relative;
        }
        #Dichvus a:visited{
            color: black;
        }
        #sl p{
        	margin:0 30px;
        }
        #sl{
        	display:flex;
        }
        .input-group-prepend span{
        	margin-bottom: 20px;
        }
        .table td{
        	padding: 1.75rem;
        }
    </style>
    <script>
        function submitForm(event) {
            event.preventDefault();
        }
    </script>
</head>

<body>
<nav>
    <div id="nav-tong">
        <div id="logo">
            <li class="logo"></li><a>Bống BBQ</a>
        </div>
        <div id="nav-left">
            <li id="Home"><a href="trangchuController">TRANG CHỦ</a></li>
            <li id="Restaurant"><a href="menuController">MENU</a></li>
            <li id="Order"><a href="datbanController">ĐẶT MÓN</a></li>
            <li id="Dichvu"><a href="datbanController">DỊCH VỤ TIỆC</a>
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
            <img id="img-search" src="filePicture/NicePng_search-icon-png_116167.png" alt="" height="20px" width="20px"
                usemap="#search">
            <map name="search">
                <area shape="rect" coords="0, 0, 22, 22" href="" alt="" id="timKiem" onclick="timKiem()">
            </map>
        </div>
    </div>
</nav>
<c:choose>
<c:when test="${not empty sessionScope.ghds}">
<c:set var="ds" value="${sessionScope.ghds}"/>
     <div class="container mt-5">
        <h2 class="mb-4">Giỏ Hàng</h2>
		
        <table class="table">
            <thead>
                <tr>
                    <th scope="col">Ảnh</th>
                    <th scope="col">Tên Món</th>
                    <th scope="col">Giá</th>
                    <th scope="col">Số Lượng Mua</th>
                    <th scope="col"></th>
                </tr>
            </thead>
            <tbody>
            <c:if test="${not empty ds}">
            <c:forEach var="s" items="${ds}">
                <tr>
                    <td>
                        <img src="${s.anh}" alt="Ảnh Món" height="50px" width="50px">
                    </td>
                    <td>${s.tenmon}</td>
                    <td>${s.gia}<sup>đ</sup></td>
                    <td id="sl">
                    <div class="input-group-prepend">
      				<button class="btn btn-outline-secondary" type="submit" name="-"><span>-</span></button>
    				</div>
                    <p>${s.soluongmua}</p>
                    <div class="input-group-append">
      					<button class="btn btn-outline-secondary" type="submit" name="+">+</button>
    				</div></td>
                    
                    <td>
                        <a href="xoa?mamon=${s.mamon}" class="btn btn-danger btn-sm">Xóa</a>
                    </td>
                </tr>
              </c:forEach>
              </c:if>
            </tbody>
        </table>
        <c:set var="kh" value="${sessionScope.dangnhap}"/>
        <c:set var="db" value="${sessionScope.datban}"/>
<h4>Tổng cộng: ${(sessionScope.tong)}<sup>đ</sup></h4>
        <div class="text-right">
        <form action="datmonController" method="post">
        <input type="hidden" name="makh" value="${kh.makh}">
        <input type="hidden" name="hoten" value="${kh.hoten}">
        <input type="hidden" name="madatban" value="${db.madatban}">
        <input type="hidden" name="ngaydat" value="${db.ngay}">
        <input type="hidden" name="giodat" value="${db.gio}">
            <button class="btn btn-primary mt-3" type="submit" name="th">Đặt Món</button>
        </form>
        </div>
    </div>
</c:when>
<c:otherwise>
	<div class="jumbotron">
            <h1 class="display-4">Không có mặt hàng nào trong giỏ.</h1>
            <p class="lead">Hãy thêm một số mặt hàng vào giỏ để tiếp tục mua sắm.</p>
            ------->  <a href="menuController" class="btn btn-warning">Quay Lại Đặt Món</a>
            <hr class="my-4">
            <img src="filePicture/giohang.png" alt="Empty Cart" class="img-fluid" width="150px">
        </div>
</c:otherwise>
</c:choose>

    <!-- Bootstrap JS và Popper.js -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>

</html>