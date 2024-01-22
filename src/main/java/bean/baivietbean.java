package bean;

public class baivietbean {
	private long matintuc;
	private String tieude;
	private String noidung;
	private String ngay;
	public baivietbean(long matintuc, String tieude, String noidung, String ngay) {
		super();
		this.matintuc = matintuc;
		this.tieude = tieude;
		this.noidung = noidung;
		this.ngay = ngay;
	}
	public long getMatintuc() {
		return matintuc;
	}
	public void setMatintuc(long matintuc) {
		this.matintuc = matintuc;
	}
	public String getTieude() {
		return tieude;
	}
	public void setTieude(String tieude) {
		this.tieude = tieude;
	}
	public String getNoidung() {
		return noidung;
	}
	public void setNoidung(String noidung) {
		this.noidung = noidung;
	}
	public String getNgay() {
		return ngay;
	}
	public void setNgay(String ngay) {
		this.ngay = ngay;
	}
	public baivietbean() {
		super();
		// TODO Auto-generated constructor stub
	}
	
}
