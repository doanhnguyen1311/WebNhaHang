package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import bean.monanbean;

public class monandao {
	public ArrayList<monanbean> getmon(String maloai) throws Exception{
		ArrayList<monanbean> ds = new ArrayList<monanbean>();
		KetNoi kn  =new KetNoi();
		kn.ketnoi();
		String sql = "select*from MonAn where maloai=?";
		PreparedStatement cmd = kn.cn.prepareStatement(sql);
		cmd.setString(1, maloai);
		ResultSet rs = cmd.executeQuery();
		while(rs.next()) {
			String mm = rs.getString("MaMonAn");
			String tm = rs.getString("TenMon");
			int gia = rs.getInt("Gia");
			String anh = rs.getString("Anh");
			ds.add(new monanbean(mm,tm,gia,anh,maloai));
		}
		rs.close();
		kn.cn.close();
		return ds;
	}
	public monanbean getmon() throws Exception{
		monanbean ds = null;
		KetNoi kn  =new KetNoi();
		kn.ketnoi();
		String sql = "select*from MonAn";
		PreparedStatement cmd = kn.cn.prepareStatement(sql);
		ResultSet rs = cmd.executeQuery();
		while(rs.next()) {
			String mm = rs.getString("MaMonAn");
			String tm = rs.getString("TenMon");
			int gia = rs.getInt("Gia");
			String anh = rs.getString("Anh");
			String maloai = rs.getString("maloai");
			ds = (new monanbean(mm,tm,gia,anh,maloai));
		}
		rs.close();
		kn.cn.close();
		return ds;
	}
	public ArrayList<monanbean> getmonan(int soluong) throws Exception{
		ArrayList<monanbean> ds = new ArrayList<monanbean>();
		KetNoi kn  =new KetNoi();
		kn.ketnoi();
		String sql = "select * from MonAn order by MaMonAn offset ? rows fetch next 6 rows only";
		PreparedStatement cmd = kn.cn.prepareStatement(sql);
		cmd.setInt(1, soluong*6-6);
		ResultSet rs = cmd.executeQuery();
		while(rs.next()) {
			String mm = rs.getString("MaMonAn");
			String tm = rs.getString("TenMon");
			int gia = rs.getInt("Gia");
			String anh = rs.getString("Anh");
			String maloai = rs.getString("maloai");
			ds.add(new monanbean(mm,tm,gia,anh,maloai));
		}
		rs.close();
		kn.cn.close();
		return ds;
	}
}
