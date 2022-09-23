package com.ezen.eure;

import java.util.ArrayList;

public interface Service {
	//로그인 관련
	public LoginDTO login(String id, String pw, String email);
	public void insert(String name, String sb, String address, String id, String pw, String email, String birth, String tel);
	public AdminDTO login2(String id, String pw);
	//1:1문의 및 공지사항
	public ArrayList<OneDTO> qsout(int custnum);
	public void qsinsert(String title, String content, String qlist, int custnum);
	public OneDTO qsdetail(int num);
	//차량 등록 관련
	public ArrayList<CarDTO> search();
	public void carsave(String carnum, String carbrand, String carname, String fueltype,String origin, String cyear, String color,
			int km, int price, String content, int custnum);
	//이차어때
	public ArrayList<HowDTO> howlistselect();
	public void howsave(String photo, String hname, String htitle, String good, String bad, String hcontent,
			String score);
	
	public HowDTO howdetail(String hname);


	public AdminDTO noticeid(String id);
}
