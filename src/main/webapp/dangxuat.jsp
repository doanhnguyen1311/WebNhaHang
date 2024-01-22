<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%session.removeAttribute("dangnhap"); 
session.removeAttribute("quanly");
session.removeAttribute("nhanvien");
session.removeAttribute("admin");
session.removeAttribute("datban");
session.removeAttribute("gh");
session.removeAttribute("ten");
session.removeAttribute("quyen");
response.sendRedirect("trangchuController");
%>
</body>
</html>