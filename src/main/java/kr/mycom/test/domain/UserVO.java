package kr.mycom.test.domain;

public class UserVO {
	private int userno;
	private String userid;
	private String password;
	private String username;
	
	public int getUserno() {
		return userno;
	}
	public void setUserno(int userno) {
		this.userno = userno;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	
	@Override
	public String toString() {
		return "UserVO [userno=" + userno + ", userid=" + userid + ", password=" + password + ", username=" + username
				+ "]";
	}
}
