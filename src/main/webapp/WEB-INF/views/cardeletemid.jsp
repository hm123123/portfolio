<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
p, a, h1, h2, h3, h4, h5, h6 {
       transform: skew(-0.1deg);
   }
   
   body{
      margin: 0 auto;
   }
   
   .allwrap{
    /*  margin-bottom: 150px;
      height:800px; */
   }
   
   .callimg{
      position:relative;
   }
   
   .txt{
      width:1280px;
      margin: 0 auto;
   }
   
   .callimg .lefttxt{
      text-align:left;
      color:#fff;
      float: left;
         
      position:absolute;
      top:0;
      
      line-height:120px;
   }
   
   .deltit{
         width:1280px;
         border:2px solid #eee;
         height:60px;
         line-height:60px;
         margin: 0 auto;
         margin-top:30px;
         margin-bottom: 15px;
   }
   
   .delall{
      width: 1280px;
      height:520px;
      margin: 0 auto;
      border:2px solid #eee;
   }
   
   .title{
         width:1250px;
       margin: 0 auto;
       height:80px;
       line-height:80px;
       background-color: #eee;
       margin-top: 15px;
   }
   
   .delbrand{
         float: left;
         margin-left:20px;
   }
   
   .readcnt{
   
       transform: skew(-0.1deg);
      float: right;
      color:#444;
      font-size:14px;
      font-weight:bold;
      margin-right:20px;
   }
   
   .ming{
      width:1250px;
      border-bottom:2px solid #eee;
      margin: 0 auto; 
   }
   
   .delcon{
      width: 1250px;
      margin: 0 auto;
   }
   
   .conlist{
      margin-top: 39px;
      border-bottom:2px solid #eee;
   }
   
   .delcon>ul{
      width:100%;
      height:70px;
      text-align:left;
   }
   
   .delcon>ul>li{
      width: 100px;
      height: 25px;
      line-height:25px;
   
      margin-bottom: 10px;
      transform: skew(-0.1deg);
      text-align: left;
      
      float: left;
      /* display: inline-block; */
   }
   
   .delcon>ul>li:nth-child(n+4){
         width: 150px;
   }
   
   
   .delcon>ul>li>a{
   border-radius:5px;
      background-color:#444;
      color:#fff;
      font-weight:bold;
      padding: 5px 7px;
      margin-right:5px;
   }

   .delcon>ul>li>p{
      display:inline-block;
   }
   
   .btn{
      height:65px;
      line-height: 65px;
   }
   

   
</style>
</head>
<body>
<div class="allwrap">
   <div class="callimg">
            <img src="./image/carout1img.jpg" width="1950px;">
            
            <div class="txt">
               <div class="lefttxt">
                  <h2>삭제 내용</h2>
               </div>
            </div>
   </div>
      
      <div class="deltit">
         <h3>해당 내용을 삭제하시겠습니까?</h3>
      </div>
      
      <div class="delall">
      <form action="cardelete" method="post" name="form1">
         <div class="title">
            <div class="delbrand"><h2>${dto.carbrand} ${dto.carname }</h2></div>
            <div class="readcnt">[조회수] ${dto.readcnt}</div>
         </div>
         
         
         
         <div class="ming"><img src="./image/${dto.picture }" width="500" height="250"></div>
         
         <div class="delcon">
            <ul class="conlist">
               <li><a>연료</a><p>${dto.fueltype}</p></li>
               <li><a>연식</a><p>${dto.cyear}</p></li>
               <li><a>색상</a><p>${dto.color }</p></li>
               <li><a>주행거리</a><p>${dto.km }</p></li>
               <li><a>가격</a><p>${dto.price }</p></li>
               <li><a>참고사항</a><p>${dto.content }</p></li>
            </ul>
         </div>
         
         <div class="btn">
            <input type="submit" value="삭제">
            <input type="button" value="취소" onclick="location.href='index'">
         </div>

      <input type="hidden" name="carnum" value="${dto.carnum }">
      <input type="hidden" name="id" value="${dto.id }">
      </form>
   </div>
</div>
</body>
</html>