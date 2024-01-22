package bean;

public class khachhangbean {
	private long makh;
	private String user;
	private String pass;
	private String email;
	private String hoten;
	private int sdt;
	public long getMakh() {
		return makh;
	}
	public void setMakh(long makh) {
		this.makh = makh;
	}
	public String getUser() {
		return user;
	}
	public void setUser(String user) {
		this.user = user;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
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
	public khachhangbean(long makh, String user, String pass, String email, String hoten, int sdt) {
		super();
		this.makh = makh;
		this.user = user;
		this.pass = pass;
		this.email = email;
		this.hoten = hoten;
		this.sdt = sdt;
	}
	public khachhangbean() {
		super();
		// TODO Auto-generated constructor stub
	}
	
}
