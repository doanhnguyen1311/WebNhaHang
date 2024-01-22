package bean;

public class giohangbean {
	private String mamon;
	private String tenmon;
	private int soluongmua;
	private String anh;
	private int gia;
	private int thanhtien;
	public giohangbean(String mamon, String tenmon, int soluongmua,String anh, int gia) {
		super();
		this.mamon = mamon;
		this.tenmon = tenmon;
		this.soluongmua = soluongmua;
		this.anh = anh;
		this.gia = gia;
		this.thanhtien = soluongmua*gia;
	}
	public giohangbean() {
		super();
		// TODO Auto-generated constructor stub
	}
	public String getMamon() {
		return mamon;
	}
	public void setMamon(String mamon) {
		this.mamon = mamon;
	}
	public String getTenmon() {
		return tenmon;
	}
	public void setTenmon(String tenmon) {
		this.tenmon = tenmon;
	}
	public int getSoluongmua() {
		return soluongmua;
	}
	public void setSoluongmua(int soluongmua) {
		this.soluongmua = soluongmua;
	}
	public String getAnh() {
		return anh;
	}
	public void setAnh(String anh) {
		this.anh = anh;
	}
	public int getGia() {
		return gia;
	}
	public void setGia(int gia) {
		this.gia = gia;
	}
	public int getThanhtien() {
		return soluongmua*gia;
	}
	public void setThanhtien(int thanhtien) {
		this.thanhtien = thanhtien;
	}
}
