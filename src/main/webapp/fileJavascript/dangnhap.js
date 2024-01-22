function checkAdmin() {
    let un = document.getElementById('un').value;
    let pass = document.getElementById('pass').value;

    // Kiểm tra xem tên người dùng và mật khẩu có rỗng hay không
    if (un !== "" && pass !== "") {
        // Tạo đối tượng lưu trữ danh sách các tài khoản
        const Admin = {
            "adminBong": "123",
            // Thêm các tài khoản khác nếu cần
        };
        const Guest = {
            "abc": "123",
            "doanh":"12345",
        };
        if (Guest.hasOwnProperty(un) && Guest[un] === pass) {
            sessionStorage.setItem('isAdmin', 'false');
            sessionStorage.setItem('isGuest', 'true');
            window.location.href = "bongbbq.html";
        }
        // Kiểm tra xem tên người dùng có tồn tại trong danh sách và mật khẩu đúng
        else if (Admin.hasOwnProperty(un) && Admin[un] === pass) {
            // Lưu trạng thái quyền admin vào Local Storage
            sessionStorage.setItem('isAdmin', 'true');
            // Chuyển hướng đến trang chủ hoặc thực hiện các hành động khác sau khi đăng nhập
            window.location.href = "bongbbq.html";
        } else {
            alert("Tài khoản hoặc mật khẩu không đúng!");
        }
    } else {
        alert("Vui lòng nhập tên người dùng và mật khẩu.");
    }
}