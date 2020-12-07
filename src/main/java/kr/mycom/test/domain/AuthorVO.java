package kr.mycom.test.domain;

import java.util.Arrays;

public class AuthorVO {
	private int authorityno;
	private String userid;
	private String authority;
	
	private String[] files;

	public int getAuthorityno() {
		return authorityno;
	}

	public void setAuthorityno(int authorityno) {
		this.authorityno = authorityno;
	}

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public String getAuthority() {
		return authority;
	}

	public void setAuthority(String authority) {
		this.authority = authority;
	}

	public String[] getFiles() {
		return files;
	}

	public void setFiles(String[] files) {
		this.files = files;
	}
	
	@Override
	public String toString() {
		return "AuthorVO [authorityno=" + authorityno + ", userid=" + userid + ", authority=" + authority + ", files="
				+ Arrays.toString(files) + "]";
	}
}
