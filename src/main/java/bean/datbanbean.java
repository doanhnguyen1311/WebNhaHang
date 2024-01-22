package bean;

public class datbanbean {
	private long madatban;
	private String hoten;
	private int sdt;
	private String ngay;
	private String gio;
	private int soluong;
	private long makh;
	public datbanbean(Long madatban, String hoten, int sdt, String ngay, String gio, int soluong, Long makh) {
		super();
		this.madatban = madatban;
		this.hoten = hoten;
		this.sdt = sdt;
		this.ngay = ngay;
		this.gio = gio;
		this.soluong = soluong;
		this.makh = makh;
	}
	public long getMadatban() {
		return madatban;
	}
	public void setMadatban(long madatban) {
		this.madatban = madatban;
	}
	public String getHoten() {
		return hoten;
	}
	public void setHoten(String hoten) {
		this.hoten = hoten;
	}
	public int getSdt() {
		return sdt;
	}
	public void setSdt(int sdt) {
		this.sdt = sdt;
	}
	public String getNgay() {
		return ngay;
	}
	public void setNgay(String ngay) {
		this.ngay = ngay;
	}
	public String getGio() {
		return gio;
	}
	public void setGio(String gio) {
		this.gio = gio;
	}
	public int getSoluong() {
		return soluong;
	}
	public void setSoluong(int soluong) {
		this.soluong = soluong;
	}
	public long getMakh() {
		return makh;
	}
	public void setMakh(long makh) {
		this.makh = makh;
	}
	public datbanbean() {
		super();
		// TODO Auto-generated constructor stub
	}
	
}
