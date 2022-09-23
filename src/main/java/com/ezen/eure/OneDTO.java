package com.ezen.eure;

public class OneDTO {
	int num;
	String qlist ,title, rdate, content;
	int custnum;
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getRdate() {
		return rdate;
	}
	public void setRdate(String rdate) {
		this.rdate = rdate;
	}
	public String getQlist() {
		return qlist;
	}
	public void setQlist(String qlist) {
		this.qlist = qlist;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public int getCustnum() {
		return custnum;
	}
	public void setCustnum(int custnum) {
		this.custnum = custnum;
	}
}
