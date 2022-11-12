package com.ezen.eure;

public class HowDTO {
   
   String hname,photo,htitle,hcontent,good,bad,score;
   int hcarnum;

   public HowDTO() {
      super();
      // TODO Auto-generated constructor stub
   }

public String getHname() {
	return hname;
}

public void setHname(String hname) {
	this.hname = hname;
}

public String getPhoto() {
	return photo;
}

public void setPhoto(String photo) {
	this.photo = photo;
}

public String getHtitle() {
	return htitle;
}

public void setHtitle(String htitle) {
	this.htitle = htitle;
}

public String getHcontent() {
	return hcontent;
}

public void setHcontent(String hcontent) {
	this.hcontent = hcontent;
}

public String getGood() {
	return good;
}

public void setGood(String good) {
	this.good = good;
}

public String getBad() {
	return bad;
}

public void setBad(String bad) {
	this.bad = bad;
}

public String getScore() {
	return score;
}

public void setScore(String score) {
	this.score = score;
}

public int getHcarnum() {
	return hcarnum;
}

public void setHcarnum(int hcarnum) {
	this.hcarnum = hcarnum;
}

public HowDTO(String hname, String photo, String htitle, String hcontent, String good, String bad, String score,
		int hcarnum) {
	super();
	this.hname = hname;
	this.photo = photo;
	this.htitle = htitle;
	this.hcontent = hcontent;
	this.good = good;
	this.bad = bad;
	this.score = score;
	this.hcarnum = hcarnum;
}

      
   
}