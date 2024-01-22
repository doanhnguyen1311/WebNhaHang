package Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.khachhangbean;
import bo.KhachHangBo;
import nl.captcha.Captcha;

/**
 * Servlet implementation class dangnhapController
 */
@WebServlet("/dangnhapController")
public class dangnhapController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public dangnhapController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		try {
			if(session.getAttribute("dem")==null) {
				session.setAttribute("dem", (int)0);
			}
			Captcha captcha = (Captcha) session.getAttribute(Captcha.NAME);
			request.setCharacterEncoding("utf-8");
			response.setCharacterEncoding("utf-8");
			String un = request.getParameter("username");
			String pass = request.getParameter("password");
			KhachHangBo bo = new KhachHangBo();
			String answer = request.getParameter("answer");
			khachhangbean kh = bo.DangNhap(un, pass);
			String loi = "";
			int dem = (int)session.getAttribute("dem");
			if(un!=null && pass!=null) {
			if(dem>=3) {
				if(kh!=null && captcha.isCorrect(answer)) {
					session.setAttribute("dangnhap", kh);
					response.sendRedirect("trangchuController");
				}
				else {
					if(answer==null || captcha!=null) {
					if(!captcha.isCorrect(answer)) {
						loi="<p style = \\\"color:red;font-size:13px;\\\">Sai captcha!</p>";
					}
					}
				}
			}
			if(dem<3) {
			if(kh!=null) {
				session.setAttribute("dangnhap", kh);
				session.removeAttribute("admin");
				session.removeAttribute("quanly");
				session.removeAttribute("nhanvien");
				response.sendRedirect("trangchuController");
			}
			else {
				if(un!=null&&pass!=null) {
				loi="<p style = \"color:red;font-size:13px;\">Tài khoản hoặc mật khẩu không đúng!</p>";
				}
				else {
				loi="";
				}
				dem++;
			}
			}
			}
			session.setAttribute("dem", dem);
			request.setAttribute("loi", loi);
			request.getRequestDispatcher("dangnhap.jsp").forward(request, response);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
