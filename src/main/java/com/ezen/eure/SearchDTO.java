package com.ezen.eure;

public class SearchDTO {  //페이징 처리 1
            // 검색어,현재페이지,시작페이지,끝페이지,게시글총개수,페이지당글개수,마지막페이지,시작,끝
   private int nowPage, startPage, endPage, total, cntPerPage, lastPage, start, end;
   private int cntPage=10;  //한 화면에 표시하고자 하는 블럭의 수
   public String keyword;
   
   public int getCntPage() {
	return cntPage;
   }
   public void setCntPage(int cntPage) {
	   this.cntPage = cntPage;
   }
   public SearchDTO() {
      super();
      // TODO Auto-generated constructor stub
   }				
   public SearchDTO(String keyword, int total, int nowPage, int cntPerPage) {
	  setKeyword(keyword);
	  setNowPage(nowPage);
      setCntPerPage(cntPerPage);
      setTotal(total);
      calcLastPage(getTotal(), getCntPerPage());
      calcStartEndPage(getNowPage(), cntPage);
      calcStartEnd(getNowPage(), getCntPerPage());
           
   }   
   // 제일마지막페이지계산				
   public void calcLastPage(int total, int cntPerPage) {
	   setLastPage((int) Math.ceil((double)total / (double)cntPerPage));
   }
   //시작,끝페이지 계산								
   public void calcStartEndPage(int nowPage, int cntPage) {
      setEndPage(((int)Math.ceil((double)nowPage / (double)cntPage)) * cntPage);      
      if (getLastPage() < getEndPage()) {
         setEndPage(getLastPage());
      }
      setStartPage(getEndPage() - cntPage + 1);
      if(getStartPage()<1) {		
    	  setStartPage(1);
      }
   }
   
   // DB 쿼리에 사용할 시작,끝값 계산
   public void calcStartEnd(int nowPage, int cntPerPage) {
      setEnd(nowPage * cntPerPage);
      setStart(getEnd() - cntPerPage + 1);
   }


	public String getKeyword() {
		return keyword;
	}
	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}
	public int getNowPage() {
		return nowPage;
	}
	public void setNowPage(int nowPage) {
		this.nowPage = nowPage;
	}
	public int getStartPage() {
		return startPage;
	}
	public void setStartPage(int startPage) {
		this.startPage = startPage;
	}
	public int getEndPage() {
		return endPage;
	}
	public void setEndPage(int endPage) {
		this.endPage = endPage;
	}
	public int getTotal() {
		return total;
	}
	public void setTotal(int total) {
		this.total = total;
	}
	public int getCntPerPage() {
		return cntPerPage;
	}
	public void setCntPerPage(int cntPerPage) {
		this.cntPerPage = cntPerPage;
	}
	public int getLastPage() {
		return lastPage;
	}
	public void setLastPage(int lastPage) {
		this.lastPage = lastPage;
	}
	public int getStart() {
		return start;
	}
	public void setStart(int start) {
		this.start = start;
	}
	public int getEnd() {
		return end;
	}
	public void setEnd(int end) {
		this.end = end;
	}
	 
	   
}

//System.out.println("전체 레코드의 수"+getTotal());
//System.out.println("전체 페이지의 수"+getLastPage());
//System.out.println("시작 페이지"+getStartPage());
//System.out.println("끝 페이지"+getEndPage());     
