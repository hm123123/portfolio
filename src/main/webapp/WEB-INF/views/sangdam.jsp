<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
   body{
      width: 100%;
      margin: 0 auto;
      margin-bottom:110px;
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
   
   .car{
      width: 1280px;
      margin: 0 auto;
      
   }
   
   .car h2{
      text-align: left;
      padding: 30px 0;
   }
   
   .info {
      width: 100%;
      height: 50px;
      margin-bottom:15px;
      border: 1px solid #eee;
   }
   
   .info h3{
   
      float:left;
      width:120px;
      height: 50px;
      line-height: 50px;
      text-align: left;
      padding-left: 20px;
      background-color: #eee;
   }
   
   .info input{
      float:right;
      width: 1115px;
      height:23px;
      padding:10px; 
      border:none;
   }
   
   .info textarea {
      float: right;
      width: 1115px;
      padding:10px; 
      height:27px;
      border:none;
   }
   
   .tt{
      border:none;
      margin-top:16px;
      font-size: 16px;
      width:1115px;
   }
   
   .btn{
      width:1280px;
      margin: 0 auto;
   }
    #a{
      margin-top:30px;
      padding:3px;
      font-size:14px;
      
      background-color:#eee;
      border:1px solid #ddd;
   }
</style>
</head>
<body>

<div class="callimg">
      <img src="./image/carinputimg.jpg" width="1950px;">
      
      <div class="txt">
         <div class="lefttxt">
            <h1>상담신청</h1>
         </div>
      </div>
</div>

<div class="car">
   <h2>해당 정보로 상담신청을 하시겠습니까?</h2>
   <form action="sangdamsave" method="post">
      <div class="info">
         <h3>고객번호</h3>
       <input type="text" name="custnum" value="${member.custnum }" readonly>
      </div>
      
      <div class="info">
         <h3>이름</h3>
         <input type="text" name="name" value="${member.name }" >
      </div>
      
      <div class="info">
         <h3>주소</h3>
         <input type="text" name="address" value="${member.address }" >
      </div>
      
      <div class="info">
         <h3>전화번호</h3>
         <input type="text" name="tel" value="${member.tel }" >
      </div>
      
   
      <div class="btn">
         <input id="a" type="submit" value="등록">
         <input id="a" type="reset" value="취소" onclick="location.href='cardetail?carnum=${dto.carnum}'">
      </div>
		
		<input type="hidden" name="id" value="${member.id }">
	    <input type="hidden" name="carnum" value="${dto.carnum }" >
		<input type="hidden" name="carbrand" value="${dto.carbrand }" >
		<input type="hidden" name="carname" value="${dto.carname }" >
		<input type="hidden" name="price" value="${dto.price }" >
		<input type="hidden" name="picture" value="${dto.picture }">
   </form>
</div>
</body>
</html>