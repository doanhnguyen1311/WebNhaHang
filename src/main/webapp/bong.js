$(document).ready(function () {
            // phần này là của đăng nhập đăng ký
            // hover
            // -----
                $("#dk-a").click(function () {
                    $("#form-dk").fadeIn();
                    $("#form-dn").hide();
                });
                $("#dk-b").click(function () {
                $("#form-dn").fadeIn();
                $("#form-dk").hide();
            });
                $("#form-dk-x").click(function(){
                    $("#form-dk").fadeOut();
                });
                $("#dk-a-form").click(function(){
                    $("#form-dn").show();
                });
                $("#dn-a-form").click(function () {
                $("#form-dk").show();
            });
            $("#dn-a-form").click(function () {
                $("#form-dn").hide();
            });
                $("#dk-a-form").click(function () {
                    $("#form-dk").hide();
            });
            $("#form-dn-x").click(function () {
                $("#form-dn").fadeOut();
            });
            // ^ đăng nhập đăng kí phía trên
            // fadeIn thanh nav
            $("nav").fadeIn(1500);
            $("#logo").fadeOut(100);
            $("#logo").show(1500);
            $("#Home").fadeOut(100);
            $("#Home").show(1500);
            $("#Restaurant").fadeOut(100);
            $("#Restaurant").show(1500);
            $("#Order").fadeOut(100);
            $("#Order").show(1500);
            $("#Dichvu").fadeOut(100);
            $("#Dichvu").show(1500);
            $("#contact").fadeOut(100);
            $("#contact").show(1500);
            $("#search").fadeOut(100);
            $("#search").show(1500);
            $("#img-search").fadeOut(100);
            $("#img-search").show(1500);
            $("#anhdk").fadeOut(100);
            $("#anhdk").show(1500);
            $("#giohang").fadeOut(100);
            $("#giohang").show(1500);
            $("#top-gio").fadeOut(100);
            $("#top-gio").show(1800);
            $("#logout").fadeOut(100);
            $("#logout").show(1500);
    // phần trên là của fadeIn
            // phần ảnh nền
            let images = ["filePicture/bong2.jpg", "filePicture/bong3.jpg", "filePicture/bong5.jpg"];
            let currentImage = 0;
            let slideshow = $('#slideshow-image');

            function changeImage() {
                slideshow.show(function(){
                slideshow.attr('src', images[currentImage]).fadeIn(1000);
                currentImage = (currentImage + 1) % images.length;
                setTimeout(changeImage, 3000); // Thay đổi ảnh sau mỗi 2 giây
                });
            }
            changeImage();
            // ^ phía trên là phần ảnh nền
            // phần này là của thanh nav-left thay đổi li
            $("#Home").mouseenter(function(){
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
            $("#t1").mouseenter(function(){
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
 let nav = document.getElementById('nav-tong');
            let scrolledPast = false;
            let offset = 100; // Số pixel mà bạn muốn navbar thay đổi màu

            window.addEventListener("scroll", function () {
                let currentScroll = window.scrollY;

                if (currentScroll > offset && !scrolledPast) {
                    nav.style.backgroundColor = 'rgba(0, 0, 0, 0.2)';
                    scrolledPast = true;
                } else if (currentScroll <= offset && scrolledPast) {
                    nav.style.backgroundColor = 'rgba(0, 0, 0, 0.8)';
                    scrolledPast = false;
                }
            });
// Lấy thông tin về kích thước của màn hình trình duyệt
var width = window.innerWidth || document.documentElement.clientWidth || document.body.clientWidth;
var height = window.innerHeight || document.documentElement.clientHeight || document.body.clientHeight;

// Hiển thị thông tin
// alert("Chiều rộng màn hình: " + width + "\nChiều cao màn hình: " + height);
// if (width < 600) {
//   document.body.style.backgroundColor = "lightblue";
// } else if (width >= 600 && width < 1024) {
//   document.body.style.backgroundColor = "lightgreen";
// } else {
//   document.body.style.backgroundColor = "lightpink";
// }

        