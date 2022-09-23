package com.ezen.board;

public class NoticeDTO {
int nnum;
String ntitle,ndate,ncontent;
int nreadcnt;
String id;
public NoticeDTO() {
	super();
}
public int getNnum() {
	return nnum;
}
public void setNnum(int nnum) {
	this.nnum = nnum;
}
public String getNtitle() {
	return ntitle;
}
public void setNtitle(String ntitle) {
	this.ntitle = ntitle;
}
public String getNdate() {
	return ndate;
}
public void setNdate(String ndate) {
	this.ndate = ndate;
}
public String getNcontent() {
	return ncontent;
}
public void setNcontent(String ncontent) {
	this.ncontent = ncontent;
}
public int getNreadcnt() {
	return nreadcnt;
}
public void setNreadcnt(int nreadcnt) {
	this.nreadcnt = nreadcnt;
}
public String getId() {
	return id;
}
public void setId(String id) {
	this.id = id;
}


}
