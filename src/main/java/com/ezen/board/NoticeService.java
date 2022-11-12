package com.ezen.board;

import java.util.ArrayList;

import com.ezen.board.NoticeDTO;
import com.ezen.board.CustnumPageDTO;


public interface NoticeService {


   public void hostboardinsert(String ntitle, String ncontent, String id);
   ArrayList<NoticeDTO> boardout();
   
   public int cntnotice();
   public ArrayList<NoticeDTO> selectnotice(NoticePageDTO dto2);
   
   NoticeDTO hostboarddetail(int nnum);
   public void readcnt(int nnum);
   
   public void noticedelete(int nnum);
   public void noticeupdate2(String ntitle, String ncontent, int nnum);
}