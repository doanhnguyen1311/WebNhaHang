<%@page import="bean.khachhangbean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Bống BBQ - Trang chủ</title>
    <link rel="icon" href="filePicture/favicon.ico">
    
    <script src="fileJavascript/jquery.min.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="fileCSS/bong.css">
    <script src="bong.js"></script>
    <style>
        .footer-flex{
            display: flex;
            margin-top: -52px;
            padding-top: 20px;
        }
        .footer-flex a:visited{
            color: black;
        }
        .footer-flex li {
            margin-left: 41px;
            margin-top: 7px;
            font-size: 11px;
            margin-bottom: 20px;
        }
    </style>
</head>
<c:set var="kh" value="${null}" />
    	<c:if test="${not empty sessionScope.dangnhap}">
    		<c:set var="kh" value="${sessionScope.dangnhap}"/>
    	</c:if>
<body style="background-color: whitesmoke;">
    <div id="anh">
        <img id="slideshow-image" src="">
    </div>
        <img src="filePicture/anhden.jpg" alt="" id="anhden">
    <nav>
        <div id="nav-tong" class="navbar">
            <div id="logo">
                <li class = "logo" ></li><a>Bống BBQ</a>
            </div>
            <div id="nav-left">
                <li id="Home"><a href="trangchuController">TRANG CHỦ</a></li>
                <li id="Restaurant"><a href="trangchuController">NHÀ HÀNG</a>
                </li>
                <li id="Order"><a href="menuController">MENU</a></li>
                <li id="Dichvu"><a href="">KHÁC</a>
                    <ul id="Dichvus">
                        <li id="s1"><a href="xembandatController">Xem Bàn Đã Đặt</a></li>
                        <li id="s2"><a href="thongtindatbanKH">Lịch Sử Đặt Bàn</a></li>
                        <c:if test="${not empty sessionScope.dangnhap}">
                        <li id="s3"><a href="datbanController?makh=${kh.makh}">Đặt Bàn</a></li>
                        </c:if>
                    </ul>
                </li>
                <li id="contact"><a href="">LIÊN HỆ</a>
                    <ul id="con">
                        <li id="c1"><a href="tel:0788459780">Bống BBQ Garden:0788459780</a></li>
                        <li id="c2"><a href="tel:0337528810">Bống BBQ LakeView:0337528810</a></li>
                    </ul>
                </li>
                
            </div>
            <div id="nav-right">
            </div>
        </div>
    </nav>
    <div id="logout">
        <a href="dangxuatController">
        <img src="filePicture/pngegg (1).png" title="Đăng xuất" height="23px">
        </a>
    </div>
    <c:choose>
    <c:when test="${not empty sessionScope.dangnhap}">
    <a id="anhdk" href="thongtinController?makh=${kh.makh}">
        <img src="filePicture/nguoidung.webp" title="Thông tin cá nhân" height="22px" style="margin-left: 60px;margin-top: 8px;">
    </a>
    </c:when>
    <c:otherwise>
    <a id="anhdk" href="dangnhapController">
        <img src="filePicture/nguoidung.webp" title="Đăng nhập/Đăng ký" height="22px" style="margin-left: 60px;margin-top: 8px;">
    </a>
    </c:otherwise>
    </c:choose>
    <a href="hienthigiohang" id="giohang">
        <img src="filePicture/giohang.webp" title="Giỏ Hàng" height="25px">
    </a>
<!--     <div id="top-gio">
        <p>0</p>
    </div> -->
<!--     <form action="" method="post" id="form-dk" align = "center">
        <img src="filePicture/x.png" alt="" height="20px" id="form-dk-x">
        <p style="font-family: 'Courier New', Courier, monospace; font-weight: bolder; letter-spacing: 2px;">ĐĂNG KÝ</p>
        <input placeholder="Nhập tên đăng nhập hoặc số điện thoại" type="text" name="un-dk" id=""> <br>
        <input placeholder="Nhập mật khẩu" type="password" name="pass-dk" id=""> <br>
        <input placeholder="Nhập lại mật khẩu" type="password" name="pass-nl" id=""> <br>
        <input placeholder="Nhập họ tên" type="text" name="hoten" id=""> <br>
        <input placeholder="Nhập email" type="email" name="email" id=""> <br>
        <p>Nếu đã có tài khoản? <a id="dk-a-form" style="cursor: pointer;">Đăng nhập</a></p>
        <input type="submit" name="th" id="" value="Đăng Ký">
    </form>
    <form action="" method="post" id="form-dn" align="center">
        <img src="filePicture/x.png" alt="" height="20px" id="form-dn-x">
        <p style="font-family: 'Courier New', Courier, monospace; font-weight: bolder; letter-spacing: 2px;">ĐĂNG NHẬP</p>
        <input placeholder="Nhập tên đăng nhập hoặc số điện thoại" type="text" name="un-dn" id=""> <br>
        <input placeholder="Nhập mật khẩu" type="password" name="pass-dn" id=""> <br>
        <p>Nếu chưa có tài khoản? <a id="dn-a-form" style="cursor: pointer;">Đăng ký</a></p>
        <input type="submit" name="th" id="" value="Đăng Nhập">
    </form> -->
    <p id="text-bong-big">BỐNG BBQ</p>
    <!-- <div id = "tab"> -->
        <!-- <table>
        <tr>
        <td>
        <div id = "left">
            <img src="filePicture/bong.jpg" id="anh-left" usemap="#left">
            <map name="left">
                <area shape="rect" coords="0,0,300,300" href="https://facebook.com/doanhn2k3" alt=""
                    title="Dẫn tới trang của Nguyễn Văn Doanh">
            </map>
            <p style="text-shadow:2px 2px 4px rgba(0, 0, 0, 0.5); font-size: 21px;"><b>Đặt bàn</b></p>
            <p style="font-size: 13px; line-height: 1px; word-spacing: 2px; margin-top: 10px;">Đặt bàn trực tuyến cùng Bống BBQ</p>
        </div>
        </td>
        </tr>
        </table> -->
        <!-- <div id="center">
        <img src="filePicture/nen.jpg" id = "anh-center" alt="" usemap="#center">
        <p style="text-shadow:2px 2px 4px rgba(0, 0, 0, 0.5); font-size: 21px;"><b>Menu</b></p>
        <p style="font-size: 13px; line-height: 13px;word-spacing: 2px;">Menu đa dạng, vô vàn món ăn tại nhà hàng của chúng tôi</p>
    <map name="center">
        <area shape="rect" coords="0, 0, 300, 300" href="https://facebook.com/thuydung.vi.7543" alt=""
            title="Dẫn tới trang của Vi Thùy Dung">
    </map>
    </div>
        <div id="right">
            <img src="filePicture/bong2.jpg" id="anh-right" alt="" usemap="#right">
            <p style="text-shadow:2px 2px 4px rgba(0, 0, 0, 0.5); font-size: 21px;"><b>Cơ sở</b></p>
            <p style="font-size: 13px; line-height: 13px;word-spacing: 2px; ">Chúng tôi có 2 cơ sở để bạn lựa chọn</p>
            <map name="right">
            <area shape="rect" coords="0, 0, 300, 300" href="https://chat.zalo.me" alt="" title="Dẫn tới trang của Zalo">
        </map>
        </div> -->
    <!-- </div> -->
    <!-- <div id = "footer">
        <p>Copyright@ by Nguyễn Văn Doanh
        </p> <br>
        <p>Lập trình viên Front-end</p> <br>
        <p>Địa chỉ:</p> <br>
        <p>Cơ sở 1: Số 2 Kiệt 15, Tố Hữu, Tp.Huế</p> <br>
        <p>Cơ sở 2: Số 68 Đoàn Thị Điểm, Thuận Thành, TP.Huế</p>
    </div> -->
    <div id="nenduoi">
    <div id="tron">
        <div id="t1" align = "center">
            <a href="">
            <img src="filePicture/datban.webp" alt="">
            </a>
        </div>
        <div id="t2" align = "center">
            <a href=""><img src="filePicture/datship.webp" alt=""></a>
        </div>
        <div id="t3" align = "center">
            <a href=""><img src="filePicture/dattiec.webp" alt=""></a> <br>
        </div>
    </div>
    <div id="bot-tron">
        <p class="t1">Đặt bàn</p>
        <p class="t2">Đặt ship</p>
        <p class="t3">Đặt tiệc tại gia</p>
    </div>
    <div align = "center">
        <img src="filePicture/butlong.webp" alt="" class="butlong">
    </div>
    <div id="cauhoi" align = "center">
        Hôm nay ăn gì?
    </div>
    <p>Nếu bạn chưa biết hôm nay ăn gì thì hãy để chúng tôi giới thiệu cho bạn: Bạn hãy đến với chúng tôi, <br> với thực đơn có gần 100 món khác nhau, đầy đủ ngũ vị nhất định sẽ làm bạn hài lòng</p>
    <div id = "gioithieu">
        <img src="filePicture/bbq.png">
    </div>
    <div id="dktv">
        <img src="filePicture/bbq1.webp" alt="">
    </div>
    <p id="gttext">Bống BBQ, quán chúng tôi mang một hương vị rất khác lạ, là tín đồ của món nướng tôi đã lập nên quán nướng BBQ này với mong muốn được cùng các bạn trải nghiệm những cái mới lạ, những món ăn với hương vị tuyệt vời nhất của chúng tôi mang lại</p>
    <div id="sale">
    <p id="sale-p1">Giờ Săn Sale(Sắp diễn ra)</p>
    <div id="flex-sale">
    <input type="text" name="gio" id="gio" readonly value="00"> <p>:</p>
    <input type="text" name="phut" id="phut" readonly value = "00"> <p>:</p>
    <input type="text" name="giay" id="giay" readonly value = "00">
    </div>
    <p id="sale-p2">Hãy chờ đón mã giảm giá mới của quán nhé!</p>
    </div>
    <!-- đăng kí thành viên -->
    <div id="thanhvien">
        <form action="" method="post" id="dk-tv" align = "center">
            <p>Đăng Ký Thành Viên</p>
            <input placeholder="Nhập Tên Tài Khoản" type="text" name="" id=""> <br>
            <input placeholder="Nhập Họ và Họ Đệm" type="text" name="" id=""><br>
            <input placeholder="Nhập Tên" type="text" name="" id=""><br>
            <input placeholder="Nhập Mật Khẩu" type="password" name="" id=""><br>
            <input placeholder="Nhập Số Điện Thoại" type="number" name="" id=""> <br>
            <input type="submit" name="" id="" value="Đăng Ký">
        </form>
        <form action="" method="post" id="check-tv" align = "center">
            <li id="tieude-tv">Check Thẻ Thành Viên</li> <br>
            <input placeholder="Nhập Tên Tài Khoản" type="text" name="" id=""> <br>
            <input placeholder="Nhập Mật Khẩu" type="password" name="" id=""> <br>
            <input type="submit" name="" id="" value="Kiểm Tra">
            <p>Tên Tài Khoản: </p> <br>
            <p>Họ Và Tên: </p> <br>
            <p>Số Điện Thoại: </p> <br>
            <p>Số Điểm Đã Tích Lũy: </p>
        </form>
    </div>
    <footer>
        <div class="footer-flex">
        <div>
        <img src="filePicture/logo.png" alt="Product Image" width="150px" height="150px">
        </div>
        <div>
            <li class=""><a href="trangdanhgia" class="btn-link">Đánh giá về quán chúng tôi</a></li>
            <li class=""><a href="blogtintuc" class="btn-link">Blog-Tin Tức</a></li>
            <li class=""><a href="chinhsachbaomat" class="btn-link">Chính sách bảo mật</a></li>
        </div>
        </div>
        <p>Địa chỉ:</p>
        <p>Cơ sở 1: Bống BBQ Garden: số 2 kiệt 15 Tố Hữu, Tp.Huế</p>
        <p>Cơ sở 2: Bống BBQ LakeView: số 68 Đoàn Thị Điểm, Tp.Huế</p>
        <p>Hotline: 0969916156 - 098 3518269</p>
        <p>Ngày cấp: 19/05/2020</p>
        <p>Nơi cấp: Sở kế hoạch và Đầu tư thành phố Huế</p>
    </footer>
</div>

</body>
</html>
