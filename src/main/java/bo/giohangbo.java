package bo;

import java.util.ArrayList;

import org.apache.jasper.tagplugins.jstl.core.Remove;

import bean.giohangbean;

public class giohangbo {
	public ArrayList<giohangbean> ds = new ArrayList<giohangbean>();
	public void Them(String mamon, String tenmon, int soluong, String anh, int gia){
		for(giohangbean s:ds) {
			if(s.getMamon().equals(mamon)) {
				s.setSoluongmua(s.getSoluongmua()+soluong);
				return;
			}
		}
		ds.add(new giohangbean(mamon, tenmon, soluong,anh,gia));
	}
	public void Xoa(String mamon) throws Exception{
		for(giohangbean s:ds) {
			if(s.getMamon().equals(mamon)) {
				ds.remove(s);
				return;
			}
		}
	}
	public long Tong() {
		long s = 0;
		for(giohangbean h:ds) {
			s = s+h.getThanhtien();
		}
		return s;
	}
	public ArrayList<giohangbean> ds(){
		return ds;
	}
	
}
