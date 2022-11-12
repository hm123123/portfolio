<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<title>Bootstrap Example</title>
<meta charset="utf-8">
 <meta name="viewport" content="width=device-width, initial-scale=1">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <script type="text/javascript">
     $(document).ready(function(){
         $("header nav ul.gnb>li").hover(function(){
            $(this).find("ul.sub").stop().slideDown();
         },function(){
            $(this).find("ul.sub").stop().slideUp();
         });
         
         
      /* $(".slide>ul.slide_all>li").eq(0).siblings().css("left","-1950px");
        
          var slideI=0;
         setInterval(function(){
               
               if(slideI<2){
                  slideI++;
               }else{
                  slideI=0;
               }
               $(".slide>ul.slide_all>li").eq(slideI).siblings().animate({"left":"1950px"});
               $(".slide>ul.slide_all>li").eq(slideI).animate({"left":"0"},500);
               
            },3000); */
            
         $(".slide>ul.slide_all>li").eq(0).siblings().hide();
            
            var slideI=0;
            setInterval(function(){
               
               if(slideI<2){
                  slideI++;
               }else{
                  slideI=0;
               }
               $(".slide>ul.slide_all>li").eq(slideI).siblings().fadeOut("6000");
               $(".slide>ul.slide_all>li").eq(slideI).fadeIn("6000");
               
            },3000);
            
      });
     
  </script>
<style type="text/css">
@charset "UTF-8";

*{margin:0; padding:0;box-sizing: border-box;}
   a{text-decoration:none; color:#222;}
   img{border:0; vertical-align:top;}
   ul{list-style:none;}
   
   clearfix:after{
      display:table;
      content:"";
   }
   
    @font-face {
    font-family: 'KoPubDotum';
    src: url('../src/fonts/KoPubDotumBold_0.ttf') format('truetype');
   }
   
   body{
      width:100%;
      text-align: center;
      font-family: 'KoPubDotum';
   }
   
   .wrap{
      width:100%;
      margin:0 auto;
   }
   
   header{
      width:1280px;
      height:70px;
      margin:0 auto;
      position:relative;
   }
   
   header h1 {
      width:181px;
      height:34px;
      float:left;
      line-height:65px;
      color:#fff;
      padding-top:15px; 
   }
   
   header nav{
      width:800px;
      height:70px;
      float:right;
      text-align:center;
   }
   
   header nav ul.gnb{
      width:100%;
   }
   
   header nav ul.gnb>li{
      width:20%;
      float:left;
      padding-top: 15px;
   }
   
   header nav ul.gnb>li>a{
      display:block;
      font-size:22px;
      color:#ddd;
      height:40px;
      line-height:40px;
      font-weight:bold;
   }
   
   header nav ul.gnb>li.login>a{
      font-size:15px;
      float:left;
   }
   
   header nav ul.gnb>li:hover>a{
      color:#fff;
   }
   
   header nav ul.gnb>li>ul.sub{
      display:none;
   }
   
   header nav ul.gnb>li>ul.sub>li{}
   
   header nav ul.gnb>li>ul.sub>li>a{
      display:block;
      font-size:18px;
      color:#ddd;
      height:40px;
      line-height:40px;
   }
   header nav ul.gnb>li>ul.sub>li:hover>a{
      background-color:rgba(255, 255, 255, 0.2);
      color:#fff;
      font-weight: bold;
   }
   
    header nav ul.gnb>li.log>ul.login>li{
       float:left;
       line-height: 40px; 
    }
   
    header nav ul.gnb>li.log>ul.login>li>a{
       color:#ddd;
       padding-right: 5px;
       font-family: KoPubDotumBold_0;
    }
    
    header nav ul.gnb>li.log>ul.login>li>a:hover{
       color:#fff;
       font-weight: bold;
    }
    
    .login a{
       color:#ddd;
       line-height: 40px;
    }
    
    .login a:hover{
       color:#fff;
       font-weight:bold;
    }
   
   .container {
     width:100%;
   }
   
   .text-block {
     position: absolute;
      top:0px;
      width:100%;
      background-color: black;
      color: white;
      background: rgb(0,0,0);
      background: rgba(0,0,0,0.5);
      z-index:10;
   }
   .search{
      position: absolute;
      top: 230px;
      left: 0px;
      text-align: left;
}

   input[type=text] {
      width: 400px;
      margin: 0 0 12px;
      background: rgba(0,0,0,0.7);
      background-image: url('./image/dotbogi.png');
      background-position: 8px 9px;
      background-size:35px;
      background-repeat: no-repeat;
      font-size: 17px;
      padding: 12px 30px 12px 50px;
      border: 1px solid #ddd;
      color:white;
      float: left;
      height: 55px;
   }

   input[type=text]:focus{
     outline: none;
     color: white;
   }

   .ssubmit{
      font-size:17px;
      background-color:white;
       height: 55px;
       width: 80px;
       border: 1px solid #ddd;
       border-left: none;
       cursor: pointer;
       float: left;
       margin: 50px;
       margin: 0px 0px 0px 0px;
       font-weight:bold;
   }
   
   .searchtext{
      font-size: 21.5px;
      margin: 0 0 15px;

   }
   
   button{
      float: left;
      margin: 5px 0 22px 0;
      background: rgba(219,219,219,0.4);
      padding: 7px 8px 7px 8px;
      color: white;
      padding-right: 20px;
      margin-right: 10px;
      border-style: none;
      font-family: 'KoPubDotum';
      cursor: pointer;
      text-align: center;
      font-size: 15px;
      font-weight: bold;
   }
   
   .slide{
         margin:0 auto;
         width:1950px;
         height:590px;
         position:relative;
       /* overflow: hidden; */
   }
   
   .slide>ul.slide_all{
         width:100%;
         height:590px;
   }
   
   .slide>ul.slide_all>li{
         width:100%;
         height:590px;
         position:absolute;
         top:0;
         left:0;
   }
   
/*     .slide>ul.slide_all>li:nth-child(1){
         width:100%;
         height:590px;
         position:absolute;
         top:0;
         left:0;
   }
   
    .slide>ul.slide_all>li:nth-child(2){
         width:100%;
         height:590px;
         position:absolute;
         top:0;
         left:1950px;
         overflow: hidden;
   }
   
     .slide>ul.slide_all>li:nth-child(3){
         width:100%;
         height:590px;
         position:absolute;
         top:0;
         left:1950px;
   } */
 
 
</style>
</head>

<body>
<div class="wrap">

<div class="text-block">
   <header>
      <h1><a href="index"><img src="./image/logo.png"></a></h1>
         <div class="search">
            <form action="carsearch">
               <div class="searchtext"><h3>당신이 원하는 차는 유레카에서</h3></div>
                  <input class="sbox" type="text" name="keyword">
                  <input class="ssubmit" type="submit" value="검색"><br>
                  <button># 연령대별</button><button># 인기많은</button><button># 주행거리</button>
            </form>
           </div>
         <nav>
            <ul class="gnb" >
               <li><a href="carout">국산차</a></li>
               <li><a href="carout2">수입차</a></li>
               <li><a href="#">사고팔기</a>
                  <ul class="sub">
                     <li><a href="howlist?id=${admin1.id}&memberid=${member.id}">이차어때</a></li>
                     <li><a href="carinput">내차팔기</a></li>
                  </ul>
               </li>
               <li><a href="#">고객센터</a>
                  <ul class="sub">
                     <li><a href="qs">1:1문의</a></li>
                     <li><a href="notice?id=${admin1.id }">공지사항</a></li>
                  </ul>
               </li>
               
            
               <li class="log">
               <ul class="login">
               
           <c:set var ="result" value="${param.result }"/>
            <c:choose>
               <c:when test="${result=='loginfail' }">
                  <script type="text/javascript">
                     window.onload=function(){
                     alert("아이디 또는 비밀번호를 잘못 입력하셨습니다.");
                     }
                  </script>
               </c:when>
            </c:choose>   
            
                <c:choose>
               <c:when test="${loginstate==true}">
                  <a href="mypage?id=${member.id }"><span> ${member.name } 님</span></a>&emsp;
                  <a href="logout">로그아웃</a>
               </c:when>
               <c:when test="${adminstate==true}">
                  <a href=""><span> ${admin1.id}</span></a>&emsp;
                  <a href="logout">로그아웃</a>
               </c:when>
                    <c:otherwise>
                  <li><a href="logingo">로그인</a></li>
                  <li><a>|</a></li>
                  <li><a href="Joininput">회원가입</a></li>
                  </c:otherwise>
                  </c:choose>
               </ul>
               </li>
            </ul>
         </nav>
      </header>
   </div>
   <div class="slide">
      <ul class="slide_all">
         <li><a href="#"><img src="./image/mainimg3.jpg" alt="Nature" width="1950px;"></a></li>
           <li><a href="#"><img src="./image/mainimg2.jpg" alt="Nature" width="1950px;"></a></li>
           <li><a href="#"><img src="./image/mainimg.jpg" alt="Nature" width="1950px;"></a></li>
        </ul>
    </div>
  </div>
  <script type="text/javascript">
 /*  var slideCount = $(".slide>ul.slide_all>li").length;
     var currentIndex =0;
     
     var slidePosition;
     
     setInterval(function(){
        
        if(currentIndex <2){
           currentIndex++;   
        }else{
           currentIndex =0;
        }
        
        slidePosition =currentIndex *(-1950)+"px";
        $(".slide>ul.slide_all>li").animate({left:slidePosition},400);
     },3000); */
  </script>
   </body>
</html>