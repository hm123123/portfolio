package com.ezen.eure;

import java.util.ArrayList;


import com.ezen.board.CustnumPageDTO;

public interface Service {
	//로그인 관련
	public LoginDTO login(String id, String pw, String email);
	public void insert(String name, String sb, String address, String id, String pw, String email, String birth, String tel);
	public AdminDTO login2(String id, String pw);
	//1:1문의 및 공지사항
	public ArrayList<OneDTO> qsout(int custnum);
	public void qsinsert(String title, String content, String qlist, int custnum);
	public OneDTO qsdetail(int num);
	public void qsdelete(int num);
	public OneDTO qsupdate(int num);
	public void qsupdate2(int num, String qlist, String title);
	public ArrayList<OneDTO> qsout1(CustnumPageDTO dto);
	public int cntone(int custnum);
	//차량 등록 관련
	public ArrayList<CarDTO> search();
	public void carsave(String carnum, String carbrand, String carname, String fueltype,String origin, String cyear, String color,
			int km, int price, String content, String picture, String picture2, String picture3, int custnum, String id);
	
	public ArrayList<CustnumPageDTO2> mycarlist(CustnumPageDTO2 dto);
	public int cntmycar(int custnum);
	public CarDTO cardeletemid(String carnum);
	public void cardelete(String carnum);
	public int cntall(String id);
	public CarDTO carupdatemid(String carnum);
	public void carupdate(String carbrand, String carname, String fueltype, String origin, String cyear, String color,
			int km, int price, String content, String picture, String picture2, String picture3, int custnum, String id, String carnum);
	public CarDTO cardetail(String carnum);
	public int cntcompare(String carname);
	public ArrayList<CarDTO> compare(CompareDTO dto);
	//이차어때
	public ArrayList<HowDTO> howlistselect();
	public void howsave(String photo, String hname, String htitle, String good, String bad, String hcontent,
			String score);
	public HowDTO howdetail(String hname);
	public AdminDTO noticeid(String id);
	public LoginDTO howlogindetail(String id, String custnum);
	
	public ArrayList<ReplyDTO> selectreply(int hcarnum);
	public void inputreply(String id, String rcontent, int hcarnum);
	public AdminDTO howlistgetid(String id); //
	public LoginDTO howlistgetmemberid(String id);
	public HowDTO howlogingodetail(int hcarnum);
	public int cntkuk();
	public ArrayList<CarDTO> selectnotice(PageDTO dto);
	public int cntsu();
	public ArrayList<CarDTO> selectnotice2(PageDTO dto);
	public int cntsearch(String keyword);
	public ArrayList<CarDTO> selectnotice3(SearchDTO dto);
	public void carreadcnt(String carnum);
	
	//메인
	public ArrayList<CarDTO> bcselect();
	//필터
	   public int cntprefer(String prefer);
	   public ArrayList<CarDTO> prefer(PreferDTO dto);
	public ArrayList<CarDTO> hyundae(PageDTO dto);
	public ArrayList<CarDTO> ssang(PageDTO dto);

	
	//상담하기
	 public LoginDTO sangdam(String id);
	   public CarDTO sangdam2(String carnum);
	   public void sangsave(String carnum, String carbrand, String carname, int price, String picture,	String name, String address, String tel, int custnum, String id);
	   public ArrayList<SangdamDTO> mypage(CustnumPageDTO2 dto);
	   public void sangdelete(String id);
	
}
