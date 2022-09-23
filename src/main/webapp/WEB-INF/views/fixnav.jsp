<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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
      })
  </script>
<style type="text/css">
@charset "UTF-8";

*{margin:0; padding:0;}
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
   
   .fixnav img{
     width:100%;
     position: absolute;
     top:0;
     left:0;
     border-bottom:2px solid rgba(255, 255, 255, 0.5);
   }
   
   header{
      width:1280px;
      height:70px;
      margin:0 auto;
      position:relative;
      z-index:10;
     
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
    /*  position: absolute;
     top:0; */
   }
   
   .text-block {
      width:100%;
      background-color: black;
      color: white;
      background: rgb(0,0,0);
      background: rgba(0,0,0,0.5);
   }
   
  </style>
<title>Insert title here</title>
</head>
<body>
   
<div class="text-block">
   
      <div class="fixnav">
         <img src="./image/fixnav.jpg" width="100%;" height="70px;">
      </div>
      
      <div class="wrap">
      <header>
         <h1><a href="index"><img src="./image/logo.png"></a></h1>
         <nav>
            <ul class="gnb" >
               <li><a href="#">국산차</a></li>
               <li><a href="#">수입차</a></li>
               <li><a href="#">사고팔기</a>
                  <ul class="sub">
                     <li><a href="howlist">이차어때</a></li>
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
                  <a href=""><span> ${member.name } 님</span></a>&emsp;
                  <a href="logout">로그아웃</a>
               </c:when>
               <c:when test="${adminstate==true}">
                  <a href=""><span> ${admin1.id }</span></a>&emsp;
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
   
  </div>
   
</body>
</html>