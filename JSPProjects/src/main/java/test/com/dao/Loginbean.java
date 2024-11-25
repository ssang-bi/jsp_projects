package test.com.dao;

public class Loginbean {
	private String userid;
	private String passwd;
	
	public Loginbean() {}
	
	public String getUserid() {return userid;}
	public void setUserid(String userid) {this.userid = userid;}
	public String getPasswd() {return passwd;}
	public void setPasswd(String passwd) {this.passwd = passwd;}
	
	public boolean checkUser() {
		if(userid.equals("admin") && passwd.equals("1234")) return true;
		else return false;
	}
}
