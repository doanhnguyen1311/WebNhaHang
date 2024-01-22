package bo;

import java.util.ArrayList;

import bean.AdminBean;
import bean.baivietbean;
import bean.datbanbean;
import bean.datmonbean;
import bean.khachhangbean;
import bean.loaibean;
import bean.monanbean;
import dao.AdminDao;

public class AdminBo {
	AdminDao dao = new AdminDao();
	public boolean DangKyNhanVien(String hoten,String un, String pass, String quyen, int luong) throws Exception{
		return dao.DangKyNhanVien(hoten, un, pass, quyen, luong);
	}
	public AdminBean DangNhapNhanVien(String un, String pass) throws Exception{
		return dao.DangNhapNhanVien(un, pass);
	}
	public AdminBean KiemTraDangKyAdmin(String un) throws Exception{
		return dao.KiemTraDangKyAdmin(un);
	}
	public AdminBean DangNhapQuanLy(String un, String pass) throws Exception{
		return dao.DangNhapQuanLy(un, pass);
	}
	public AdminBean DangNhapAdmin(String un, String pass) throws Exception{
		return dao.DangNhapAdmin(un, pass);
	}
	public boolean ThangChucNhanVien(long manv) throws Exception{
		return dao.ThangChucNhanVien(manv);
	}
	public boolean HaChucNhanVien(long manv) throws Exception{
		return dao.HaChucNhanVien(manv);
	}
	public ArrayList<AdminBean> getnhanvien() throws Exception{
		return dao.getnhanvien();
	}
	public boolean xoanhanvien(long manv, String quyen) throws Exception{
		return dao.xoanhanvien(manv,quyen);
	}
	public ArrayList<AdminBean> getquanly() throws Exception{
		return dao.getquanly();
	}
	public ArrayList<baivietbean> getbaiviet() throws Exception{
		return dao.getbaiviet();
	}
	public boolean ThemBaiViet(String tieude, String noidung) throws Exception{
		return dao.ThemBaiViet(tieude, noidung);
	}
	public baivietbean docbaiviet(long mabaiviet) throws Exception{
		return dao.docbaiviet(mabaiviet);
	}
	public boolean XoaBaiViet(long mabaiviet) throws Exception{
		return dao.XoaBaiViet(mabaiviet);
	}
	public boolean suabaiviet(long mabaiviet, String tieude, String noidung) throws Exception{
		return dao.suabaiviet(mabaiviet, tieude, noidung);
	}
	public ArrayList<monanbean> getmonan() throws Exception{
		return dao.getmonan();
	}
	public ArrayList<loaibean> getloai() throws Exception{
		return dao.getloai();
	}
	public boolean themloai(String maloai, String tenloai) throws Exception{
		return dao.themloai(maloai, tenloai);
	}
	public boolean themmon(String mamon, String tenmon, int gia, String maloai) throws Exception{
		return dao.themmon(mamon, tenmon, gia, maloai);
	}
	public boolean suatenmon(String tenmon, String mamon) throws Exception{
		return dao.suatenmon(tenmon, mamon);
	}
	public boolean suagia(int gia, String mamon) throws Exception{
		return dao.suagia(gia, mamon);
	}
	public boolean xoamonan(String mamonan) throws Exception{
		return dao.xoamonan(mamonan);
	}
	public monanbean kiemtramonan(String mamonan) throws Exception{
		return dao.kiemtramonan(mamonan);
	}
	public ArrayList<khachhangbean> getkhachhang() throws Exception{
		return dao.getkhachhang();
	}
	public ArrayList<datmonbean> xembandat(long makh) throws Exception{
		return dao.xembandat(makh);
	}
	public boolean xoakhachhang(long makh) throws Exception{
		return dao.xoakhachhang(makh);
	}
	public boolean xoalichsu(long makh) throws Exception{
		return dao.xoalichsu(makh);
	}
	public ArrayList<datmonbean> getdatbanMonAn(long madatban, long makh) throws Exception{
		return dao.getdatbanMonAn(madatban, makh);
	}
	public ArrayList<datmonbean> getlichsudatban(long madatban, long makh) throws Exception{
		return dao.getlichsudatban(madatban, makh);
	}
	public ArrayList<datbanbean> danhsachdatban() throws Exception{
		return dao.danhsachdatban();
	}
	public ArrayList<datbanbean> lichsukhachdatban() throws Exception{
		return dao.lichsukhachdatban();
	}
	public boolean xacnhanban(long makh) throws Exception{
		return dao.xacnhanban(makh);
	}
	public boolean xacnhanmon(long makh) throws Exception{
		return dao.xacnhanmon(makh);
	}
	public boolean xacnhanlichsu(long makh) throws Exception{
		return dao.xacnhanlichsu(makh);
	}
	public boolean adminxoaban(long makh, long madatban) throws Exception{
		return dao.adminxoaban(makh, madatban);
	}
	public boolean adminxoamon(long makh) throws Exception{
		return dao.adminxoamon(makh);
	}
	public boolean xoabinhluan(long mabinhluan) throws Exception{
		return dao.xoabinhluan(mabinhluan);
	}
}
