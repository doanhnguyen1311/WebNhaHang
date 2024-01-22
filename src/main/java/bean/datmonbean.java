package bean;

public class datmonbean {
	private long madatban;
	private String mamon;
	private String tenmon;
	private int soluong;
	private int gia;
	private String anh;
	private String tenkh;
	private String ngaydat;
	private String giodat;
	private long makh;
	private long macthd;
	public datmonbean(long madatban, String mamon, String tenmon, int soluong, int gia, String anh, String tenkh,
			String ngaydat, String giodat, long makh, long macthd) {
		super();
		this.madatban = madatban;
		this.mamon = mamon;
		this.tenmon = tenmon;
		this.soluong = soluong;
		this.gia = gia;
		this.anh = anh;
		this.tenkh = tenkh;
		this.ngaydat = ngaydat;
		this.giodat = giodat;
		this.makh = makh;
		this.macthd = macthd;
	}
	public datmonbean() {
		super();
		// TODO Auto-generated constructor stub
	}
	public long getMadatban() {
		return madatban;
	}
	public void setMadatban(long madatban) {
		this.madatban = madatban;
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
	public int getSoluong() {
		return soluong;
	}
	public void setSoluong(int soluong) {
		this.soluong = soluong;
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
	public String getTenkh() {
		return tenkh;
	}
	public void setTenkh(String tenkh) {
		this.tenkh = tenkh;
	}
	public String getNgaydat() {
		return ngaydat;
	}
	public void setNgaydat(String ngaydat) {
		this.ngaydat = ngaydat;
	}
	public String getGiodat() {
		return giodat;
	}
	public void setGiodat(String giodat) {
		this.giodat = giodat;
	}
	public long getMakh() {
		return makh;
	}
	public void setMakh(long makh) {
		this.makh = makh;
	}
	public long getMacthd() {
		return macthd;
	}
	public void setMacthd(long macthd) {
		this.macthd = macthd;
	}
	
}
