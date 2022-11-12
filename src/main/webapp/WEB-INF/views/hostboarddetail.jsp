<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
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
   .hostboarddetailbody{
   margin:0 auto;
       width:1280px;
        padding-top: 52px;
       padding-bottom: 60px;
   }
      
   body{
      width:100%;
      text-align: center;
      font-family: 'KoPubDotum';
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
   .write{
      width: 100%;
      height:auto;
      border:1.5px solid #ddd;
      line-height: 30px;
      margin-bottom: 30px;
      padding: 50px 0 0 0;
   }
   .write .check{
      width:93.6%;
      margin: 0 auto; 
      text-align: left;
      border-bottom:1.5px solid #ddd;
      padding-bottom: 60px;
      font-weight: bold;
   }
   .ncontent{
  	   padding:20px 30px  200px 30px;
      width:93.6%;
      margin: 0 auto; 
      text-align: left;
        overflow: auto;
    overflow-wrap: anywhere;
   }
  .btn{
		width:1280px;
		margin: 0 auto;
		
	}
	.btn a{
		border :1px solid #ddd;
		background-color: #eee;
		padding:5px;
		font-size:14px;
	}

  	
  	.allwrap{
  		height:800px;
  		margin-bottom: 400px;
  	}
</style>
</head>
<body>
<div class="allwrap">
   <div class="boardimg">
      <img src="./image/boardimg.jpg" width="1950px;">
      
      <div class="txt">
         <div class="lefttxt">
            <h1>공지사항</h2>
         </div>
      </div>
   </div>
	<div class="hostboarddetailbody">
	   <div class="write">
	      <div class="check">
	   <h2>${ndto.ntitle}</h2><br><br>
	   POSTED BY : ${ndto.id}<br>
	   <table><tr><th>
	   
	      <fmt:parseDate value="${ndto.ndate}" var="ndate" pattern="yyyy-MM-dd"/>
	      <fmt:formatDate value="${ndate }" pattern="yyyy.MM.dd"/>
	   </th><th style="padding-left: 970px;">조회수 ${ndto.nreadcnt}</th></tr>
	   </table>
	      </div>
	
	   <div class="ncontent">
	   ${ndto.ncontent}<br>
	   </div>
	   </div>
	      <div class="btn">
	  
	   <a href="notice?id=${ndto.id}">목록</a>
	   </div>
	</div>
</div>
</body>
</html>