package com.ezen.eure;

import java.io.File;
import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;


@Controller
public class HomeController {
	@Autowired
	SqlSession sqlSession;
	
	
	@RequestMapping(value = "/")
	public String main(HttpServletRequest request, Model mo) {
		HttpSession hs = request.getSession();
		hs.setAttribute("loginstate", false);
		hs.setAttribute("adminstate", false);
		
		
		return "main";
	}
	
	@RequestMapping(value="/index")
	public String ko4() {
		
		
		return "main";
	}
	
	@RequestMapping(value="/Joininput")
	public String join() {
		
		
		
		return "Joininput";
	}
	

	
	@RequestMapping(value="/save", method = RequestMethod.POST)
	public String hc2(HttpServletRequest request) {
		
		String name=request.getParameter("name");
		String sb=request.getParameter("sb");
		String address=request.getParameter("address");
		String id=request.getParameter("id");
		String pw=request.getParameter("pw");
		String email=request.getParameter("email");
		String birth=request.getParameter("birth");
		String tel=request.getParameter("tel");
		Service ser= sqlSession.getMapper(Service.class);
		ser.insert(name, sb, address, id, pw, email, birth, tel);
		return "login";
	}
	
	@RequestMapping(value="/logingo")
	public String logingo()
	{
		return "login";
	}
	

	
	@RequestMapping(value="/login",method = RequestMethod.POST)
	public ModelAndView login(HttpServletRequest request,  RedirectAttributes ra) {
		ModelAndView mav = new ModelAndView();
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String email = request.getParameter("email");
		Service ser = sqlSession.getMapper(Service.class);
		LoginDTO dto = ser.login(id,pw, email);
		AdminDTO dto2 = ser.login2(id,pw);
		if(dto!=null)
		{
			HttpSession hs = request.getSession();
			hs.setAttribute("member", dto);
			hs.setAttribute("loginstate", true);
			hs.setMaxInactiveInterval(300);
			mav.setViewName("redirect:index");
		}
		else if(dto2!=null)
		{
			HttpSession hs = request.getSession();
			hs.setAttribute("admin1", dto2);
			hs.setAttribute("adminstate", true);
			hs.setMaxInactiveInterval(300);
			mav.setViewName("redirect:index");
		}
		else 
		{
			ra.addAttribute("result","loginfail");
			mav.setViewName("redirect:logingo");
		}
		return mav;
	}
	@RequestMapping(value="/logout")
	public String logout(HttpServletRequest request)
	{
		HttpSession hs =request.getSession();
		hs.removeAttribute("member");
		hs.removeAttribute("loginstate");
		hs.removeAttribute("adminstate");
		hs.setAttribute("loginstate", false);
		hs.setAttribute("adminstate", false);
		return "redirect:index";
	}
	
	@RequestMapping(value="/carinput")
	public String ci(HttpServletRequest request, Model mo ,RedirectAttributes ra)
	{
        HttpSession hs=request.getSession();
        if(hs.getAttribute("loginstate").equals(true))
        {		
        	    return "carinput";
        }
        else
        {
           return "redirect:logingo3";
        }
	}
	
	@RequestMapping(value="/logingo3")
	public String lg3()
	{
		return "logincar";
	}
	
	@RequestMapping(value="/carlogin",method = RequestMethod.POST)
	public ModelAndView login3(HttpServletRequest request,  RedirectAttributes ra) {
		ModelAndView mav = new ModelAndView();
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String email = request.getParameter("email");		
		Service ser = sqlSession.getMapper(Service.class);
		LoginDTO dto = ser.login(id, pw, email);
		if(dto!=null)
		{
			HttpSession hs = request.getSession();
			hs.setAttribute("member", dto);
			hs.setAttribute("loginstate", true);
			hs.setMaxInactiveInterval(300);
			mav.setViewName("carinput");
		}
		else 
		{
			ra.addAttribute("result","loginfail");
			mav.setViewName("redirect:logingo");
		}
		return mav;
	}
	
	@RequestMapping(value = "/carsave",method = RequestMethod.POST)
	public String carinput2(HttpServletRequest request) {
		String carnum = request.getParameter("carnum");
		String carbrand = request.getParameter("carbrand");
		String carname = request.getParameter("carname");
		String fueltype = request.getParameter("fueltype");
		String origin = request.getParameter("origin");
		String cyear = request.getParameter("cyear");
		String color = request.getParameter("color");
		int km = Integer.parseInt(request.getParameter("km"));
		int price = Integer.parseInt(request.getParameter("price"));
		String content = request.getParameter("content");
		int custnum = Integer.parseInt(request.getParameter("custnum"));
		Service ser= sqlSession.getMapper(Service.class);
		ser.carsave(carnum,carbrand,carname,fueltype,origin,cyear,color,km,price,content,custnum);
		return "main";
	}
	
	@RequestMapping(value = "/search")
	public String search(HttpServletRequest request, Model mo) {
		String search = request.getParameter("search");
		Service ser = sqlSession.getMapper(Service.class);
		if(search.equals("search")) {
		ArrayList<CarDTO> list = ser.search();
		mo.addAttribute("list", list);
		}
		return "";
	}
	
	 //이차어때 목록
	   @RequestMapping(value = "/howlist")
	   public String how(Model mo){
	      
	      Service ser=sqlSession.getMapper(Service.class);

	      ArrayList<HowDTO> list=ser.howlistselect();
	      mo.addAttribute("list",list);
	      
	      return "howlist";
	   }
	   
	   
	   @RequestMapping(value = "/addlist")
	   public String add(){
	      
	      return "adcarinput";
	   }
	   
	   
	   private static final String CURR_IMAGE_REPO_PATH = "C:\\6spring\\Project01_Eurecar\\src\\main\\webapp\\image";
	   
	   @RequestMapping(method = RequestMethod.POST,value = "/howsave")
	   public String howsave(MultipartHttpServletRequest mul){

	      String hname =mul.getParameter("hname");
	      MultipartFile photo2=mul.getFile("photo");
	      String photo=photo2.getOriginalFilename();
	      String htitle =mul.getParameter("htitle");
	      String hcontent =mul.getParameter("hcontent");
	      String good =mul.getParameter("good");
	      String bad =mul.getParameter("bad");
	      String score =mul.getParameter("score");
	      Service ser= sqlSession.getMapper(Service.class);
	      ser.howsave(photo,hname,htitle,good,bad,hcontent,score);
	      return "redirect:index";
	   }
	   
	   private List<String> fileProcess(MultipartHttpServletRequest multipartRequest) throws Exception{
	      List<String> fileList= new ArrayList<String>();
	      //첨부된 화일의 이름을 순차적으로 가져온다
	      Iterator<String> fileNames = multipartRequest.getFileNames();
	      while(fileNames.hasNext()){
	         String fileName = fileNames.next();
	         //파일을 업로드 하는 화일 서비스 인터페이스
	         MultipartFile mFile = multipartRequest.getFile(fileName);
	         //업로드 되는 파일의 이름
	         String originalFileName=mFile.getOriginalFilename();
	         fileList.add(originalFileName);
	         File file = new File(CURR_IMAGE_REPO_PATH +"\\"+ fileName);
	         mFile.transferTo(new File(CURR_IMAGE_REPO_PATH +"\\"+ originalFileName)); //임시로 저장된 multipartFile을 실제 파일로 전송
	         }
	      return fileList;//화일들의 목록 크큭
	   }
	   //이차어때 상세페이지
	   @RequestMapping(value="/howlog")
		public String qs(HttpServletRequest request, Model mo ,RedirectAttributes ra)
		{
	        HttpSession hs=request.getSession();
	        if(hs.getAttribute("loginstate").equals(true))
	        {
	         	   String hname=request.getParameter("hname");
				   Service ser=sqlSession.getMapper(Service.class);
				   HowDTO dto=ser.howdetail(hname);
				   mo.addAttribute("dto",dto);
	        	    return "howdetail";
	        }
	        else if(hs.getAttribute("adminstate").equals(true))
	        {
	        	return "howdetail";
	        }

	           String hname=request.getParameter("hname");
			   Service ser=sqlSession.getMapper(Service.class);
			   HowDTO dto=ser.howdetail(hname);
			   mo.addAttribute("dto",dto);
	        return "loginhow";
		}


		
		@RequestMapping(value="/login4",method = RequestMethod.POST)
		public ModelAndView login4(HttpServletRequest request,  RedirectAttributes ra) {
			ModelAndView mav = new ModelAndView();
			String id = request.getParameter("id");
			String pw = request.getParameter("pw");
			String email = request.getParameter("email");
			Service ser = sqlSession.getMapper(Service.class);
			LoginDTO dto = ser.login(id, pw, email);
			if(dto!=null)
			{
				HttpSession hs = request.getSession();
				hs.setAttribute("member", dto);
				hs.setAttribute("loginstate", true);
				hs.setMaxInactiveInterval(300);
				mav.setViewName("howdetail");
			}
			else 
			{
				ra.addAttribute("result","loginfail");
				mav.setViewName("redirect:logingo4");
			}
			return mav;
		}
		
		   @RequestMapping(value = "/howdetail")
		   public String howdetail(HttpServletRequest request,Model mo){

			   String hname=request.getParameter("hname");
			   Service ser=sqlSession.getMapper(Service.class);
			   HowDTO dto=ser.howdetail(hname);

			   mo.addAttribute("dto",dto);

		      return "howdetail";
		   }
}
