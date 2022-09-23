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

   body{
      width: 100%;
      margin: 0 auto;
      font-family: 'KoPubDotum';
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
   
   .alllist{
      margin-top:50px;
   }
   
   .list{
      width:1280px;
      margin: 0 auto;
   }
   
   .list ul{
      
   }
   
   .list li{
       margin: 0 15px 15px 0;
      /* background-color: #ccc; */
      border:1px solid #ccc;
      width:369px;
      height:369px;
      
      float: left;
      text-align: left;
      padding: 20px;
   }
   
   /* .list li:hover{
      background-color:rgba(0,0,0,0.5);
   } */
   
   span{
      padding-bottom: 15px;
   }
   
   
   .carname{
      font-weight: bold;
      font-size:20px;
   }
   
   .good{
      width:20px;
      height:10px;
      padding:2px 3px;;
      color:#fff;
      background-color: navy;
   }
   
   .bad{
      width:20px;
      height:10px;
      padding:2px 3px;;
      color:#fff;
      background-color: #222;
   }
   
   .photo img{
      width:100%;
   }
   
   .score{
      color: navy;
   }

</style>
</head>
<body>
   <div class="callimg">
      <img src="./image/howlistimg.jpg" width="1950px;">
      
      <div class="txt">
         <div class="lefttxt">
            <h1>이차어때</h2>
         </div>
      </div>
   </div>
   
      <div class="alllist">
         <ul class="list">
         
         <c:forEach items="${list}" var="aa">
         <li>
         <a href="howdetail" class="linkcar">
         <a href="howdetail?hname=${aa.hname}" class="linkcar">
               <span class="carname">${aa.hname}</span><br>
               <span class="good">장점</span>${aa.good}<br>
               <span class="bad">단점</span>${aa.bad}<br>
               <span class="score">${aa.score}</span>
               <span class="photo"><img src="./image/${aa.photo}"></span><br>
         </a>
         </li>
         </c:forEach>
         </ul>
      </div>
</body>
</html>