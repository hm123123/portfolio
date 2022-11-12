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
      width:35px;
      height:20px;
      line-height:20px;
      padding:2px 3px;;
      color:#fff;
      background-color: navy;
      margin-right:10px;
      margin-bottom:5px;
      
       display:inline-block;
        transform: skew(-0.1deg);
   }
   
   .bad{
       transform: skew(-0.1deg);
     width:35px;
      height:20px;
       line-height:20px;
      padding:2px 3px;;
      color:#fff;
      background-color: #222;
       margin-right:10px;
       margin-bottom:5px;
      
      display:inline-block;
   }
   
   .photo img{
   width: 100%;
   height: 201px;
   }
   
   .score{
      color: navy;
      margin:25px 0;
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
         <a href="howdetail?hname=${aa.hname}&id=${ldto.id}&hcarnum=${aa.hcarnum}" class="linkcar">
               <h3 style=" transform: skew(-0.1deg);">${aa.hname}</h3><br>
               <h4 class="good">장점</h4>${aa.good}<br>
               <h4 class="bad">단점</h4>${aa.bad}<br>
               <h3 class="score">${aa.score}</h3>
               <span class="photo"><img src="./image/${aa.photo}"></span><br>
               <input type="hidden" name="id" value = "${ldto.id }">
               <input type="hidden" name="hcarnum" value = "${aa.hcarnum }">
         </a>
         </li>
         </c:forEach>
         </ul>
      </div>
       
</body>
</html>