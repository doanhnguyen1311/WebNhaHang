package bean;

public class binhluanbean {
	private long macmt;
	private String cmt;
	private long makh;
	private String hoten;
	public long getMacmt() {
		return macmt;
	}
	public void setMacmt(long macmt) {
		this.macmt = macmt;
	}
	public String getCmt() {
		return cmt;
	}
	public void setCmt(String cmt) {
		this.cmt = cmt;
	}
	public long getMakh() {
		return makh;
	}
	public void setMakh(long makh) {
		this.makh = makh;
	}
	public String getHoten() {
		return hoten;
	}
	public void setHoten(String hoten) {
		this.hoten = hoten;
	}
	public binhluanbean(long macmt, String cmt, long makh, String hoten) {
		super();
		this.macmt = macmt;
		this.cmt = cmt;
		this.makh = makh;
		this.hoten = hoten;
	}
	public binhluanbean() {
		super();
		// TODO Auto-generated constructor stub
	}
	
}
