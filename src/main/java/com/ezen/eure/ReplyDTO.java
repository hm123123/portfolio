package com.ezen.eure;

public class ReplyDTO {
	
	String id,rdate,rcontent;
	int hcarnum;
	public ReplyDTO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public ReplyDTO(String id, String rdate, String rcontent, int hcarnum) {
		super();
		this.id = id;
		this.rdate = rdate;
		this.rcontent = rcontent;
		this.hcarnum = hcarnum;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getRdate() {
		return rdate;
	}
	public void setRdate(String rdate) {
		this.rdate = rdate;
	}
	public String getRcontent() {
		return rcontent;
	}
	public void setRcontent(String rcontent) {
		this.rcontent = rcontent;
	}
	public int getHcarnum() {
		return hcarnum;
	}
	public void setHcarnum(int hcarnum) {
		this.hcarnum = hcarnum;
	}
	

	
	
	
}
