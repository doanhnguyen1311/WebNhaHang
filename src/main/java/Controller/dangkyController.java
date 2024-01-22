package Controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.khachhangbean;
import bo.KhachHangBo;
import dao.KhachHangDao;

/**
 * Servlet implementation class dangkyController
 */
@WebServlet("/dangkyController")
public class dangkyController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public dangkyController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Hiển thị trang đăng ký
        RequestDispatcher rd = request.getRequestDispatcher("dangky.jsp");
        rd.forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Xử lý yêu cầu đăng ký
    	request.setCharacterEncoding("utf-8");
    	response.setCharacterEncoding("utf-8");
        String username = request.getParameter("user-dk");
        String password = request.getParameter("pass-dk");
        String confirmPassword = request.getParameter("pass-nl");
        String hoten = request.getParameter("ho");
        String email = request.getParameter("email");
        String sdttam = request.getParameter("sdt");
        int sdt = 0;
        if(sdttam!=null) {
        	sdt = Integer.parseInt(sdttam);
        }
        else {
        	sdt=0;
        }
        String loi = "";
        try {
        if (password.equals(confirmPassword)) {
            KhachHangBo khbo = new KhachHangBo();
            khachhangbean kh = khbo.KiemTraKH(username);
            boolean dangky = khbo.DangKy(username, password,email, hoten, sdt);
                
                if (dangky) { 
                	if(kh==null){
                    loi = "<p style=\"color:green\">Đăng ký thành công. <a href=\"dangnhapController\">Đăng nhập</a></p>";
                	}
                    else {
                    	loi="<p style=\"color:red\">Tài khoản đã tồn tại!</p>";
                    }
                } else {
                    loi="<p style=\"color:green\">Đăng ký không thành công!</p>";
                	if(username==null) {
                		loi="";
                	}
                }
                
        }else {
            loi="<p style=\\\"color:green\\\">Mật khẩu không trùng khớp!</p>";
        }
        request.setAttribute("loi", loi);
        request.getRequestDispatcher("dangky.jsp").forward(request, response);
        } catch (Exception e) {
                e.printStackTrace();
            }
    }

}
