package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import bean.loaibean;

public class loaidao {
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
}
