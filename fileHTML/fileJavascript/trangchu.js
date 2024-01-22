document.addEventListener("DOMContentLoaded", function () {
    // Kiểm tra trạng thái quyền trên máy khách
    const isAdmin = sessionStorage.getItem('isAdmin');
    const adminButton = document.getElementById('adminButton');
    const Guest = sessionStorage.getItem('isGuest');
    let dn = document.getElementById('sign-in');
    let dk = document.getElementById('sign-up');
    let tinNhan = document.getElementById('message');
    let exitTinNhan = document.getElementById('exit-mess');
    if (isAdmin === 'true' || Guest === 'true') {
        dn.innerHTML = '<a href = "dangxuat.html">ĐĂNG XUẤT</a>';
        dk.innerHTML = '<img src = "filePicture/tinnhan.png" id="mess">';
        dk.addEventListener("click", function () {
            tinNhan.style.visibility = 'visible';
        });
        exitTinNhan.addEventListener("click", function () {
            tinNhan.style.visibility = 'hidden';
        });
    }
    else {
        dn.innerHTML = '<a href="dangnhapbong.html">ĐĂNG NHẬP</a>';
        dk.style.visibility = "visible";
    }
    if (isAdmin === 'true') {
        // Hiển thị nút cho admin
        adminButton.style.visibility = 'visible';
    } else {
        // Ẩn nút nếu không phải admin
        adminButton.style.visibility = 'hidden';
    }
    const tab = document.getElementById('tab-tim');
    const gt = document.getElementById('gioiThieu');
    const exitGioiThieu = document.getElementById('exit-gt');
    tab.addEventListener("click", function () {
        gt.style.visibility = 'visible';
        gt.style.transform = 'translateY(100px)';
        gt.style.opacity = '0.7';
    });
    exitGioiThieu.addEventListener("click", function () {
        gt.style.visibility = 'hidden';
        
    });
});


