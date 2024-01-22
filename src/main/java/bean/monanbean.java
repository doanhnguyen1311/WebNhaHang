package bean;

public class monanbean {
	private String mamon;
	private String tenmon;
	private int gia;
	private String anh;
	private String maloai;
	public monanbean() {
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
	public int getGia() {
		return gia;
	}
	public void setGia(int gia) {
		this.gia = gia;
	}
	public String getAnh() {
		return anh;
	}
	public void setAnh(String anh) {
		this.anh = anh;
	}
	public String getMaloai() {
		return maloai;
	}
	public void setMaloai(String maloai) {
		this.maloai = maloai;
	}
	public monanbean(String mamon, String tenmon, int gia, String anh, String maloai) {
		super();
		this.mamon = mamon;
		this.tenmon = tenmon;
		this.gia = gia;
		this.anh = anh;
		this.maloai = maloai;
	}
	
}
