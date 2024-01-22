package bean;

public class AdminBean {
	private long manv;
	private String tennv;
	private String un;
	private String pass;
	private String quyen;
	private int soluong;
	public AdminBean(long manv, String tennv, String un, String pass, String quyen, int soluong) {
		super();
		this.manv = manv;
		this.tennv = tennv;
		this.un = un;
		this.pass = pass;
		this.quyen = quyen;
		this.soluong = soluong;
	}
	public long getManv() {
		return manv;
	}
	public void setManv(long manv) {
		this.manv = manv;
	}
	public String getTennv() {
		return tennv;
	}
	public void setTennv(String tennv) {
		this.tennv = tennv;
	}
	public String getUn() {
		return un;
	}
	public void setUn(String un) {
		this.un = un;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	public String getQuyen() {
		return quyen;
	}
	public void setQuyen(String quyen) {
		this.quyen = quyen;
	}
	public int getSoluong() {
		return soluong;
	}
	public void setSoluong(int soluong) {
		this.soluong = soluong;
	}
	public AdminBean() {
		super();
		// TODO Auto-generated constructor stub
	}
	
}
