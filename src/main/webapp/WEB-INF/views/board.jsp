<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">

   @font-face {
    font-family: 'KoPubDotum';
    src: url('../src/fonts/KoPubDotumBold_0.ttf') format('truetype');
   }
   
   .boardbody{
      margin:0 auto;
       width:1280px;
       font-family: 'KoPubDotum';
       padding-top: 52px;
       padding-bottom: 60px;
   }
   
   .boardimg{
      position:relative;
   }
   
   .txt{
      width:1280px;
      margin: 0 auto;
   }
   
   .boardimg .lefttxt{
      text-align:left;
      color:#fff;
      float: left;
      
      position:absolute;
      top:0;
      
      line-height:120px;
   }
   table{
   border-collapse: collapse;
   width:1280px;
   margin: 0 auto;
   
   }
   th{
   background-color: #eee;
    height: 55px; 
   }
   td{
   height: 55px;
   }
   .tdtitle{
   text-align: left;
   padding-left: 31px;
   }
   .page{
   padding-top: 16px;
   }
</style>
</head>
<body>
   <div class="boardimg">
      <img src="./image/boardimg.jpg" width="1950px;">
      
      <div class="txt">
         <div class="lefttxt">
            <h1>공지사항</h1>
         </div>
      </div>
   </div>
   <div class="boardbody">
   <table border="1">
   <tr><th width="90px">번호</th><th>제목</th><th>작성자</th></tr>
   <c:forEach items="${view }" var="aa">
   <tr>
   <td>${aa.nnum }</td>
    <td class="tdtitle"><a href="hostboarddetail?nnum=${aa.nnum}">${aa.ntitle}</a></td>
   <td width="135px">${aa.id}</td>
   </tr>
   </c:forEach>
   </table>
<!-- 페이징처리 -->
<div class="page">
      <c:forEach begin="${paging.startPage }" end="${paging.endPage}" var="p"> 
         <c:choose>
            <c:when test="${p == paging.nowPage }">
                  <!--  현재페이지가 반복횟수랑 똑같으면?? 진하게-->
               <b>${p}</b>
            </c:when>   
            <c:when test="${p != paging.nowPage }">
               <a href="notice?nowPage=${p}&cntPerPage=${paging.cntPerPage}">${p}</a>
            </c:when>   
         </c:choose>
      </c:forEach>
   </div>
</div>
</body>
</html>