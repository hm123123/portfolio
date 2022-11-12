<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript">
function check(){
   var f = document.form1;
   
   if(f.carnum.value==""){
      alert("차량번호를 입력하세요.");
      f.carnum.select();
      return false;
   }
   if(f.carbrand.value==""){
      alert("브랜드를 입력하세요.");
      f.carbrand.select();
      return false;
   }
   if(f.carname.value==""){
      alert("모델명을 입력하세요.");
      f.carname.select();
      return false;
   }
   if(f.cyear.value==""){
      alert("연식을 입력하세요.");
      f.cyear.select();
      return false;
   }
   if(f.km.value==""){
      alert("주행거리를 입력하세요.");
      f.km.select();
      return false;
   }
   if(isNaN(f.km.value)){
      alert("숫자만 입력하세요.")
      f.km.select();
      return false;
   }
   if(f.price.value==""){
      alert("가격을 입력하세요.");
      f.price.select();
      return false;
   }
   if(isNaN(f.price.value)){
      alert("숫자만 입력하세요.")
      f.price.select();
      return false;
   }
   if(f.content.value==""){
      alert("참고사항란을 입력하세요.");
      return false;
   }
   if(f.picture.value==""){
      alert("메인사진을 등록해주세요.");
      return false;
   }
   if(f.picture2.value==""){
      alert("상세사진을 등록해주세요.");
      return false;
   }
   if(f.picture3.value==""){
      alert("상세사진을 등록해주세요.");
      return false;
   }
   f.submit();
}
</script>
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
   
</style>
</head>
<body>

<div class="callimg">
      <img src="./image/carinputimg.jpg" width="1950px;">
      
      <div class="txt">
         <div class="lefttxt">
            <h1>내차팔기</h1>
         </div>
      </div>
</div>

<div class="car">
   <h2>차량정보를 입력해주세요.</h2>
   <form action="carsave" method="post" enctype="multipart/form-data" name="form1">
      <div class="info">
         <h3>차량번호</h3>
         <input type="text" name="carnum">
      </div>
      
      <div class="info">
         <h3>브랜드</h3>
         <input type="text" name="carbrand">
      </div>
      
      <div class="info">
         <h3>모델명</h3>
         <input type="text" name="carname">
      </div>
      
      <div class="info">
         <h3>연료</h3>
         <select class="tt" name="fueltype">
             <option value="휘발유">휘발유</option>
             <option value="경유">경유</option>
           </select>
      </div>
      
      <div class="info">
         <h3>원산지</h3>
         <select class="tt" name="origin">
             <option value="국산">국산</option>
             <option value="수입">수입</option>
           </select>
      </div>
      
      <div class="info">
         <h3>연식</h3>
         <input type="text" name="cyear">
      </div>
      
        <div class="info">
         <h3>색상</h3>
              <select class="tt" name="color">
             <option value="검정">검정</option>
             <option value="흰색">흰색</option>
             <option value="회색">회색</option>
             <option value="파랑">파랑</option>
           </select>

      </div>
      
      <div class="info">
         <h3>주행거리</h3>
         <input type="text" name="km">
      </div>
      
      <div class="info">
         <h3>가격</h3>
         <input type="text" name="price"> 
      </div>
      
      <div class="info">
         <h3>참고사항</h3>
         <textarea name="content"></textarea>
      </div>
      
      <div class="info">
         <h3>메인사진등록</h3>
         <input type="file" name="picture">
      </div>
      <div class="info">
      	<h3>서브사진등록</h3>
			<input type="file" name="picture2"><br>
			
	</div>
	<div class="info">
      	<h3>서브사진등록</h3>
			<input type="file" name="picture3">
			</div>
      <div class="btn">
         <input type="submit" value="등록" onclick="return check()">
         <input type="reset" value="초기화">
      </div>

      <input type="hidden" name="custnum" value="${member.custnum }">
      <input type="hidden" name="id" value="${member.id }">
   
   </form>
</div>
</body>
</html>