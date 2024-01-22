package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import bean.AdminBean;
import bean.baivietbean;
import bean.datbanbean;
import bean.datmonbean;
import bean.khachhangbean;
import bean.loaibean;
import bean.monanbean;

public class AdminDao {
	KetNoi kn = new KetNoi();
	
	// phan nhan vien, quan ly, admin
	public boolean DangKyNhanVien(String hoten,String un, String pass, String quyen, int luong) throws Exception{
		kn.ketnoi();
		String sql = "insert into NhanVien(tennv, tendn, matkhau, quyenhan,luong) values(?,?,?,?,?)";
		PreparedStatement cmd = kn.cn.prepareStatement(sql);
		cmd.setString(1, hoten);
		cmd.setString(2, un);
		cmd.setString(3, pass);
		cmd.setString(4, quyen);
		cmd.setInt(5, luong);
		cmd.executeUpdate();
		kn.cn.close();
		return true;
	}
	public AdminBean DangNhapNhanVien(String un, String pass) throws Exception{
		AdminBean ds = null;
		kn.ketnoi();
		String sql = "select * from NhanVien where tendn=? and matkhau=? and quyenhan='nhanvien'";
		PreparedStatement cmd = kn.cn.prepareStatement(sql);
		cmd.setString(1, un);
		cmd.setString(2, pass);
		ResultSet rs = cmd.executeQuery();
		while(rs.next()) {
			String quyen = rs.getString("quyenhan");
			long manv = rs.getLong("manv");
			String hoten = rs.getString("tennv");
			int luong = rs.getInt("luong");
			ds=new AdminBean(manv, hoten, un, pass, quyen, luong);
		}
		rs.close();
		kn.cn.close();
		return ds;
	}
	public AdminBean KiemTraDangKyAdmin(String un) throws Exception{
		AdminBean ds = null;
		kn.ketnoi();
		String sql = "select * from NhanVien where tendn=?";
		PreparedStatement cmd = kn.cn.prepareStatement(sql);
		cmd.setString(1, un);
		ResultSet rs = cmd.executeQuery();
		while(rs.next()) {
			String pass = rs.getString("matkhau");
			String quyen = rs.getString("quyenhan");
			long manv = rs.getLong("manv");
			String hoten = rs.getString("tennv");
			int luong = rs.getInt("luong");
			ds=new AdminBean(manv, hoten, un, pass, quyen, luong);
		}
		rs.close();
		kn.cn.close();
		return ds;
	}
	public AdminBean DangNhapQuanLy(String un, String pass) throws Exception{
		AdminBean ds = null;
		kn.ketnoi();
		String sql = "select * from NhanVien where tendn=? and matkhau=? and quyenhan='quanly'";
		PreparedStatement cmd = kn.cn.prepareStatement(sql);
		cmd.setString(1, un);
		cmd.setString(2, pass);
		ResultSet rs = cmd.executeQuery();
		while(rs.next()) {
			String quyen = rs.getString("quyenhan");
			long manv = rs.getLong("manv");
			String hoten = rs.getString("tennv");
			int luong = rs.getInt("luong");
			ds=new AdminBean(manv, hoten, un, pass, quyen, luong);
		}
		rs.close();
		kn.cn.close();
		return ds;
	}
	public AdminBean DangNhapAdmin(String un, String pass) throws Exception{
		AdminBean ds = null;
		kn.ketnoi();
		String sql = "select * from NhanVien where tendn=? and matkhau=? and quyenhan='admin'";
		PreparedStatement cmd = kn.cn.prepareStatement(sql);
		cmd.setString(1, un);
		cmd.setString(2, pass);
		ResultSet rs = cmd.executeQuery();
		while(rs.next()) {
			String quyen = rs.getString("quyenhan");
			long manv = rs.getLong("manv");
			String hoten = rs.getString("tennv");
			int luong = rs.getInt("luong");
			ds=new AdminBean(manv, hoten, un, pass, quyen, luong);
		}
		rs.close();
		kn.cn.close();
		return ds;
	}
	
	
	
	// phan quan ly bai viet
	public ArrayList<baivietbean> getbaiviet() throws Exception{
		kn.ketnoi();
		ArrayList<baivietbean> ds = new ArrayList<baivietbean>();
		String sql = "select * from tintuc";
		PreparedStatement cmd = kn.cn.prepareStatement(sql);
		ResultSet rs = cmd.executeQuery();
		while(rs.next()) {
			long matintuc = rs.getLong("matintuc");
			String tieude = rs.getString("tieude");
			String noidung = rs.getString("noidung");
			String ngaygio = rs.getString("ngaygio");
			ds.add(new baivietbean(matintuc, tieude, noidung, ngaygio));
		}
		rs.close();
		kn.cn.close();
		return ds;
	}
	public boolean ThemBaiViet(String tieude, String noidung) throws Exception{
		kn.ketnoi();
		String ngaygio =new SimpleDateFormat("dd-MM-yyyy").format(new Date());
		String sql = "insert into tintuc(tieude, noidung, ngaygio) values(?, ?, ?)";
		PreparedStatement cmd = kn.cn.prepareStatement(sql);
		cmd.setString(1, tieude);
		cmd.setString(2, noidung);
		cmd.setString(3, ngaygio);
		cmd.executeUpdate();
		kn.cn.close();
		return true;
	}
	public boolean XoaBaiViet(long mabaiviet) throws Exception{
		kn.ketnoi();
		String sql = "delete from tintuc where matintuc=?";
		PreparedStatement cmd = kn.cn.prepareStatement(sql);
		cmd.setLong(1, mabaiviet);
		cmd.executeUpdate();
		kn.cn.close();
		return true;
	}
	public baivietbean docbaiviet(long mabaiviet) throws Exception{
		kn.ketnoi();
		baivietbean ds = null;
		String sql = "select * from tintuc where matintuc=?";
		PreparedStatement cmd = kn.cn.prepareStatement(sql);
		cmd.setLong(1, mabaiviet);
		ResultSet rs = cmd.executeQuery();
		while(rs.next()) {
			String tieude = rs.getString("tieude");
			String noidung = rs.getString("noidung");
			String ngay = rs.getString("ngaygio");
			ds = new baivietbean(mabaiviet, tieude, noidung, ngay);
		}
		rs.close();
		kn.cn.close();
		return ds;
	}
	public boolean suabaiviet(long mabaiviet, String tieude, String noidung) throws Exception{
		kn.ketnoi();
		String sql="update tintuc\r\n"
				+ "set tieude=?, noidung=?\r\n"
				+ "where matintuc=?";
		PreparedStatement cmd = kn.cn.prepareStatement(sql);
		cmd.setString(1, tieude);
		cmd.setString(2, noidung);
		cmd.setLong(3, mabaiviet);
		cmd.executeUpdate();
		kn.cn.close();
		return true;
	}
	
	
	
	// Phan quan ly mon an
	public ArrayList<monanbean> getmonan() throws Exception{
		kn.ketnoi();
		ArrayList<monanbean> ds = new ArrayList<monanbean>();
		String sql = "select * from MonAn";
		PreparedStatement cmd = kn.cn.prepareStatement(sql);
		ResultSet rs = cmd.executeQuery();
		while(rs.next()) {
			String mamon = rs.getString("MaMonAn");
			String tenmon = rs.getString("TenMon");
			int gia = rs.getInt("Gia");
			String anh = rs.getString("Anh");
			String maloai = rs.getString("maloai");
			ds.add(new monanbean(mamon, tenmon, gia, anh, maloai));
		}
		rs.close();
		kn.cn.close();
		return ds;
	}
	public boolean suagia(int gia, String mamon) throws Exception{
		kn.ketnoi();
		String sql = "update MonAn set Gia=? where MaMonAn=?";
		PreparedStatement cmd = kn.cn.prepareStatement(sql);
		cmd.setInt(1, gia);
		cmd.setString(2, mamon);
		cmd.executeUpdate();
		kn.cn.close();
		return true;
	}
	public boolean suatenmon(String tenmon, String mamon) throws Exception{
		kn.ketnoi();
		String sql = "update MonAn set TenMon=? where MaMonAn=?";
		PreparedStatement cmd = kn.cn.prepareStatement(sql);
		cmd.setString(1, tenmon);
		cmd.setString(2, mamon);
		cmd.executeUpdate();
		kn.cn.close();
		return true;
	}
	public boolean themmon(String mamon, String tenmon, int gia, String maloai) throws Exception{
		kn.ketnoi();
		String sql = "insert into MonAn(MaMonAn, TenMon, Gia, Anh, maloai) values(?,?,?,'filePicture/imgmonan.png',?)";
		PreparedStatement cmd = kn.cn.prepareStatement(sql);
		cmd.setString(1, mamon);
		cmd.setString(2, tenmon);
		cmd.setInt(3, gia);
		cmd.setString(4, maloai);
		cmd.executeUpdate();
		kn.cn.close();
		return true;
	}
	public boolean themloai(String maloai, String tenloai) throws Exception{
		kn.ketnoi();
		String sql = "insert into Loai(maloai, tenloai) values(?,?)";
		PreparedStatement cmd = kn.cn.prepareStatement(sql);
		cmd.setString(1, maloai);
		cmd.setString(2, tenloai);
		cmd.executeUpdate();
		kn.cn.close();
		return true;
	}
	public ArrayList<loaibean> getloai() throws Exception{
		ArrayList<loaibean> ds = new ArrayList<loaibean>();
		KetNoi kn = new KetNoi();
		kn.ketnoi();
		String sql = "select * from Loai";
		PreparedStatement cmd = kn.cn.prepareStatement(sql);
		ResultSet rs = cmd.executeQuery();
		while(rs.next()) {
			String ml = rs.getString("maloai");
			String tl = rs.getString("tenloai");
			ds.add(new loaibean(ml,tl));
		}
		rs.close();
		kn.cn.close();
		return ds;
	}
	public boolean xoamonan(String mamonan) throws Exception{
		kn.ketnoi();
		String sql = "delete from MonAn where MaMonAn=?";
		PreparedStatement cmd = kn.cn.prepareStatement(sql);
		cmd.setString(1, mamonan);
		cmd.executeUpdate();
		kn.cn.close();
		return true;
	}
	public monanbean kiemtramonan(String mamonan) throws Exception{
		monanbean ds = null;
		kn.ketnoi();
		String sql = "select * from MonAn where MaMonAn=?";
		PreparedStatement cmd = kn.cn.prepareStatement(sql);
		cmd.setString(1, mamonan);
		ResultSet rs = cmd.executeQuery();
		while(rs.next()) {
			String tenmon = rs.getString("TenMon");
			int gia = rs.getInt("Gia");
			String anh = rs.getString("Anh");
			String maloai = rs.getString("maloai");
			ds = new monanbean(mamonan, tenmon, gia, anh, maloai);
		}
		rs.close();
		kn.cn.close();
		return ds;
	}
	
	
	
	
	// Xử lí nhân viên, danh sách nhân viên, danh sách quản lý
	public boolean ThangChucNhanVien(long manv) throws Exception{
		kn.ketnoi();
		String sql = "update NhanVien set quyenhan='quanly'where manv=?";
		PreparedStatement cmd = kn.cn.prepareStatement(sql);
		cmd.setLong(1, manv);
		cmd.executeUpdate();
		kn.cn.close();
		return true;
	}
	public boolean HaChucNhanVien(long manv) throws Exception{
		kn.ketnoi();
		String sql = "update NhanVien set quyenhan='nhanvien'where manv=?";
		PreparedStatement cmd = kn.cn.prepareStatement(sql);
		cmd.setLong(1, manv);
		cmd.executeUpdate();
		kn.cn.close();
		return true;
	}
	public ArrayList<AdminBean> getnhanvien() throws Exception{
		kn.ketnoi();
		ArrayList<AdminBean> ds = new ArrayList<AdminBean>();
		String sql = "select * from NhanVien where quyenhan='nhanvien'";
		PreparedStatement cmd = kn.cn.prepareStatement(sql);
		ResultSet rs = cmd.executeQuery();
		while(rs.next()) {
			String pass = rs.getString("matkhau");
			String quyen = rs.getString("quyenhan");
			long manv = rs.getLong("manv");
			String hoten = rs.getString("tennv");
			int luong = rs.getInt("luong");
			String un = rs.getString("tendn");
			ds.add(new AdminBean(manv, hoten, un, pass, quyen, luong));
		}
		rs.close();
		kn.cn.close();
		return ds;
	}
	public boolean xoanhanvien(long manv, String quyen) throws Exception{
		kn.ketnoi();
		String sql = "delete from NhanVien where manv=? and quyenhan=?";
		PreparedStatement cmd = kn.cn.prepareStatement(sql);
		cmd.setLong(1, manv);
		cmd.setString(2, quyen);
		cmd.executeUpdate();
		kn.cn.close();
		return true;
	}
	public ArrayList<AdminBean> getquanly() throws Exception{
		kn.ketnoi();
		ArrayList<AdminBean> ds = new ArrayList<AdminBean>();
		String sql = "select * from NhanVien where quyenhan='quanly'";
		PreparedStatement cmd = kn.cn.prepareStatement(sql);
		ResultSet rs = cmd.executeQuery();
		while(rs.next()) {
			String pass = rs.getString("matkhau");
			String quyen = rs.getString("quyenhan");
			long manv = rs.getLong("manv");
			String hoten = rs.getString("tennv");
			int luong = rs.getInt("luong");
			String un = rs.getString("tendn");
			ds.add(new AdminBean(manv, hoten, un, pass, quyen, luong));
		}
		rs.close();
		kn.cn.close();
		return ds;
	}
	
	
	
	
	// phan quan ly khach hang
	public ArrayList<khachhangbean> getkhachhang() throws Exception{
		kn.ketnoi();
		ArrayList<khachhangbean> ds = new ArrayList<khachhangbean>();
		String sql = "select * from KH";
		PreparedStatement cmd = kn.cn.prepareStatement(sql);
		ResultSet rs = cmd.executeQuery();
		while(rs.next()) {
			long makh = rs.getLong("makh");
			String un = rs.getString("Username");
			String pass = rs.getString("Password");
			String email = rs.getString("Email");
			String hoten = rs.getString("HoTen");
			int sdt = rs.getInt("sdt");
			ds.add(new khachhangbean(makh, un, pass, email, hoten, sdt));
		}
		rs.close();
		kn.cn.close();
		return ds;
	}
	public ArrayList<datmonbean> xembandat(long makh) throws Exception{
		ArrayList<datmonbean> ds = new ArrayList<datmonbean>();
		kn.ketnoi();
		String sql = "select * from LichSuMuaHang where makh=? and macthd=1";
		PreparedStatement cmd = kn.cn.prepareStatement(sql);
		cmd.setLong(1, makh);
		ResultSet rs = cmd.executeQuery();
		while(rs.next()) {
		    String mamon = rs.getString("mamon");
		    String tenmon = rs.getString("tenmon");
		    int soluong = rs.getInt("soluong");
		    int gia = rs.getInt("gia");
		    String anh = rs.getString("anh");
		    String tenkh = rs.getString("tenkh");
		    long macthd = rs.getLong("macthd");
		    long madatban = rs.getLong("madatban");
		    String ngay = rs.getString("ngaydat");
		    String gio = rs.getString("giodat");
		    ds.add(new datmonbean(madatban, mamon, tenmon, soluong, gia, anh, tenkh, ngay, gio, makh, macthd));
		}
		rs.close();
		kn.cn.close();
		return ds;
	}
	public boolean xoakhachhang(long makh) throws Exception{
		kn.ketnoi();
		String sql = "delete from KH where makh=?";
		PreparedStatement cmd = kn.cn.prepareStatement(sql);
		cmd.setLong(1, makh);
		cmd.executeUpdate();
		kn.cn.close();
		return true;
	}
	public boolean xoalichsu(long makh) throws Exception{
		kn.ketnoi();
		String sql = "delete from LichSuMuaHang where makh=?";
		PreparedStatement cmd = kn.cn.prepareStatement(sql);
		cmd.setLong(1, makh);
		cmd.executeUpdate();
		kn.cn.close();
		return true;
	}
	public ArrayList<datbanbean> danhsachdatban() throws Exception{
		ArrayList<datbanbean> ds = new ArrayList<datbanbean>();
		kn.ketnoi();
		String sql = "select * from DatBan where xacnhan=0";
		PreparedStatement cmd = kn.cn.prepareStatement(sql);
		ResultSet rs = cmd.executeQuery();
		while(rs.next()) {
			long madatban = rs.getLong("madatban");
			String hoten=rs.getString("hoten");
			int sdt = rs.getInt("sdt");
			String ngay = rs.getString("ngay");
			String gio = rs.getString("gio");
			int soluong = rs.getInt("soluong");
			long makh = rs.getLong("makh");
			ds.add(new datbanbean(madatban, hoten, sdt, ngay, gio, soluong, makh));
		}
		rs.close();
		kn.cn.close();
		return ds;
	}
	public ArrayList<datbanbean> lichsukhachdatban() throws Exception{
		ArrayList<datbanbean> ds = new ArrayList<datbanbean>();
		kn.ketnoi();
		String sql = "select * from DatBan where xacnhan=1";
		PreparedStatement cmd = kn.cn.prepareStatement(sql);
		ResultSet rs = cmd.executeQuery();
		while(rs.next()) {
			long madatban = rs.getLong("madatban");
			String hoten=rs.getString("hoten");
			int sdt = rs.getInt("sdt");
			String ngay = rs.getString("ngay");
			String gio = rs.getString("gio");
			int soluong = rs.getInt("soluong");
			long makh = rs.getLong("makh");
			ds.add(new datbanbean(madatban, hoten, sdt, ngay, gio, soluong, makh));
		}
		rs.close();
		kn.cn.close();
		return ds;
	}
	public ArrayList<datmonbean> getdatbanMonAn(long madatban, long makh) throws Exception{
		ArrayList<datmonbean> ds = new ArrayList<datmonbean>();
		kn.ketnoi();
		String sql = "select * from DatMon where madatban=? and makh=? and macthd=0";
		PreparedStatement cmd = kn.cn.prepareStatement(sql);
		cmd.setLong(1, madatban);
		cmd.setLong(2, makh);
		ResultSet rs = cmd.executeQuery();
		while(rs.next()) {
			String gio = rs.getString("giodat");
			String ngay = rs.getString("ngaydat");
		    String mamon = rs.getString("mamon");
		    String tenmon = rs.getString("tenmon");
		    int soluong = rs.getInt("soluong");
		    int gia = rs.getInt("gia");
		    String anh = rs.getString("anh");
		    String tenkh = rs.getString("tenkh");
		    long macthd = rs.getLong("macthd");
		    ds.add(new datmonbean(madatban, mamon, tenmon, soluong, gia, anh, tenkh, ngay, gio, makh, macthd));
		}
		rs.close();
		kn.cn.close();
		return ds;
	}
	public ArrayList<datmonbean> getlichsudatban(long madatban, long makh) throws Exception{
		ArrayList<datmonbean> ds = new ArrayList<datmonbean>();
		kn.ketnoi();
		String sql = "select * from LichSuMuaHang where madatban=? and makh=? and macthd=1";
		PreparedStatement cmd = kn.cn.prepareStatement(sql);
		cmd.setLong(1, madatban);
		cmd.setLong(2, makh);
		ResultSet rs = cmd.executeQuery();
		while(rs.next()) {
			String gio = rs.getString("giodat");
			String ngay = rs.getString("ngaydat");
		    String mamon = rs.getString("mamon");
		    String tenmon = rs.getString("tenmon");
		    int soluong = rs.getInt("soluong");
		    int gia = rs.getInt("gia");
		    String anh = rs.getString("anh");
		    String tenkh = rs.getString("tenkh");
		    long macthd = rs.getLong("macthd");
		    ds.add(new datmonbean(madatban, mamon, tenmon, soluong, gia, anh, tenkh, ngay, gio, makh, macthd));
		}
		rs.close();
		kn.cn.close();
		return ds;
	}
	public boolean xacnhanban(long makh) throws Exception{
		kn.ketnoi();
		String sql = "update DatBan set xacnhan=1 where makh=?";
		PreparedStatement cmd = kn.cn.prepareStatement(sql);
		cmd.setLong(1, makh);
		cmd.executeUpdate();
		kn.cn.close();
		return true;
	}
	public boolean xacnhanmon(long makh) throws Exception{
		kn.ketnoi();
		String sql = "update DatMon set macthd=1 where makh=?";
		PreparedStatement cmd = kn.cn.prepareStatement(sql);
		cmd.setLong(1, makh);
		cmd.executeUpdate();
		kn.cn.close();
		return true;
	}
	public boolean xacnhanlichsu(long makh) throws Exception{
		kn.ketnoi();
		String sql = "update LichSuMuaHang set macthd=1 where makh=?";
		PreparedStatement cmd = kn.cn.prepareStatement(sql);
		cmd.setLong(1, makh);
		cmd.executeUpdate();
		kn.cn.close();
		return true;
	}
	public boolean adminxoaban(long makh, long madatban) throws Exception{
		kn.ketnoi();
		String sql = "delete from DatBan where makh=? and madatban=? and xacnhan=1";
		PreparedStatement cmd = kn.cn.prepareStatement(sql);
		cmd.setLong(1, makh);
		cmd.setLong(2, madatban);
		cmd.executeUpdate();
		kn.cn.close();
		return true;
	}
	public boolean adminxoamon(long makh) throws Exception{
		kn.ketnoi();
		String sql = "delete from DatMon where makh=?";
		PreparedStatement cmd = kn.cn.prepareStatement(sql);
		cmd.setLong(1, makh);
		cmd.executeUpdate();
		kn.cn.close();
		return true;
	}
	
	
	
	// xoa binh luan
	public boolean xoabinhluan(long mabinhluan) throws Exception{
		kn.ketnoi();
		String sql="delete from Comment where macmt=?";
		PreparedStatement cmd = kn.cn.prepareStatement(sql);
		cmd.setLong(1, mabinhluan);
		cmd.executeUpdate();
		kn.cn.close();
		return true;
	}
}
