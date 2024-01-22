package bo;

import java.util.ArrayList;

import bean.monanbean;
import dao.monandao;

public class monanbo {
	monandao dao = new monandao();
	public ArrayList<monanbean> getmon(String maloai) throws Exception{
		return dao.getmon(maloai);
	}
	public ArrayList<monanbean> getmonan(int soluong) throws Exception{
		return dao.getmonan(soluong);
	}
	public monanbean getmon() throws Exception{
		return dao.getmon();
	}
}
