<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="fileCSS/signup.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Đăng Ký - Bống BBQ</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="icon" href="filePicture/favicon.ico">
    <link href="https://getbootstrap.com/docs/5.3/assets/css/docs.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
    <script src="fileJavascript/jquery.min.js"></script>
    <!-- <script>
        var tinhThanhVN = [
            "An Giang", "Bà Rịa - Vũng Tàu", "Bạc Liêu", "Bắc Giang", "Bắc Kạn", "Bắc Ninh",
            "Bến Tre", "Bình Dương", "Bình Định", "Bình Phước", "Bình Thuận", "Cà Mau",
            "Cần Thơ", "Cao Bằng", "Đà Nẵng", "Đắk Lắk", "Đắk Nông", "Điện Biên",
            "Đồng Nai", "Đồng Tháp", "Gia Lai", "Hà Giang", "Hà Nam", "Hà Nội",
            "Hà Tĩnh", "Hải Dương", "Hải Phòng", "Hậu Giang", "Hòa Bình", "Hưng Yên",
            "Khánh Hòa", "Kiên Giang", "Kon Tum", "Lai Châu", "Lâm Đồng", "Lạng Sơn",
            "Lào Cai", "Long An", "Nam Định", "Nghệ An", "Ninh Bình", "Ninh Thuận",
            "Phú Thọ", "Phú Yên", "Quảng Bình", "Quảng Nam", "Quảng Ngãi", "Quảng Ninh",
            "Quảng Trị", "Sóc Trăng", "Sơn La", "Tây Ninh", "Thái Bình", "Thái Nguyên",
            "Thanh Hóa", "Thừa Thiên Huế", "Tiền Giang", "Trà Vinh", "Tuyên Quang",
            "Vĩnh Long", "Vĩnh Phúc", "Yên Bái"
        ];
        $(document).ready(function () {
            var selectElement = $("#tinhThanh");
            $.each(tinhThanhVN, function (index, value){
                selectElement.append($('<option></option>').attr('value', value).text(value));
            });
        });
    </script> -->
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
    form {
        background-color: rgb(247, 255, 229);
        padding: 30px;
        border: 1px solid gray;
        border-radius: 5px;
        width: auto;
        position: absolute;
        z-index: 5;
        top: 300px;
        left: 300px;
    }
</style>
<body>
    <nav>
        <div id="nav-tong">
            <div id="logo">
                <li class="logo"></li><a>Bống BBQ</a>
            </div>
            <div id="nav-left">
                <li id="Home"><a href="trangchuController">TRANG CHỦ</a></li>
                <li id="Restaurant"><a href="trangchuController">NHÀ HÀNG</a></li>
                <li id="Order"><a href="datbanController">ĐẶT MÓN</a></li>
                <li id="Dichvu"><a href="datbanController">DỊCH VỤ TIỆC</a>
                    <ul id="Dichvus">
                        <li id="s1"><a href="datbanController">Đặt tiệc sinh nhật</a></li>
                        <li id="s2"><a href="datbanController">Đặt bàn hẹn hò</a></li>
                        <li id="s3"><a href="datbanController">Đặt tiệc gia đình</a></li>
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
                <img id="img-search" src="filePicture/NicePng_search-icon-png_116167.png" alt="" height="20px"
                    width="20px" usemap="#search">
                <map name="search">
                    <area shape="rect" coords="0, 0, 22, 22" href="" alt="" id="timKiem" onclick="timKiem()">
                </map>
            </div>
        </div>
    </nav>
    <div id="nenduoi">
        <div id="tron">
            <div id="t1" align="center">
                <a href="datbanController">
                    <img src="filePicture/datban.webp" alt="">
                </a>
            </div>
            <div id="t2" align="center">
                <a href="datbanController"><img src="filePicture/datship.webp" alt=""></a>
            </div>
            <div id="t3" align="center">
                <a href="datbanController"><img src="filePicture/dattiec.webp" alt=""></a> <br>
            </div>
        </div>
        <div id="bot-tron">
            <p class="t1">Đặt bàn</p>
            <p class="t2">Đặt ship</p>
            <p class="t3">Đặt bàn gia đình</p>
        </div>
        <form action="dangkyController" method="post">
            <table>
                <tr>
                    <td>
            <div class="mb-3">
                <label for="exampleInputEmail1" class="form-label" style="text-transform: capitalize;">Tên Đăng Nhập<sup style="color: red;">*</sup></label>
                <input type="text" class="form-control" id="exampleInputEmail1" name="user-dk" aria-describedby="emailHelp" required>
            </div>
            </td>
            <td>
            <div class="mb-3">
                <label for="exampleInputPassword1" class="form-label">Mật Khẩu<sup style="color: red;">*</sup></label>
                <input type="password" class="form-control" id="exampleInputPassword1" name="pass-dk" required>
            </div>
            </td>
            <td>
                <div class="mb-3">
                    <label for="exampleInputPassword1" class="form-label">Xác Nhận Mật Khẩu<sup style="color: red;">*</sup></label>
                    <input type="password" class="form-control" id="exampleInputPassword1" name="pass-nl" required>
                </div>
            </td>
                </tr>
            <tr>
                <td>
            <div class="mb-3">
                <label for="exampleInputPassword1" class="form-label">Họ Và Tên<sup style="color: red;">*</sup></label>
                <input type="text" class="form-control" id="exampleInputPassword1" name="ho" required>
            </div>
            </td>
            <td>
            <div class="mb-3">
                <label for="exampleInputPassword1" class="form-label">Email<sup style="color: red;">*</sup></label>
                <input type="email" class="form-control" id="exampleInputPassword1" name="email" required>
            </div>
            </td>
            <td>
                <div class="mb-3">
                    <label for="exampleInputPassword1" class="form-label">Số Điện Thoại<sup style="color: red;">*</sup></label>
                    <input type="number" class="form-control" name="sdt" id="exampleInputPassword1">
                </div>
            </td>
            </tr>
            <td>
            <%if(request.getAttribute("loi")!=null){ %>
			<%=request.getAttribute("loi")%>
			<%} %>
			</td>
            <tr>
                <td>
            <div id="emailHelp" class="form-text">Bạn đã có tài khoản? <a href="dangnhapController">Đăng nhập?</a></div>
            </td>
            </tr>
            <tr>
                <td>
            <button type="submit" class="btn btn-primary">Đăng ký</button>
            </td>
            </tr>
            </table>
        </form>

</body>

</html>