package bo;

import java.util.ArrayList;

import bean.baivietbean;
import bean.binhluanbean;
import bean.datbanbean;
import bean.datmonbean;
import bean.khachhangbean;
import dao.KhachHangDao;

public class KhachHangBo {
	KhachHangDao kh = new KhachHangDao();
	public boolean DatBan(String hoten, int sdt, String ngay, String gio, int soluong, long makh) throws Exception{
		return kh.DatBan(hoten, sdt, ngay, gio, soluong, makh);
	}
	public boolean DangKy(String un, String pass, String email, String hoten, int sdt) throws Exception {
		return kh.DangKy(un, pass, email, hoten, sdt);
	}
	public khachhangbean DangNhap(String un, String pass) throws Exception{
		return kh.DangNhap(un, pass);
	}
	public khachhangbean KiemTraKH(String un) throws Exception{
		return kh.KiemTraKH(un);
	}
	public khachhangbean getthongtin(long makh) throws Exception{
		return kh.getthongtin(makh);
	}
	public boolean capnhatthongtin(long makh, String hoten, String Email, int sdt) throws Exception{
		return kh.capnhatthongtin(makh, hoten, Email, sdt);
	}
	public boolean binhluan(String cmt, long makh, String hoten) throws Exception{
		return kh.binhluan(cmt, makh, hoten);
	}
	public ArrayList<binhluanbean> getbinhluan() throws Exception{
		return kh.getbinhluan();
	}
	public datbanbean getdatban(long makh, String ngay, String gio) throws Exception{
		return kh.getdatban(makh, ngay, gio);
	}
	public ArrayList<datmonbean> getdatbanMonAn(long madatban, String ngay, String gio, long makh) throws Exception{
		return kh.getdatbanMonAn(madatban, ngay, gio, makh);
	}
	public ArrayList<datmonbean> getlichsudatban(long madatban, long makh) throws Exception{
		return kh.getlichsudatban(madatban, makh);
	}
	public ArrayList<datmonbean> kiemtrabandadat(long makh) throws Exception{
		return kh.kiemtrabandadat(makh);
	}
	public ArrayList<datbanbean> danhsachdatban(long makh) throws Exception{
		return kh.danhsachdatban(makh);
	}
	public boolean DatMon(long madatban, String mamon, String tenmon, int soluong, int gia, String anh, String tenkh, String ngaydat, String giodat, long makh, long macthd) throws Exception{
		return kh.DatMon(madatban, mamon, tenmon, soluong, gia, anh, tenkh, ngaydat, giodat, makh, macthd);
	}
	public boolean LichSuMuaHang(long madatban, String mamon, String tenmon, int soluong, int gia, String anh, String tenkh, String ngaydat, String giodat, long makh, long macthd) throws Exception{
		return kh.LichSuMuaHang(madatban, mamon, tenmon, soluong, gia, anh, tenkh, ngaydat, giodat, makh, macthd);
	}
	public datmonbean getdatmon(long madatban, String ngay, String gio, long makh) throws Exception{
		return kh.getdatmon(madatban, ngay, gio, makh);
	}
	public boolean XoaBanDat(long makh) throws Exception{
		return kh.XoaBanDat(makh);
	}
	public ArrayList<datmonbean> xembandat(long makh) throws Exception{
		return kh.xembandat(makh);
	}
	public ArrayList<baivietbean> getbaiviet() throws Exception{
		return kh.getbaiviet();
	}
	public baivietbean docbaiviet(long mabaiviet) throws Exception{
		return kh.docbaiviet(mabaiviet);
	}
	public ArrayList<baivietbean> getbaivietmoi() throws Exception{
		return kh.getbaivietmoi();
	}
}
