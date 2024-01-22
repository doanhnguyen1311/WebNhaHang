package bean;

public class xacnhanmuahangbean {
	private long mact;
	private String tenmon;
	private String anh;
	private int soluong;
	private String ngaymua;
	private int thanhtien;
	private boolean damua;
	public xacnhanmuahangbean(long mact, String tenmon, String anh, int soluong, String ngaymua, int thanhtien,
			boolean damua) {
		super();
		this.mact = mact;
		this.tenmon = tenmon;
		this.anh = anh;
		this.soluong = soluong;
		this.ngaymua = ngaymua;
		this.thanhtien = thanhtien;
		this.damua = damua;
	}
	public xacnhanmuahangbean() {
		super();
		// TODO Auto-generated constructor stub
	}
	public long getMact() {
		return mact;
	}
	public void setMact(long mact) {
		this.mact = mact;
	}
	public String getTenmon() {
		return tenmon;
	}
	public void setTenmon(String tenmon) {
		this.tenmon = tenmon;
	}
	public String getAnh() {
		return anh;
	}
	public void setAnh(String anh) {
		this.anh = anh;
	}
	public int getSoluong() {
		return soluong;
	}
	public void setSoluong(int soluong) {
		this.soluong = soluong;
	}
	public String getNgaymua() {
		return ngaymua;
	}
	public void setNgaymua(String ngaymua) {
		this.ngaymua = ngaymua;
	}
	public int getThanhtien() {
		return thanhtien;
	}
	public void setThanhtien(int thanhtien) {
		this.thanhtien = thanhtien;
	}
	public boolean isDamua() {
		return damua;
	}
	public void setDamua(boolean damua) {
		this.damua = damua;
	}
	
}
