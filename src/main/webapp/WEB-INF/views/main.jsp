<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>Insert title here</title>

<style type="text/css">
   body{
      width:100%;
      margin:0 auto;
      margin-bottom: 150px;
   }
   .video{
      width: 1280px;
      margin: 0 auto;
      padding-top:70px;
      
   }
   p, a, h1, h2, h3, h4, h5, h6 {
       transform: skew(-0.1deg);
   }
   
   
   /*베스트 카*/
   .slide_wrap{
      margin:0 auto;
      width:1280px;
      height:410px;
      padding:30px 0;

      white-space:nowrap;
      position: relative;
      overflow:hidden;
      
   }

   .slide_wrap h1{
      text-align:left;
      font-weight: 500;
      font-family: 'Century Gothic';
      margin-bottom: 35px;
   }
   
   .slides{
   
      position:absolute;
      left:0; top:0;
      
      width:1865px;
      margin-top:80px;
      white-space:nowrap; 
      
      transition:left 0.5s ease-out;

   }
   
   .slides li:not(:last-child){
      float: left;
      width:290px;
      height:350px;
      margin-right:25px;
      
      text-align: center;
   }
   
   .slides bestimg{
      margin:15px 0;
   }
   
   .slides h4{
      margin-top: 10px;
   }
   
   .slides h3{
      margin-bottom: 10px;
      margin-top:4px;
   }
   
   .slides h5{
      margin-left:5px;
      display: inline-block;
   }
   
   .prev{
      
      cursor: pointer;
      position: absolute;
      text-align : center;
      top: 50%;
      left:0;
      width: 3%;
      padding: 16px;
      margin-top: -22px;
      color: #ddd;
      font-weight: bold;
      font-size: 18px;
      transition: 0.6s ease;
      border-radius: 0 3px 3px 0;
      z-index: 100;
   }

   .next{
      cursor: pointer;
      position: absolute;
      text-align : center;
      top: 50%;
      width: 3%;
      padding: 16px;
      margin-top: -22px;
      color: #ddd;
      font-weight: bold;
      font-size: 18px;
      transition: 0.6s ease;
      border-radius: 0 3px 3px 0;
      z-index: 100;
      right: 0;
      border-radius: 3px 0 0 3px;
   }
      
   .prev:hover, .next:hover{
      background-color: rgba(0,0,0,0.8);
   }
   
   .prefercar{
      width:100%;
      height:400px;
      background-color:#e2e4eb;
      
      position: relative;
   }
   
   .box{
   
      position:absolute;
      top:0;
      
      width:312px;
      height:400px;
      background-color:#e2e4eb;
      float:left;
   }
   
   
   /*선호차량*/
   .preall{
      width: 1280px;
      height:400px;
      margin: 0 auto;
   }
   
   .preleft{
      float: left;
      height:300px;
      line-height: 300px;
      background-color:#b5b8c3;
      width: 470px;
      margin:50px 0;
      
      position: relative;
   }
   
   #change_img img{
      width: 870px;
      height:430px;
      transform: scaleX(-1); transition: .3s;
      
      position:absolute;
      left: -40%;
      top:-15%;
      
   }
   
   .preright{
      width: 680px;
      height:300px;
      float: right;
      text-align: left;
      margin:50px 0; 
      
      position: relative;
   }
   
   
   .moresee{
      padding:5px;
      border: none;
      background: #fff;
      font-weight: bold;
      width:80px;
      height:30px;
      
      position:absolute;
      bottom:0;
   }
   
   @font-face {
    font-family: 'KoPubDotum';
    src: url('../src/fonts/KoPubDotumBold_0.ttf') format('truetype');
   }
   
   .select{
      width:400px;
      padding:5px;
      height:40px;
      border:3px solid #fff;
      background-color:#e2e4eb;
      
      font-size:16px;
      font-family:'KoPubDotum';
      transform: skew(-0.1deg);
      font-weight: bold;
   }
   
   .select option{
   
      background:rgba(255,255,255,0.2);
      color: #222;
      margin: 5px 0;
      
      transform: skew(-0.1deg);
      font-size:15px;
      font-family:'KoPubDotum';
      font-weight: bold;
   }
   
   #change_brand{
      /* height:21px; */
      margin-top:40px;
      font-size:26px; 
   }
   
   #change_carname{
      height:35px;
      margin-top:10px;
      margin-bottom: 50px; 
      font-size:21px; 
   }
   
   
   #change_txt{
      font-size:18px; 
   }
   
   /*비디오*/
   .video{
      width: 1280px;
   }
   .view{
   	margin-top:3px;
   }
   
   .view a{
   	padding:0 5px;
   	margin-right:3px;
   	background-color: #444;
   	color: #fff;
   	border-radius:5px;
   }
   
   .view h5{
   	display: inline-block;
   }
   
  .deftxt{
     text-align: left;
     line-height: 50px;
   	 position: relative;
   	 left: 600px;
   	 top: 45px;
   }
   .deftxt h3{
  		padding-top: 30px;
      }
   .deftxt h5{
 	  padding-top: 15px;
      }
 
   .preleft img{
      width: 870px;
      height:430px;
      transform: scaleX(-1); transition: .3s;
      
      position:absolute;
      left: -40%;
      top:-15%;
   }
        .owl-dots{
    display: none;
}
.customPrevBtn, .customNextBtn{
    background : none;
    border: none;
    color: #999999;
    font-size: 20px;
    font-weight: bold;
    cursor: pointer;
}
.customPrevBtn{
      
      cursor: pointer;
      position: absolute;
      text-align : center;
      top: 50%;
      left:0;
      width: 3%;
      padding: 16px;
      margin-top: -22px;
      color: #ddd;
      font-weight: bold;
      font-size: 18px;
      transition: 0.6s ease;
      border-radius: 0 3px 3px 0;
      z-index: 100;
}
.customNextBtn{
      cursor: pointer;
      position: absolute;
      text-align : center;
      top: 50%;
      width: 3%;
      padding: 16px;
      margin-top: -22px;
      color: #ddd;
      font-weight: bold;
      font-size: 18px;
      transition: 0.6s ease;
      border-radius: 0 3px 3px 0;
      z-index: 100;
      right: 0;
      border-radius: 3px 0 0 3px;
   }
   
    .customPrevBtn:hover, .customNextBtn:hover{
      background-color: rgba(0,0,0,0.8);
   }
}
@media(max-width:768px){
    .pbPrevBtn, .pbNextBtn{
        display: none;
    }
}

   
</style>
<script type="text/javascript">
function img_change(f) {
    var chimg = '<img src="' + $(f).find('option:selected').data('src') + '">';
    $('#change_img').html(chimg);
    
    var brand = $(f).find('option:selected').data('brand');
    $('#change_brand').html("<h3>"+brand+"</h3>");
    
    var con = $(f).find('option:selected').data('con');
    $('#change_txt').html("<h5>"+con+"</h5>");
    
    var carname = $(f).find('option:selected').val();
    $('#change_carname').html("<h1>"+carname+"</h1>");
    
    $('.preleft>img').hide();
    $('.preleft .deftxt').hide();

}


</script>
<link rel="stylesheet" href="./css/owl.carousel.min.css">
<link rel="stylesheet" href="./css/owl.theme.default.min.css">
</head>
<body onload="drawImage()">

<!-- best car 시작 -->
  	   <div class="slide_wrap">
        <h1>Best Car</h1>
              <div class="owl-carousel owl-theme owl-loaded">
    <div class="owl-stage-outer">
        <div class="owl-stage">
             <c:forEach items="${list }" var="list" begin="0" end="4" step="1">
             <div class="owl-item">
                <div class="item">
                  <a href="cardetail?carnum=${list.carnum}">
                    <img src="./image/${list.picture}" width="320px" height="160px;" class="bestimg">
                 <h4>${list.carbrand}</h4>
                     <h3>${list.carname}</h3></a>
                 <div class="view">
                    <a>view</a><h5>${list.readcnt}</h5>
                 </div>
                </div>
                </div>
                </c:forEach>
        </div>
    </div>
</div>
<div class="owl-theme owl-nav">
        <div class="customPrevBtn"><</div>
        <div class="customNextBtn">></div>
    </div>
   </div>
<script type="text/javascript">
$(document).ready(function(){
    var owl = $('.owl-carousel');
    
    owl.owlCarousel({
        items:4,                 // 한번에 보여줄 아이템 수
        loop:true,               // 반복여부
        margin:35,               // 오른쪽 간격
        autoplay:true,           // 자동재생 여부
        autoplayTimeout:1800,    // 재생간격
        autoplayHoverPause:true  //마우스오버시 멈출지 여부
    });    
    
    $('.customNextBtn').click(function() {
        owl.trigger('next.owl.carousel');
    })
    
    $('.customPrevBtn').click(function() {
        owl.trigger('prev.owl.carousel', [300]);
    })
    $('.customPrevBtn').click(function() {
        ('owl.dot').hide();
    })
});
   </script>

<!-- best car 종료 -->

<!-- 선호 차량 시작 -->
   <div class="prefercar">
   <div class="preall">
         <div class="preleft">
             <img src="./image/아반떼.png">
            <div class="deftxt">
               <h3 style="font-size: 30px">HYUNDAI</h3>
               <h1 style="font-size: 40px">아반떼cn7</h1>
               <h5 style="font-size: 13px">“ 감성적인 느낌의 차량으로 20대 여성들이 선호해요. ”</h5>
            </div>
            <div id = "change_img" align="center"></div>
         </div>

         
         <div class="preright">
         
         <form action="preference">
            <select name="prefer" onChange="img_change(this);" class="select">
               <option value="" selected disabled hidden>유레카의 선호차량 보기</option>
               <option value="아반떼cn7" data-brand="HYUNDAI"  data-con="“ 감성적인 느낌의 차량으로 20대 여성들이 선호해요. ”" data-src="./image/아반떼.png" selected>20대 여성의 선호차량</option>
               <option value="아이오닉 하이브리드" data-con="“ 감성적인 느낌의 차량으로 20대 남성들이 선호해요. ”" data-brand="HYUNDAI" data-src="./image/아반떼.png">20대 남성의 선호차량</option>
               <option value="셀토스" data-brand="KIA"  data-con="“ 감성적인 느낌의 차량으로 30대 여성들이 선호해요. ”" data-src="./image/Selthos.png">30대 여성의 선호차량</option>
               <option value="그랜저" data-brand="HYUNDAI"  data-con="“ 감성적인 느낌의 차량으로 30대 남성들이 선호해요. ”" data-src="./image/grandeur.png">30대 남성의 선호차량</option>
               <option value="셀토스" data-brand="KIA"  data-con="“ 감성적인 느낌의 차량으로 40대 여성들이 선호해요. ”" data-src="./image/Selthos.png">40대 여성의 선호차량</option>
               <option value="그랜저"  data-brand="HYUNDAI"  data-con="“ 감성적인 느낌의 차량으로 40대 남성들이 선호해요. ”" data-src="./image/grandeur.png">40대 남성의 선호차량</option>
            </select>
            <br>
            <div id = "change_brand"></div>
            <div id = "change_carname"></div>
            <div id = "change_txt"></div>
            <input type="submit" value="더보기" class="moresee">
         </form>
         </div>
      </div>
      <div class="box"></div>
   </div>
<!-- 선호 차량 종료 -->

<!-- 광고 영상 시작 -->
   <div class="video">
      <video width="100%" height="auto" autoplay loop muted controls><source src="./image/video.mp4" type="video/mp4"></video>

   </div>
<!-- 광고 영상 종료 -->


</body>
<script src="./css/jquery.min.js"></script>
<script src="./css/owl.carousel.min.js"></script>
</html>