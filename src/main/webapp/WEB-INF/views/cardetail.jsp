<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"> -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<title>Insert title here</title>
<style type="text/css">

   p, a, h1, h2, h3, h4, h5, h6 {
       transform: skew(-0.1deg);
   }
   
  .allwrap{
    margin-bottom: 300px;
    height:800px;
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
   
   .detail{
      width: 1280px;
      margin: 0 auto;
      margin-top: 15px;
   }
   
   
   .title{
      width:100%;
      height:30px;
      line-height:30px;
      margin: 0 auto;
      border-bottom:2px solid #eee;
      padding-bottom:15px;
   }
   
   .bb{
      float:left;
      margin-left:15px;
   }
   
   .readcnt{
      transform: skew(-0.1deg);
      float:right;
      font-size:14px;
      margin-right:15px;
   } 
   
   ul.img{
      width: 100%;
      height:400px;
      margin:15px 0;
    }
   
   
   ul.img>li{
      width:416px;
      margin-right:10px;
      display:inline-block;
   }
   
    ul.img>li:nth-child(3){
      margin-right: 0;
   }
   
   .tt{
      width:100%;
   }
   
   .tt table{
      width:100%;
      border:2px solid #eee;
   }
   
   
   .tt table td,th{
      padding:7px;
   }
   
   .tt table tr:nth-child(1)>th{
      border-bottom:1px solid #eee;
      border-right: 1px solid #eee;
   }
   
   .tt table tr:nth-child(2)>td{
      border-right: 1px solid #eee;
   }
   
   .tt table tr:nth-child(1)>th:nth-child(7){
      border-right: none;
   }
   
   .tt table tr:nth-child(2)>td:nth-child(7){
      border-right: none;
   }
   
  .btn{
      width: 100%;
      
   }
   
   #a{
      margin-top:30px;
      float: right;
      padding:3px;
      font-size:14px;
      
      background-color:#eee;
      border:1px solid #ddd;
   }
   
   .item img{
      overflow: hidden;
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
   
   .slide{ 
         margin:0 auto;
      width:1280px;
      height:550px;
      padding:30px 0;

      white-space:nowrap;
      position: relative;
      overflow:hidden;
   }
   
   
   
   
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<link rel="stylesheet" href="./css/owl.carousel.min.css">
<link rel="stylesheet" href="./css/owl.theme.default.min.css">
</head>
<body>
<form action="sangdam" >
<div class="allwrap">
   <div class="callimg">
            <img src="./image/cardetailimg.jpg" width="1950px;">
            
            <div class="txt">
               <div class="lefttxt">
                  <h1>${dto.carname}</h1>
               </div>
            </div>
   </div>
   
   <div class="detail">
      <div class="title">
         <div class="bb"><h4>${dto.carbrand} ${dto.carname}</h4></div>
         <div class="readcnt">[조회수] ${dto.readcnt}</div>
      </div>
      <div class="slide">
           <div class="owl-carousel owl-theme owl-loaded">
            <div class="owl-stage-outer">
                <div class="owl-stage">
                <div class="owl-item">
                 <img src="./image/${dto.picture}" alt="picture" style="width:100%;">
               </div>
         
               <div class="owl-item">
                 <img src="./image/${dto.picture2}" alt="picture2" style="width:100%;">
               </div>
             
               <div class="owl-item">
                 <img src="./image/${dto.picture3}" alt="picture3" style="width:100%;">
               </div>
         </div>
         </div>
              <div class="owl-theme owl-nav">
        <div class="customPrevBtn"><</div>
        <div class="customNextBtn">></div>
    </div>
         </div>
      </div>
      <script type="text/javascript">
$(document).ready(function(){
    var owl = $('.owl-carousel');
    
    owl.owlCarousel({
        items:1,                 // 한번에 보여줄 아이템 수
        loop:true,               // 반복여부
        margin:35,               // 오른쪽 간격
        autoplayHoverPause:false  //마우스오버시 멈출지 여부
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
      <div class="tt">
      <table>
            <tr>
               <th>연료</th>
               <th>원산지</th><th>연식</th><th>색상</th><th>주행거리</th>
               <th>가격</th><th>참고사항</th>
            </tr>
            <tr>
               <td>${dto.fueltype }</td>
               <td>${dto.origin}</td><td>${dto.cyear}</td><td>${dto.color}</td><td>${dto.km}</td>
               <td>${dto.price}</td><td>${dto.content}</td>
            </tr>
         </table>
      </div>
      
      <input type="hidden" name="id" value="${member.id }">
	      <input type="hidden" name="carnum" value="${dto.carnum }">
	      <c:if test="${loginstate==true}">
	      <div class="btn">
	         <input id="a" type="submit" value="상담하기">
	      </div>
	      </c:if>
	</div>
</div>
</form>
</body>
<script src="./css/jquery.min.js"></script>
<script src="./css/owl.carousel.min.js"></script>
</html>