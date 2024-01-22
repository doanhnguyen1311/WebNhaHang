<%@page import="bean.khachhangbean"%>
<%@page import="bean.monanbean"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page import="bean.loaibean"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Menu - Bống BBQ</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://getbootstrap.com/docs/5.3/assets/css/docs.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
    <link rel="icon" href="filePicture/favicon.ico">
    <script src="fileJavascript/jquery.min.js"></script>
    <link rel="stylesheet" href="fileCSS/menu.css">
    <script>
        $(document).ready(function () {
            // phần này là của đăng nhập đăng ký
            // phần này là của thanh nav-left thay đổi li
            $("#Home").mouseenter(function () {
                $("#Home a").css("color", "black");
                $("#Home").css("background-color", "white");
            });
            $("#Home").mouseleave(function () {
                $("#Home a").css("color", "");
                $("#Home").css("background-color", "");
            });
            $("#Restaurant").mouseenter(function () {
                $("#Restaurant a").css("color", "black");
                $("#Restaurant").css("background-color", "white");
            });
            $("#Restaurant").mouseleave(function () {
                $("#Restaurant a").css("color", "");
                $("#Restaurant").css("background-color", "");
            });
            $("#Order").mouseenter(function () {
                $("#Order a").css("color", "black");
                $("#Order").css("background-color", "white");
            });
            $("#Order").mouseleave(function () {
                $("#Order a").css("color", "");
                $("#Order").css("background-color", "");
            });
            $("#Dichvu").mouseenter(function () {
                $("#Dichvu a").css("color", "black");
                $("#Dichvu").css("background-color", "white");
            });
            $("#Dichvu").mouseleave(function () {
                $("#Dichvu a").css("color", "");
                $("#Dichvu").css("background-color", "");
            });
            $("#contact").mouseenter(function () {
                $("#contact a").css("color", "black");
                $("#contact").css("background-color", "white");
            });
            $("#contact").mouseleave(function () {
                $("#contact a").css("color", "");
                $("#contact").css("background-color", "");
            });
            // phần này của Dichvus{
            $("#s1").mouseenter(function () {
                $("#s1 a").css("color", "white");
            });
            $("#s1").mouseleave(function () {
                $("#s1 a").css("color", "");
            });
            $("#s2").mouseenter(function () {
                $("#s2 a").css("color", "white");
            });
            $("#s2").mouseleave(function () {
                $("#s2 a").css("color", "");
            });
            $("#s3").mouseenter(function () {
                $("#s3 a").css("color", "white");
            });
            $("#s3").mouseleave(function () {
                $("#s3 a").css("color", "");
            });
            // }
            // Phần này là của Contact{
            $("#c1").mouseenter(function () {
                $("#c1 a").css("color", "white");
            });
            $("#c1").mouseleave(function () {
                $("#c1 a").css("color", "");
            });
            $("#c2").mouseenter(function () {
                $("#c2 a").css("color", "white");
            });
            $("#c2").mouseleave(function () {
                $("#c2 a").css("color", "");
            });
            // }
            // này là phần 3 ô tròn xanh
            $("#t1").mouseenter(function () {
                $("#t1 img").css("width", "70px");
            });
            $("#t1").mouseleave(function () {
                $("#t1 img").css("width", "");
            });
            $("#t2").mouseenter(function () {
                $("#t2 img").css("width", "70px");
            });
            $("#t2").mouseleave(function () {
                $("#t2 img").css("width", "");
            });
            $("#t3").mouseenter(function () {
                $("#t3 img").css("width", "70px");
            });
            $("#t3").mouseleave(function () {
                $("#t3 img").css("width", "");
            });
        });
    </script>
</head>
<style>
    a {
        text-decoration: none;
    }
    .table>:not(caption)>*>* {
    padding: 0.5rem 0.5rem;
    color: var(--bs-table-color-state,var(--bs-table-color-type,var(--bs-table-color)));
    background-color: transparent;
    border-bottom: 1px groove gray;
    box-shadow: inset 0 0 0 9999px var(--bs-table-bg-state,var(--bs-table-bg-type,var(--bs-table-accent-bg)));
}
    .table td{
        position: relative;
    }
    .table td p{
        position: absolute;
        top: 0;
        margin-left: 10px;
    }
    .tb td{
        margin-left: 20px;
    }
    .product-image {
            width: 150px;
            height: 150px;
            object-fit: cover;
            border-radius: 8px;
        }
    .product-name {
            width: 200px;
            margin-top: 10px;
            overflow: visible;
            text-overflow: ellipsis;
            word-wrap: break-word; /* hoặc overflow-wrap: break-word; */
        }
    .col-md-4{
        position: relative;
        height: auto;
        padding: 80px 20px;
        padding-top: 0;
        margin-top: 10px;
    }
    .col-md-4 p{
        position: absolute;
        bottom: 20px;
        margin: 30px 0;
    }
    .col-md-4 button{
        position: absolute;
        bottom: 0;
    }
    .pagination {
            display: flex;
            justify-content: center;
            margin-top: 20px;
            margin-bottom: 300px;
        }

        .page-item {
            margin: 0 5px;
        }
    footer {
            margin-top: 1000px;
            background-color: transparent;
            color: black;
            text-align: left; /* Thay đổi text-align từ center sang left */
            padding: 20px;
            width: 100%;
            position: absolute; /* Thêm thuộc tính position và giữ nguyên bottom: 0 */
            bottom: 0;
    }
    .page-link::selection{
        background-color: blue;
    }
    .sidebar {
      left: 0;
      height: 100%;
      width: 250px;
      padding-top: 56px; /* Đảm bảo nội dung không bị che phủ bởi thanh navbar */
      background-color: transparent; /* Màu nền sidebar */
    }
    .container-fluid{
        margin-top: 50px;
        left: 0;
    }
    .sidebar a {
      padding: 10px;
      text-decoration: none;
      color: #495057; /* Màu chữ của các mục sidebar */
      display: block;
    }
    .flex-center{
        display: flex;
        height: auto;
    }
    .flex-1{
        width: 300px;
    }
</style>

<body class="float-start">
    <nav>
        <div id="nav-tong">
            <div id="logo">
                <li class="logo"></li><a>Bống BBQ</a>
            </div>
            <c:set var="kh" value="${sessionScope.dangnhap}"/>
            <div id="nav-left">
                <li id="Home"><a href="trangchuController">TRANG CHỦ</a></li>
                <li id="Restaurant"><a href="hienthigiohang">GIỎ HÀNG</a></li>
                <c:if test="${not empty kh}">
                <li id="Order"><a href="datbanController?makh=${kh.makh}">ĐẶT BÀN</a></li>
                </c:if>
                <li id="Dichvu"><a href="trangchuController">DỊCH VỤ TIỆC</a>
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
                <img id="img-search" src="filePicture/NicePng_search-icon-png_116167.png" alt="" height="20px" width="20px" usemap="#search">
                <map name="search">
                    <area shape="rect" coords="0, 0, 22, 22" href="" alt="" id="timKiem" onclick="timKiem()">
                </map>
            </div>
        </div>
    </nav>
    <div id="nenduoi">
        <div id="tron">
            <div id="t1" align="center">
                <a href="">
                    <img src="filePicture/datban.webp" alt="">
                </a>
            </div>
            <div id="t2" align="center">
                <a href=""><img src="filePicture/datship.webp" alt=""></a>
            </div>
            <div id="t3" align="center">
                <a href=""><img src="filePicture/dattiec.webp" alt=""></a> <br>
            </div>
        </div>
        <div id="bot-tron">
            <p class="t1">Đặt bàn</p>
            <p class="t2">Đặt ship</p>
            <p class="t3">Đặt tiệc tại gia</p>
        </div>
        <hr>
        <p align = "center" style="font-size: large; font-weight: 500;">Tất cả sản phẩm</p> 
        <p style="font-weight: lighter;">Trang chủ / Loại món:</p>
        <hr>
    <hr>
        <!-- <table class="table">
            <tr class="monan">
                <td>
                    <table>
                        <tr>
                            <td>
                                <img src="filePicture/bachibocuonthanhcuanuong.jpg" alt="" id="monanc1" height="200px" width="250px"></td>
                            <td>
                                <p class="tenmon">Ba chỉ bò cuộn nấm nướng bơ</p>
                            </td>
                            <td>
                                <p class="gia">100<sup>đ</sup></p>
                            </td>
                            <td id="muasam">
                            <a href=""><img src="filePicture/muasam2.png" alt="" height="20px" style="margin-right: 10px;">Order</a>
                            </td>
                        </tr>
                    </table>
                </td>
                <td>
                    <table>
                        <tr>
                            <td>
                                <img src="filePicture/bachibocuonthanhcuanuong.jpg" alt="" id="monanc1" height="200px" width="250px">
                            </td>
                            <td>
                                <p class="tenmon">Món 1</p>
                            </td>
                            <td>
                                <p class="gia">
                                    100<sup>đ</sup></p>
                            </td>
                            <td id="muasam">
                                <a href=""><img src="filePicture/muasam2.png" alt="" height="20px" style="margin-right: 10px;">Order</a>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr class="monan">
                <td>
                    <table>
                        <tr>
                            <td>
                                <img src="filePicture/bachibocuonthanhcuanuong.jpg" alt="" id="monanc1" height="200px"
                                    width="250px">
                            </td>
                            <td>
                                <p class="tenmon">Ba chỉ bò cuộn nấm nướng bơ</p>
                            </td>
                            <td>
                                <p class="gia">100<sup>đ</sup></p>
                            </td>
                            <td id="muasam">
                                <a href=""><img src="filePicture/muasam2.png" alt="" height="20px"
                                        style="margin-right: 10px;">Order</a>
                            </td>
                        </tr>
                    </table>
                </td>
                <td>
                    <table>
                        <tr>
                            <td>
                                <img src="filePicture/bachibocuonthanhcuanuong.jpg" alt="" id="monanc1" height="200px"
                                    width="250px">
                            </td>
                            <td>
                                <p class="tenmon">Món 1</p>
                            </td>
                            <td>
                                <p class="gia">
                                    100<sup>đ</sup></p>
                            </td>
                            <td id="muasam">
                                <a href=""><img src="filePicture/muasam2.png" alt="" height="20px"
                                        style="margin-right: 10px;">Order</a>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table> -->
    <div class="flex-center">
        <div class="flex-1">
        <div class="container-fluid">
            <div class="row">
                <!-- Sidebar -->
                <c:set var="dsloai" value="${sessionScope.dsloai}"/>
                <c:forEach var="s" items="${dsloai}">
                    <div style="margin-left: 20px; display: flex;" id="lc">
                        <a href="menuController?maloai=${s.maloai}">
                            <p id="luachon">${s.tenloai}</p>
                        </a>
                    </div>
                </c:forEach>
            </div>
        </div>
        </div>
        <div class="flex-2">
        <div class="container mt-3 input-group">
            <div class="input-group mb-3">
                <input type="text" style="background-color: transparent;" class="form-control" placeholder="Tìm kiếm món ăn">
                <div class="input-group-append">
                    <button class="btn btn-outline-success" id="searchBtn" type="button">Tìm Kiếm</button>
                </div>
            </div>
        </div>
        <div class="container">
            <div class="row" id="menu">
            <%ArrayList<monanbean> ds = (ArrayList<monanbean>)session.getAttribute("ds");
                int n = ds.size();
                for(int i=0;i<n;i++){
                	monanbean s = ds.get(i);
                %>
                <div class="col-md-4">
                
                    <div class="product-card">
                        <img src="<%=s.getAnh()%>" alt="Product Image" class="product-image">
                        <h6 class="product-name "><%=s.getTenmon() %></h6>
                        <p><%=s.getGia() %><span><sup>đ</sup></span></p>
                        <form action="giohang" method="post">
                        <input type="hidden" name = "mamon" value="<%=s.getMamon()%>">
                        <input type="hidden" name = "anh" value="<%=s.getAnh()%>">
                        <input type="hidden" name = "tenmon" value="<%=s.getTenmon()%>">
                        <input type="hidden" name = "gia" value="<%=s.getGia()%>">
                        <button id="link" type="submit" class="btn btn-outline-primary"><img src="filePicture/muasam2.png" alt="" height="20px" style="margin-right: 10px;">Thêm vào giỏ hàng</button>
                        </form>
                    </div>
                </div>
                <%i++;if(i<n){s = ds.get(i); %>
                <div class="col-md-4">
                    <div class="product-card">
                        <img src="<%=s.getAnh()%>" alt="Product Image" class="product-image">
                        <h6 class="product-name "><%=s.getTenmon() %></h6>
                        <p><%=s.getGia() %><span><sup>đ</sup></span></p>
                        <form action="giohang" method="post">
                        <input type="hidden" name = "mamon" value="<%=s.getMamon()%>">
                        <input type="hidden" name = "anh" value="<%=s.getAnh()%>">
                        <input type="hidden" name = "tenmon" value="<%=s.getTenmon()%>">
                        <input type="hidden" name = "gia" value="<%=s.getGia()%>">
                        <button id="link" type="submit" class="btn btn-outline-primary"><img src="filePicture/muasam2.png" alt="" height="20px" style="margin-right: 10px;">Thêm vào giỏ hàng</button>
                        </form>
                    </div>
                </div>
                <%} %>
                <%i++;if(i<n){s = ds.get(i);%>
                <div class="col-md-4">
                    <div class="product-card">
                        <img src="<%=s.getAnh()%>" alt="Product Image" class="product-image">
                        <h6 class="product-name "><%=s.getTenmon() %></h6>
                        <p><%=s.getGia() %><span><sup>đ</sup></span></p>
						<form action="giohang" method="post">
                        <input type="hidden" name = "mamon" value="<%=s.getMamon()%>">
                        <input type="hidden" name = "anh" value="<%=s.getAnh()%>">
                        <input type="hidden" name = "tenmon" value="<%=s.getTenmon()%>">
                        <input type="hidden" name = "gia" value="<%=s.getGia()%>">
                        <button id="link" type="submit" class="btn btn-outline-primary"><img src="filePicture/muasam2.png" alt="" height="20px" style="margin-right: 10px;">Thêm vào giỏ hàng</button>
                        </form>                    
                     </div>
                </div>
                <%} %>
                <%} %>
            </div>
        </div>
        </div>
    </div>
        <div aria-label="Page navigation">
            <ul class="pagination">
            <c:forEach var="i" begin="1" end="18">
                <li class="page-item sr-only"><a class="page-link" href="menuController?trang=${i}">${i}</a></li>
            </c:forEach>
            </ul>
        </div>
        <footer>
                <img src="filePicture/logo.png" alt="Product Image" width="150px" height="150px">
                <p>Địa chỉ:</p>
                <p>Cơ sở 1: Bống BBQ Garden: số 2 kiệt 15 Tố Hữu, Tp.Huế</p>
                <p>Cơ sở 2: Bống BBQ LakeView: số 68 Đoàn Thị Điểm, Tp.Huế</p>
                <p>Hotline: 0969916156 - 098 3518269</p>
                <p>Ngày cấp: 19/05/2020</p>
                <p>Nơi cấp: Sở kế hoạch và Đầu tư thành phố Huế</p>
        </footer>
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
</body>

</html>