package dao;

import java.security.DrbgParameters.NextBytes;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import Controller.datbanController;
import bean.baivietbean;
import bean.binhluanbean;
import bean.datbanbean;
import bean.datmonbean;
import bean.khachhangbean;

public class KhachHangDao {
	KetNoi kn = new KetNoi();
	public boolean DatBan(String hoten, int sdt, String ngay, String gio, int soluong, long makh) throws Exception{
		kn.ketnoi();
		String sql = "insert into DatBan(hoten, sdt,ngay,gio,soluong,makh,xacnhan) values(?,?,?,?,?,?,0)";
		PreparedStatement cmd = kn.cn.prepareStatement(sql);
		cmd.setString(1, hoten);
		cmd.setInt(2, sdt);
		cmd.setString(3, ngay);
		cmd.setString(4, gio);
		cmd.setInt(5, soluong);
		cmd.setLong(6, makh);
		cmd.executeUpdate();
		kn.cn.close();
		return true;
	}
	
	public datbanbean getdatban(long makh, String ngay, String gio) throws Exception{
		datbanbean db = null;
		kn.ketnoi();
		String sql = "select * from DatBan where makh=? and ngay=? and gio=?";
		PreparedStatement cmd = kn.cn.prepareStatement(sql);
		cmd.setLong(1, makh);
		cmd.setString(2, ngay);
		cmd.setString(3, gio);
		ResultSet rs = cmd.executeQuery();
		while(rs.next()) {
			long madatban = rs.getLong("madatban");
			String hoten = rs.getString("hoten");
			int sdt = rs.getInt("sdt");
			int soluong = rs.getInt("soluong");
			db = new datbanbean(madatban, hoten, sdt, ngay, gio, soluong, makh);
		}
		rs.close();
		kn.cn.close();
		return db;
	}
	public ArrayList<datbanbean> danhsachdatban(long makh) throws Exception{
		ArrayList<datbanbean> ds = new ArrayList<datbanbean>();
		kn.ketnoi();
		String sql = "select * from DatBan where xacnhan=1 and makh=?";
		PreparedStatement cmd = kn.cn.prepareStatement(sql);
		cmd.setLong(1, makh);
		ResultSet rs = cmd.executeQuery();
		while(rs.next()) {
			long madatban = rs.getLong("madatban");
			String hoten=rs.getString("hoten");
			int sdt = rs.getInt("sdt");
			String ngay = rs.getString("ngay");
			String gio = rs.getString("gio");
			int soluong = rs.getInt("soluong");
			ds.add(new datbanbean(madatban, hoten, sdt, ngay, gio, soluong, makh));
		}
		rs.close();
		kn.cn.close();
		return ds;
	}
	public boolean XoaBanDat(long makh) throws Exception{
		kn.ketnoi();
		String sql = "delete from DatMon\r\n"
				+ "where makh=?";
		PreparedStatement cmd = kn.cn.prepareStatement(sql);
		cmd.setLong(1, makh);
		cmd.executeUpdate();
		kn.cn.close();
		return true;
	}
	public boolean DatMon(long madatban, String mamon, String tenmon, int soluong, int gia, String anh, String tenkh, String ngaydat, String giodat, long makh, long macthd) throws Exception{
		kn.ketnoi();
		String sql = "INSERT INTO DatMon (madatban, mamon, tenmon, soluong, gia, anh, tenkh, ngaydat, giodat, makh, macthd)\r\n"
				+ "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?);\r\n"
				+ "";
		PreparedStatement cmd = kn.cn.prepareStatement(sql);
		cmd.setLong(1, madatban);
        cmd.setString(2, mamon);
        cmd.setString(3, tenmon);
        cmd.setInt(4, soluong);
        cmd.setInt(5, gia);
        cmd.setString(6, anh);
        cmd.setString(7, tenkh);
        cmd.setString(8, ngaydat);
        cmd.setString(9, giodat);
        cmd.setLong(10, makh);
        cmd.setLong(11, macthd);
        cmd.executeUpdate();
        kn.cn.close();
		return true;
	}
	public boolean LichSuMuaHang(long madatban, String mamon, String tenmon, int soluong, int gia, String anh, String tenkh, String ngaydat, String giodat, long makh, long macthd) throws Exception{
		kn.ketnoi();
		String sql = "INSERT INTO LichSuMuaHang(madatban, mamon, tenmon, soluong, gia, anh, tenkh, ngaydat, giodat, makh, macthd)\r\n"
				+ "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?);\r\n"
				+ "";
		PreparedStatement cmd = kn.cn.prepareStatement(sql);
		cmd.setLong(1, madatban);
        cmd.setString(2, mamon);
        cmd.setString(3, tenmon);
        cmd.setInt(4, soluong);
        cmd.setInt(5, gia);
        cmd.setString(6, anh);
        cmd.setString(7, tenkh);
        cmd.setString(8, ngaydat);
        cmd.setString(9, giodat);
        cmd.setLong(10, makh);
        cmd.setLong(11, macthd);
        cmd.executeUpdate();
        kn.cn.close();
		return true;
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
	public datmonbean getdatmon(long madatban, String ngay, String gio, long makh) throws Exception{
		datmonbean ds = null;
		kn.ketnoi();
		String sql = "select * from DatMon where madatban=? and makh=? and ngaydat=? and giodat=?";
		PreparedStatement cmd = kn.cn.prepareStatement(sql);
		cmd.setLong(1, madatban);
		cmd.setLong(2, makh);
		cmd.setString(3, ngay);
		ResultSet rs = cmd.executeQuery();
		while(rs.next()) {
		    String mamon = rs.getString("mamon");
		    String tenmon = rs.getString("tenmon");
		    int soluong = rs.getInt("soluong");
		    int gia = rs.getInt("gia");
		    String anh = rs.getString("anh");
		    String tenkh = rs.getString("tenkh");
		    long macthd = rs.getLong("macthd");
		    ds = new datmonbean(madatban, mamon, tenmon, soluong, gia, anh, tenkh, ngay, gio, makh, macthd);
		}
		rs.close();
		kn.cn.close();
		return ds;
	}
	public ArrayList<datmonbean> getdatbanMonAn(long madatban, String ngay, String gio, long makh) throws Exception{
		ArrayList<datmonbean> ds = new ArrayList<datmonbean>();
		kn.ketnoi();
		String sql = "select * from DatMon where madatban=? and makh=? and ngaydat=? and giodat=? and macthd=0";
		PreparedStatement cmd = kn.cn.prepareStatement(sql);
		cmd.setLong(1, madatban);
		cmd.setLong(2, makh);
		cmd.setString(3, ngay);
		cmd.setString(4, gio);
		ResultSet rs = cmd.executeQuery();
		while(rs.next()) {
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
	public ArrayList<datmonbean> kiemtrabandadat(long makh) throws Exception{
		ArrayList<datmonbean> ds = new ArrayList<datmonbean>();
		kn.ketnoi();
		String sql = "select * from DatMon where makh=? and macthd=1";
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
	public ArrayList<datmonbean> xembandat(long makh) throws Exception{
		ArrayList<datmonbean> ds = new ArrayList<datmonbean>();
		kn.ketnoi();
		String sql = "select * from DatMon where makh=? and macthd=0";
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
	public boolean DangKy(String un, String pass, String email, String hoten, int sdt) throws Exception {
		kn.ketnoi();
		String sql = "insert into KH(Username, Password, Email, HoTen,sdt) values(?, ?,?,?,?)";
		PreparedStatement cmd = kn.cn.prepareStatement(sql);
		cmd.setString(1, un);
		cmd.setString(2, pass);
		cmd.setString(3, email);
		cmd.setString(4, hoten);
		cmd.setInt(5, sdt);
		cmd.executeUpdate();
		kn.cn.close();
		return true;
	}
	public khachhangbean DangNhap(String un, String pass) throws Exception{
		khachhangbean kh = null;
		kn.ketnoi();
		String sql = "select * from KH\r\n"
				+ "where Username=? and Password=? ";
		PreparedStatement cmd = kn.cn.prepareStatement(sql);
		cmd.setString(1, un);
		cmd.setString(2, pass);
		ResultSet rs = cmd.executeQuery();
		while(rs.next()) {
			long makh = rs.getLong("makh");
			String email = rs.getString("Email");
			String hoten = rs.getString("HoTen");
			int sdt = rs.getInt("sdt");
			kh = new khachhangbean(makh,un, pass, email, hoten, sdt);
		}
		rs.close();
		kn.cn.close();
		return kh;
	}
	public khachhangbean KiemTraKH(String un) throws Exception{
		khachhangbean kh = null;
		kn.ketnoi();
		String sql = "select * from KH where Username=?";
		PreparedStatement cmd = kn.cn.prepareStatement(sql);
		cmd.setString(1, un);
		ResultSet rs = cmd.executeQuery();
		while(rs.next()) {
			long makh = rs.getLong("makh");
			String pass = rs.getString("Password");
			String email = rs.getString("Email");
			String hoten = rs.getString("HoTen");
			int sdt = rs.getInt("sdt");
			kh = new khachhangbean(makh,un,pass, email, hoten, sdt);
		}
		rs.close();
		kn.cn.close();
		return kh;
		}
	public khachhangbean getthongtin(long makh) throws Exception{
		khachhangbean ds = null;
		kn.ketnoi();
		String sql = "select * from KH where makh=?";
		PreparedStatement cmd = kn.cn.prepareStatement(sql);
		cmd.setLong(1, makh);
		ResultSet rs = cmd.executeQuery();
		while(rs.next()){
			String un = rs.getString("Username");
			String pass = rs.getString("Password");
			String email = rs.getString("Email");
			String hoten = rs.getString("Hoten");
			int sdt = rs.getInt("sdt");
			ds = new khachhangbean(makh, un, pass, email, hoten, sdt);
		}
		rs.close();
		kn.cn.close();
		return ds;
	}
	public boolean capnhatthongtin(long makh, String hoten, String Email, int sdt) throws Exception{
		kn.ketnoi();
		String sql = "update KH\r\n"
				+ "set HoTen = ?, Email=?, sdt=?\r\n"
				+ "where makh = ?";
		PreparedStatement cmd = kn.cn.prepareStatement(sql);
		cmd.setString(1, hoten);
		cmd.setString(2, Email);
		cmd.setInt(3, sdt);
		cmd.setLong(4, makh);
		cmd.executeUpdate();
		kn.cn.close();
		return true;
	}
	public boolean binhluan(String cmt, long makh, String hoten) throws Exception{
		kn.ketnoi();
		String sql = "insert into Comment(cmt, makh, Hoten) values(?, ?, ?)";
		PreparedStatement cmd = kn.cn.prepareStatement(sql);
		cmd.setString(1, cmt);
		cmd.setLong(2, makh);
		cmd.setString(3, hoten);
		cmd.executeUpdate();
		kn.cn.close();
		return true;
	}
	public ArrayList<binhluanbean> getbinhluan() throws Exception{
		ArrayList<binhluanbean> ds = new ArrayList<binhluanbean>();
		kn.ketnoi();
		String sql = "SELECT * FROM VComment ORDER BY macmt DESC";
		PreparedStatement cmd = kn.cn.prepareStatement(sql);
		ResultSet rs = cmd.executeQuery();
		while(rs.next()) {
			long macmt = rs.getLong("macmt");
			String cmt = rs.getString("cmt");
			long makh = rs.getLong("makh");
			String hoten = rs.getString("HoTen");
			ds.add(new binhluanbean(macmt, cmt,makh,hoten));
		}
		rs.close();
		kn.cn.close();
		return ds;
	}
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
	public ArrayList<baivietbean> getbaivietmoi() throws Exception{
		kn.ketnoi();
		ArrayList<baivietbean> ds = new ArrayList<baivietbean>();
		String sql = "SELECT * FROM tintuc ORDER BY matintuc DESC OFFSET 0 ROWS FETCH NEXT 3 ROWS ONLY";
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
}
