      <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
      width:100%;
      text-align: center;
      font-family: 'KoPubDotum';
   }
   
   .boardimg{
      position:relative;
   }
   
   .txt{
      width:1280px;
      margin: 0 auto;
   }
   
   .boardimg .lefttxt{
      text-align:left;
      color:#fff;
      float: left;
      
      position:absolute;
      top:0;
      
      line-height:120px;
   }
   
   .con{
      width:1220px;
      margin: 0 auto;
      border: 1.5px solid #eee; 
      padding: 30px;
   }
   
   .left{
      float: left;
      width:800px;
      padding-right: 100px;
      text-align: left;
   }
   
   .left h4{ 
      padding-bottom: 30px;
   }
   
   .right{
      float: right;
      width: 220px;
      text-align: right;
      color:navy;
   }
   
   .aa{
      width:1220px;
   }
   
   .bb{
      text-align: left;
   }
   .bb h5{
      padding-top: 40px;
   }
   
   .title{
      width: 1280px;
      margin: 0 auto;
      height:80px;
   }
   .title h3{
      text-align: left;
      line-height: 80px;
   }
   
   .reply{ 
      width: 1280px;
      margin: 0 auto;
      margin-top: 40px;
   }
   
   .reply h4{
      text-align: left;
      margin-bottom: 20px;
   }
   
   .replybox {
      width: 100%;
      height:32px;;
      border: 1.5px solid #eee;
      position: relative;
   }
   
   .replybox textarea {
      
      border:none;
      position: absolute;
      top:0;
      left:0;
      line-height: 32px;
      height: 30px;
      width: 1120px;
      padding-left:5px
   }
   
   .rebtn{
   
      position: absolute;
      top:0;
      right:2px;
      
      width:150px;
      height:30px;
      background-color: #aaa;
      color: #fff;
      border: none;
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
      border:1px solid #eee;
      width:1240px;
      height:80px;
      
      float: left;
      text-align: left;
      padding: 20px;
   }
   
   .hide{
      display: none;
   }

   .cc{
      position:absolute;
   
      
      z-index:10px;
   }
</style>
<script type="text/javascript">
	
</script>
</head>
<body>
	<div class="boardimg">
		<img src="./image/howdetailimg.jpg" width="1950px;">
		
		<div class="txt">
			<div class="lefttxt">
				<h2>${hdto.htitle}</h2>
			</div>
		</div>
	</div>
	
	<div class="title">
		<h3>${hdto.hname}</h3>
	</div>
	<div class="con">
		<div class="aa">
			<h4 class="left">평가내용</h4>
			<h4 class="right">[별점] ${hdto.score}</h4>
		</div>
		
		<div class="bb">
			<h5>${hdto.hcontent}</h5>
		</div>
	</div>
	
	<div class="reply">
		<h4>댓글달기</h4>
		
		<div class="replybox">
			<form action="replysave">
				<textarea maxlength="300" placeholder=" 고객님의 평가를 남겨주세요"  name="rcontent"></textarea><br><br><br><br><br>
				<div class="cc">
				<input type="hidden" name="id" value="${adto.id}" readonly>
				<input type="hidden" name="hname" value="${hdto.hname}" readonly>
				<input type="hidden" name="hcarnum" value="${hdto.hcarnum}" readonly>
				</div>
				<input type="submit" value="등록" class="rebtn">
			</form>
		</div>
		
	</div>
	
	<!-- 댓글달기 리스트 -->
	 <div class="alllist">
         <ul class="list">
         <c:forEach items="${list}" var="aa">
         <li>
               <span>${aa.id}</span><br>
               <span>${aa.rdate}</span><br>
               <span>${aa.rcontent}</span><br>
         </li>
         </c:forEach>
         </ul>
      </div>
	
</body>
</html>