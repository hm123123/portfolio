package com.ezen.board;

import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Date;
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
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.ezen.eure.AdminDTO;
import com.ezen.eure.HowDTO;
import com.ezen.eure.LoginDTO;
import com.ezen.eure.OneDTO;
import com.ezen.eure.Service;


@Controller
public class BoardController {
   @Autowired
   SqlSession sqlSession;
   
   //1:1문의
   @RequestMapping(value="/qs")
   public String qs(HttpServletRequest request, Model mo ,RedirectAttributes ra)
   {
        HttpSession hs=request.getSession();
        if(hs.getAttribute("loginstate").equals(true))
        {
               return "onenotice";
        }
        else if(hs.getAttribute("adminstate").equals(true))
        {
           return "onenotice";
        }
        return "redirect:logingo2";
   }
   
   @RequestMapping(value="/logingo2")
   public String logingo()
   {
      return "loginnotice";
   }

   
   @RequestMapping(value="/login2",method = RequestMethod.POST)
   public ModelAndView login(HttpServletRequest request,  RedirectAttributes ra) {
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
         mav.setViewName("onenotice");
      }
      else 
      {
         ra.addAttribute("result","loginfail");
         mav.setViewName("redirect:logingo2");
      }
      return mav;
   }
   
   

   @RequestMapping(value="/qsave", method = RequestMethod.POST)
   public String onenoticesave(HttpServletRequest request) {
      String title=request.getParameter("title");
      String content=request.getParameter("content");
      String qlist=request.getParameter("qlist");
      int custnum = Integer.parseInt(request.getParameter("custnum"));
      Service ser = sqlSession.getMapper(Service.class);
      ser.qsinsert(qlist, title, content, custnum);
      return "onenotice";
   }   
   
   @RequestMapping(value="/qsout")
   public String qsout(HttpServletRequest request, Model mo,CustnumPageDTO dto) {
      
      int custnum = Integer.parseInt(request.getParameter("custnum"));
      
       String nowPage = request.getParameter("nowPage");
         String cntPerPage=request.getParameter("cntPerPage");
           Service ser = sqlSession.getMapper(Service.class);
            //전체 레코드수 구함
            int total=ser.cntone(custnum);
            if(nowPage==null && cntPerPage == null) {
               nowPage="1";
               cntPerPage="5";
            }
            else if(nowPage==null) {
               nowPage="1";
            }
            else if(cntPerPage==null) {
               cntPerPage="5";
            }      
            dto=new CustnumPageDTO(total,Integer.parseInt(nowPage),Integer.parseInt(cntPerPage),custnum);
            mo.addAttribute("paging",dto);
            mo.addAttribute("view",ser.qsout1(dto));
            mo.addAttribute("custnum",custnum);
      return "qsout";
   }
   
   

   @RequestMapping(value="/qsout2")
   public String backqslist(HttpServletRequest request, Model mo, CustnumPageDTO dto) {
      int custnum = Integer.parseInt(request.getParameter("custnum"));
      
       String nowPage = request.getParameter("nowPage");
         String cntPerPage=request.getParameter("cntPerPage");
           Service ser = sqlSession.getMapper(Service.class);
            //전체 레코드수 구함
            int total=ser.cntone(custnum);
            if(nowPage==null && cntPerPage == null) {
               nowPage="1";
               cntPerPage="5";
            }
            else if(nowPage==null) {
               nowPage="1";
            }
            else if(cntPerPage==null) {
               cntPerPage="5";
            }      
            dto=new CustnumPageDTO(total,Integer.parseInt(nowPage),Integer.parseInt(cntPerPage),custnum);
            mo.addAttribute("paging",dto);
            mo.addAttribute("view",ser.qsout1(dto));
            mo.addAttribute("custnum",custnum);
      return "qsout";
   }
   
   @RequestMapping(value="/onedelete")
   public String onedelete(HttpServletRequest request, Model mo, CustnumPageDTO dto) {
      int custnum = Integer.parseInt(request.getParameter("custnum"));
      int num = Integer.parseInt(request.getParameter("num"));
      Service ser = sqlSession.getMapper(Service.class);
      ser.qsdelete(num);
      
       String nowPage = request.getParameter("nowPage");
         String cntPerPage=request.getParameter("cntPerPage");
            //전체 레코드수 구함
            int total=ser.cntone(custnum);
            if(nowPage==null && cntPerPage == null) {
               nowPage="1";
               cntPerPage="5";
            }
            else if(nowPage==null) {
               nowPage="1";
            }
            else if(cntPerPage==null) {
               cntPerPage="5";
            }      
            dto=new CustnumPageDTO(total,Integer.parseInt(nowPage),Integer.parseInt(cntPerPage),custnum);
            mo.addAttribute("paging",dto);
            mo.addAttribute("view",ser.qsout1(dto));
            mo.addAttribute("custnum",custnum);
      return "qsout";
   }
   
   @RequestMapping(value="/onedetail")
   public String detail(HttpServletRequest request, Model mo) {
      int num = Integer.parseInt(request.getParameter("num"));
      
      Service ser = sqlSession.getMapper(Service.class);
      OneDTO dto = ser.qsdetail(num);
      mo.addAttribute("dto",dto);
      return "onedetail";
   }
   
   @RequestMapping(value="/oneupdate")
   public String oneupdate(HttpServletRequest request,Model mo) {
      int num = Integer.parseInt(request.getParameter("num"));
      Service ser = sqlSession.getMapper(Service.class);
      OneDTO dto =  ser.qsupdate(num);
      mo.addAttribute("dto",dto);
      return "oneupdate1";
   }
   
   @RequestMapping(value="/oneupdate2", method = RequestMethod.POST)
   public String oneupdate2(HttpServletRequest request, Model mo, CustnumPageDTO dto) {
      int custnum = Integer.parseInt(request.getParameter("custnum"));
      int num = Integer.parseInt(request.getParameter("num"));
      String title=request.getParameter("title");
      String qlist=request.getParameter("qlist");
      Service ser = sqlSession.getMapper(Service.class);
      ser.qsupdate2(num, qlist, title);
       
      String nowPage = request.getParameter("nowPage");
         String cntPerPage=request.getParameter("cntPerPage");
            //전체 레코드수 구함
            int total=ser.cntone(custnum);
            if(nowPage==null && cntPerPage == null) {
               nowPage="1";
               cntPerPage="5";
            }
            else if(nowPage==null) {
               nowPage="1";
            }
            else if(cntPerPage==null) {
               cntPerPage="5";
            }      
            dto=new CustnumPageDTO(total,Integer.parseInt(nowPage),Integer.parseInt(cntPerPage),custnum);
            mo.addAttribute("paging",dto);
            mo.addAttribute("view",ser.qsout1(dto));
            mo.addAttribute("custnum",custnum);
      return "qsout";
   }   
   
     //공지사항
     @RequestMapping(value="/notice")
      public String NOTICE(HttpServletRequest request,Model mo, NoticePageDTO dto2) {
        HttpSession session=request.getSession();
         if( (Boolean) session.getAttribute("adminstate"))
         {   
            
               String nowPage = request.getParameter("nowPage");
               String cntPerPage=request.getParameter("cntPerPage");
                  NoticeService notice = sqlSession.getMapper(NoticeService.class);
                  //전체 레코드수 구함
                  int total=notice.cntnotice();
                  if(nowPage==null && cntPerPage == null) {
                     nowPage="1";
                     cntPerPage="5";
                  }
                  else if(nowPage==null) {
                     nowPage="1";
                  }
                  else if(cntPerPage==null) {
                     cntPerPage="5";
                  }      
                  dto2=new NoticePageDTO(total,Integer.parseInt(nowPage),Integer.parseInt(cntPerPage));
                  mo.addAttribute("paging",dto2);
                  mo.addAttribute("view",notice.selectnotice(dto2));
                  
              String id = request.getParameter("id");
            Service ser = sqlSession.getMapper(Service.class);
            AdminDTO ndto = ser.noticeid(id);
            mo.addAttribute("ndto",ndto);
            return "hostboard";
         }
         else if( (Boolean) session.getAttribute("loginstate"))
         {     
         String nowPage = request.getParameter("nowPage");
         String cntPerPage=request.getParameter("cntPerPage");
            NoticeService notice = sqlSession.getMapper(NoticeService.class);
            //전체 레코드수 구함
            int total=notice.cntnotice();
            if(nowPage==null && cntPerPage == null) {
               nowPage="1";
               cntPerPage="5";
            }
            else if(nowPage==null) {
               nowPage="1";
            }
            else if(cntPerPage==null) {
               cntPerPage="5";
            }      
            dto2=new NoticePageDTO(total,Integer.parseInt(nowPage),Integer.parseInt(cntPerPage));
            mo.addAttribute("paging",dto2);
            mo.addAttribute("view",notice.selectnotice(dto2));
            
            return "board";
         }
          String nowPage = request.getParameter("nowPage");
          String cntPerPage=request.getParameter("cntPerPage");
            NoticeService notice = sqlSession.getMapper(NoticeService.class);
            //전체 레코드수 구함
            int total=notice.cntnotice();
            if(nowPage==null && cntPerPage == null) {
               nowPage="1";
               cntPerPage="5";
            }
            else if(nowPage==null) {
               nowPage="1";
            }
            else if(cntPerPage==null) {
               cntPerPage="5";
            }      
            dto2=new NoticePageDTO(total,Integer.parseInt(nowPage),Integer.parseInt(cntPerPage));
            mo.addAttribute("paging",dto2);
            mo.addAttribute("view",notice.selectnotice(dto2));
            return "board";
      }
      //공지사항 끝   
      //호스트 공지사항 글쓰기 시작
   
      @RequestMapping(value="/hostboardinput")
      public String hostboardinput(HttpServletRequest request, Model mo) {
         String id = request.getParameter("id");
         Service ser = sqlSession.getMapper(Service.class);
         AdminDTO ndto = ser.noticeid(id);
         mo.addAttribute("ndto",ndto);
         return "hostboardinput";
      }
      @RequestMapping(value="/hostboardsave")
         public String hostboardsave(HttpServletRequest request, Model mo, NoticePageDTO dto2) {
            
               String ntitle = request.getParameter("ntitle");
               String ncontent = request.getParameter("ncontent");
               String id = request.getParameter("id");
               NoticeService nser = sqlSession.getMapper(NoticeService.class);
               Service ser = sqlSession.getMapper(Service.class);
               nser.hostboardinsert(ntitle,ncontent,id);
               AdminDTO ndto = ser.noticeid(id);
               ArrayList<NoticeDTO> nlist = nser.boardout();
               mo.addAttribute("nlist",nlist);
               mo.addAttribute("ndto",ndto);
                  String nowPage = request.getParameter("nowPage");
                  String cntPerPage=request.getParameter("cntPerPage");
                     NoticeService notice = sqlSession.getMapper(NoticeService.class);
                     //전체 레코드수 구함
                     int total=notice.cntnotice();
                     if(nowPage==null && cntPerPage == null) {
                        nowPage="1";
                        cntPerPage="5";
                     }
                     else if(nowPage==null) {
                        nowPage="1";
                     }
                     else if(cntPerPage==null) {
                        cntPerPage="5";
                     }      
                     dto2=new NoticePageDTO(total,Integer.parseInt(nowPage),Integer.parseInt(cntPerPage));
                   mo.addAttribute("paging",dto2);
                   mo.addAttribute("view",notice.selectnotice(dto2));
                     
            return "hostboard";
      }
      //호스트 공지사항 글쓰기 끝
      //호스트 공지사항 결과보기 시작
    
      //호스트 공지사항 결과보기 끝.
      //호스트 자세히보기
   
      public void readcnt(int nnum) {
            NoticeService ss= sqlSession.getMapper(NoticeService.class);
            ss.readcnt(nnum);
         }
         
         @RequestMapping(value="/hostboarddetail")
         public String hostboarddetail(HttpServletRequest request, Model mo) {
            int nnum= Integer.parseInt(request.getParameter("nnum"));
            readcnt(nnum);
            NoticeService nser = sqlSession.getMapper(NoticeService.class);
            NoticeDTO ndto = nser.hostboarddetail(nnum);
            mo.addAttribute("ndto",ndto);
            return "hostboarddetail";
         }
         @RequestMapping(value="/hostboarddetail2")
         public String hostboarddetail2(HttpServletRequest request, Model mo) {
            int nnum= Integer.parseInt(request.getParameter("nnum"));
            readcnt(nnum);
            NoticeService nser = sqlSession.getMapper(NoticeService.class);
            NoticeDTO ndto = nser.hostboarddetail(nnum);
            mo.addAttribute("ndto",ndto);
            return "hostboarddetail2";
         }
       //호스트 자세히보기 끝
         //공지사항 삭제
         @RequestMapping(value="/noticedelete")
         public String noticedelete(HttpServletRequest request, Model mo, NoticePageDTO dto2) {
            int nnum= Integer.parseInt(request.getParameter("nnum"));
            NoticeService nser = sqlSession.getMapper(NoticeService.class);
            nser.noticedelete(nnum);
            String nowPage = request.getParameter("nowPage");
            String cntPerPage=request.getParameter("cntPerPage");
               NoticeService notice = sqlSession.getMapper(NoticeService.class);
               //전체 레코드수 구함
               int total=notice.cntnotice();
               if(nowPage==null && cntPerPage == null) {
                  nowPage="1";
                  cntPerPage="5";
               }
               else if(nowPage==null) {
                  nowPage="1";
               }
               else if(cntPerPage==null) {
                  cntPerPage="5";
               }      
               dto2=new NoticePageDTO(total,Integer.parseInt(nowPage),Integer.parseInt(cntPerPage));
               mo.addAttribute("paging",dto2);
               mo.addAttribute("view",notice.selectnotice(dto2));
            String id = request.getParameter("id");
         Service ser = sqlSession.getMapper(Service.class);
         AdminDTO ndto = ser.noticeid(id);
         mo.addAttribute("ndto",ndto);
            return "hostboard";
         }
         @RequestMapping(value="/noticeupdate")
        public String noticeupdate(HttpServletRequest request,Model mo) {
           int nnum = Integer.parseInt(request.getParameter("nnum"));
           NoticeService nser = sqlSession.getMapper(NoticeService.class);
           NoticeDTO ndto =  nser.hostboarddetail(nnum);
           mo.addAttribute("ndto",ndto);
           return "hostboardinput1";
         }
         @RequestMapping(value="/noticeupdate2", method = RequestMethod.POST)
        public String noticeupdate2(HttpServletRequest request, Model mo, NoticePageDTO dto) {
           String ntitle = request.getParameter("ntitle");
           String ncontent= request.getParameter("ncontent");
           int nnum = Integer.parseInt(request.getParameter("nnum"));
           NoticeService nser = sqlSession.getMapper(NoticeService.class);
           nser.noticeupdate2(ntitle,ncontent,nnum);
            
            String nowPage = request.getParameter("nowPage");
            String cntPerPage=request.getParameter("cntPerPage");
               NoticeService notice = sqlSession.getMapper(NoticeService.class);
               //전체 레코드수 구함
               int total=notice.cntnotice();
               if(nowPage==null && cntPerPage == null) {
                  nowPage="1";
                  cntPerPage="5";
               }
               else if(nowPage==null) {
                  nowPage="1";
               }
               else if(cntPerPage==null) {
                  cntPerPage="5";
               }      
               dto=new NoticePageDTO(total,Integer.parseInt(nowPage),Integer.parseInt(cntPerPage));
               mo.addAttribute("paging",dto);
               mo.addAttribute("view",notice.selectnotice(dto));
           return "hostboard";
        }   
        
}
