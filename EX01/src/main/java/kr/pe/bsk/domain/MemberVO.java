package kr.pe.bsk.domain;

public class MemberVO {
	private String ID;
	private String PASS;
	private String EMAIL;
	
	public String getID() {
		return ID;
	}
	public void setID(String iD) {
		ID = iD;
	}
	public String getPASS() {
		return PASS;
	}
	public void setPASS(String pASS) {
		PASS = pASS;
	}
	public String getEMAIL() {
		return EMAIL;
	}
	public void setEMAIL(String eMAIL) {
		EMAIL = eMAIL;
	}
	@Override
	public String toString() {
		return "MemberVO [ID=" + ID + ", PASS=" + PASS + ", EMAIL=" + EMAIL + "]";
	}
	
	
}
