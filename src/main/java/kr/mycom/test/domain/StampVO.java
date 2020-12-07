package kr.mycom.test.domain;

import java.util.Arrays;
import java.util.Date;

public class StampVO {
	private int stampno;
	private int accountno;
	private String s_name;
	private Date startdate;
	private Date enddate;
	private String location;
	private String detailaddr;
	private String category;
	private String detail;
	private String image;
	
	private String[] files;

	public int getStampno() {
		return stampno;
	}

	public void setStampno(int stampno) {
		this.stampno = stampno;
	}

	public int getAccountno() {
		return accountno;
	}

	public void setAccountno(int accountno) {
		this.accountno = accountno;
	}

	public String getS_name() {
		return s_name;
	}

	public void setS_name(String s_name) {
		this.s_name = s_name;
	}

	public Date getStartdate() {
		return startdate;
	}

	public void setStartdate(Date startdate) {
		this.startdate = startdate;
	}

	public Date getEnddate() {
		return enddate;
	}

	public void setEnddate(Date enddate) {
		this.enddate = enddate;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public String getDetailaddr() {
		return detailaddr;
	}

	public void setDetailaddr(String detailaddr) {
		this.detailaddr = detailaddr;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getDetail() {
		return detail;
	}

	public void setDetail(String detail) {
		this.detail = detail;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public String[] getFiles() {
		return files;
	}

	public void setFiles(String[] files) {
		this.files = files;
	}

	@Override
	public String toString() {
		return "StampVO [stampno=" + stampno + ", accountno=" + accountno + ", s_name=" + s_name + ", startdate="
				+ startdate + ", enddate=" + enddate + ", location=" + location + ", detailaddr=" + detailaddr
				+ ", category=" + category + ", detail=" + detail + ", image=" + image + ", files="
				+ Arrays.toString(files) + "]";
	}
}
