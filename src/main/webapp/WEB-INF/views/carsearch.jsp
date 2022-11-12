<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
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
   
   .wrap{
      width:1280px;
      margin: 0 auto;
   }
   
   .left{
      float:left;
      width:240px;
      margin-right:10px;
      height:758px;
      margin-top: 30px;
      text-align: left;
      padding: 15px;
      border: 1.5px solid #ddd;
   }
   
   .left h3{
      padding-bottom: 5px;
      width: 100%;
   }
   
   .right{
      width:997px;
      height:640px;
      float: right;
      margin-top: 30px;
   }
   
   .right table {
      width: 1000px;
   }
   
   ul.main{
      width: 100%;
      margin-top: 10px;
      
   }
   
   ul.main>li{
      width: 228px;
      height: 40px;
      line-height: 40px;
      border: 1.5px solid #eee;
      padding-left: 10px;
      font-weight: bold;
      display:inline-block;
      
   }
   
   ul.main>li:hover{
      background-color:#eee;
   }
   
   ul.main>li>ul.sub{
      display: none;

   }
   
   ul.main>li>ul.sub>li{
      width:228px;
      height:40px;
      line-height: 40px;
      z-index: 1;
      overflow:visible;
      font-size:14px;
      border-bottom:1px solid #eee;
      
      display: flex;
   }
   
   ul.main>li>ul.sub>li:last-of-type {
      border:none;
   }
   
   ul.main>li>ul.sub>li input{
      margin-right:8px;
   }
   
   /* ul.main>li>ul.sub>li:hover{
      background-color:#eee;
   } */
   
   .see{
      width:980px;
      height:120px;
      border: 1.5px solid #ddd;
      margin-bottom:10px;
      padding:10px;
   }
   
   
   .ll{
      float:left;
      width:220px;
      background-color: #eee;
      height:120px;
   }
   
   .ll img{
      margin-top:12px;
   }
   
   .rr{
   
      float:right;
      width:750px;
      text-align: left;
   }
   
   .rr h3{
      margin-bottom:15px;
   }
   
   .hide{
      display: none;
   }
   .price{
      float:right;
      text-align:right;
      margin-top: 25px;
   }
   
   .rr h5{
      font-weight: normal;
      color:green;
      margin-top: 5px;
   }
   
   .tt{
      width:220px;
      height:20px;
      margin:10px 0;
   }
   
   .fbtn{
      padding: 2px;
      margin-right: 5px;
      margin-top: 10px;
   }
   
   .mybtn{
    border:#ccc;
      background-color:#eee;
      margin-bottom:10px;
      padding:4px;
      width: 100%;
   }
   
   .mybtn a{
      font-size:14px;
   }

     
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<script type="text/javascript">


   
    $(document).ready(function(){
      $("ul.main>li>a").click(function(){
         var submenu = $(this).next("ul");
         if( submenu.is(":visible") ){
            submenu.slideUp();
            }else{submenu.slideDown();}
         });
      });
  
   
   
</script>
</head>
<body>
<div class="allwrap">
<div class="callimg">
      <img src="./image/carout1img.jpg" width="1950px;">
      
      <div class="txt">
         <div class="lefttxt">
            <h1>차량 검색 결과</h1>
         </div>
      </div>
</div>

<div class="wrap">
   <div class="left">
      <h3>차량 검색</h3>
      
     <form>
      <ul class="main">
         <li><a>브랜드</a>   
               <ul class="sub" id="sub">
               
               <li><input type="checkbox" class="check" value="현대">현대</li>
               
               <li><input type="checkbox" class="check" value="기아">기아</li>
               
               <li><input type="checkbox" class="check" value="쌍용">쌍용</li>
               
               <li><input type="checkbox" class="check" value="쉐보레">쉐보레</li>
               
               <li><input type="checkbox" id="allCheck" >모두 체크<br/></li>
            </ul>
        </li>
        
 
         <li><a>연료</a>
            <ul class="sub" id="sub">
               <li><input type="checkbox" name="fueltype">경유</li>
               <li><input type="checkbox" name="fueltype">휘발유</li>
            </ul>
         </li>
         <li><a>연식</a>
            <ul class="sub" id="sub">
               <li>
                  <select class="tt" name="cyear">
                     <option value="2022">2022</option>
                     <option value="2021">2021</option>
                     <option value="2020">2020</option>
                     <option value="2019">2019</option>
                     <option value="2018">2018</option>
                     <option value="2017">2017</option>
                     <option value="2016">2016</option>
                     <option value="2015">2015</option>
                     <option value="2014">2014</option>
                     <option value="2013">2013</option>
                     <option value="2012">2012</option>
                    </select>
                 </li>
            </ul>
         </li>
         
         <li><a>색상</a>
            <ul class="sub" id="sub">
               <li><input type="radio" name="color">검정색</li>
               <li><input type="radio" name="color">흰색</li>
               <li><input type="radio" name="color">회색</li>
               <li><input type="radio" name="color">파랑색</li>
            </ul>
         </li>
         
         <li><a>주행거리</a>
            <ul class="sub" id="sub">
               <li><input type="radio" name="km">10,000~30,000km</li>
               <li><input type="radio" name="km">30,000~70,000km</li>
               <li><input type="radio" name="km">70,000~100,000km</li>
            </ul>
         </li>
         
         <li><a>가격</a>
            <ul class="sub" id="sub">
               <li><input type="radio" name="price">100~500만원</li>
               <li><input type="radio" name="price">500~1000만원</li>
               <li><input type="radio" name="price">1000~1500만원</li>
               <li><input type="radio" name="price">1500~2000만원</li>
               <li><input type="radio" name="price">2000~2500만원</li>
               <li><input type="radio" name="price">2500~3000만원</li>
               <li><input type="radio" name="price">3000만원 이상</li>
            </ul>
         </li>
      </ul>
      </form>
      <input class="fbtn" type="submit" value="검색"><input class="fbtn" type="reset" value="초기화">
   </div>
   
   <div class="right">
      <div class="mybtn"><a href="mclist?id=${member.id }">내 차량 조회</a></div>
      <c:forEach items="${view }" var="list">
      <ul class="see">
         <li class="ll"><img src="./image/${list.picture }" width="200" height="100"></li>
         <li class="rr"><a class="hide"></a></li>
         <li class="rr"><h3><a href="cardetail?carnum=${list.carnum}">${list.carbrand} ${list.carname}</a></h3></li>
         <li class="rr">${list.fueltype} | ${list.origin} | ${list.cyear} | <fmt:formatNumber pattern="#,###" value="${list.km}"/>km</li>
         <li class="rr"><h5>${list.content}</h5></li>
         <li class="price"><strong><fmt:formatNumber pattern="#,###" value="${list.price}"/></strong> 만원 &ensp;<a href="compare?carname=${list.carname }">가격비교</a></li>
         
      </ul>
      </c:forEach>
      
      <table>
      <!--페이징 처리 4-->
      <tr style="border-left: none;border-right: none;border-bottom: none">
         <td colspan="5" style="text-align: center;">
            <c:forEach begin="${paging.startPage }" end="${paging.endPage}" var="p"> 
               <c:choose>
                  <c:when test="${p == paging.nowPage }">
                     <b>${p}</b>
                  </c:when>   
                  <c:when test="${p != paging.nowPage }">
                     <a href="carout?nowPage=${p}&cntPerPage=${paging.cntPerPage}">${p}</a>
                  </c:when>   
               </c:choose>
            </c:forEach>
         </td>
      </tr>
      </table>
      <!--페이징처리 끝-->
   </div>
</div>
</div>
</body>
</html>