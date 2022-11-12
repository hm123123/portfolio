<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
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
   
   .con{
         width:1280px;
         margin: 0 auto;
         margin-top: 30px;
         margin-bottom:10px;
   }
   
   .see{
      width:1280px;;
      height:120px;
      border: 1.5px solid #ddd;
      margin-bottom:10px;
      padding:10px;
      
      position:relative;
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
      width:1045px;
      text-align: left;
   }
   
   .rr h3{
      margin-bottom:15px;
   }
   
   .price{
      float:right;
      text-align:right;
      margin-top: 25px;
   }
   
   .btn{
       float:right;
       position:absolute;
       top:10px;
       left:1230px;
   }
   
   .btn a{
      padding: 3px;
      font-size:12px;
      background-color: #eee;
   }
   
   .btn a:hover{
      background-color:#222;
      color:#fff;
      font-weight:bold;
   }
   
   .paing{
   		width: 1280px;
   		marign: 0 auto;
   		text-align: center;
   }
</style>
</head>

<body>
<div class="allwrap">
   <div class="callimg">
         <img src="./image/carout1img.jpg" width="1950px;">
         
         <div class="txt">
            <div class="lefttxt">
               <h1>내 차량 리스트</h1>
            </div>
         </div>
   </div>

   <div class="con">
      <c:forEach items="${view }" var="list">
            <ul class="see">
               <li class="ll"><img src="./image/${list.picture }" width="200" height="100"></li>
               <li class="rr"><a class="hide"></a></li>
               <li class="rr"><h3><a href="cardetail?carnum=${list.carnum}">${list.carbrand} ${list.carname}</a></h3></li>
               <li class="rr">${list.fueltype} | ${list.origin} | ${list.cyear} | <fmt:formatNumber pattern="#,###" value="${list.km}"/>km</li>
               <li class="rr"><h5>${list.content}</h5></li>
               <li class="price"><strong><fmt:formatNumber pattern="#,###" value="${list.price}"/></strong> 만원</li>
               <li class="btn">
                  <a href="cardeletemid?carnum=${list.carnum }">삭제</a>
                  <a href="carupdatemid?carnum=${list.carnum }">수정</a>
               </li>
            </ul>
            </c:forEach>
     <div class ="paging">  
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
                           <a href="mclist?nowPage=${p}&cntPerPage=${paging.cntPerPage}&id=${id}">${p}</a>
                        </c:when>   
                     </c:choose>
                  </c:forEach>
               </td>
            </tr>
      </table>
      </div>
   </div>
   </div>
</body>
</html>