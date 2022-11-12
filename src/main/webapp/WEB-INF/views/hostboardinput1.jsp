<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
   
</style>
</head>
<body>
   
   <div class="boardimg">
      <img src="./image/boardimg.jpg" width="1950px;">
      
      <div class="txt">
         <div class="lefttxt">
            <h1>공지사항 호스트보드</h2>
         </div>
      </div>
   </div>
   <form action="noticeupdate2" method="post">
   글제목<input type="text" name="ntitle" value="${ndto.ntitle }"><br>
   내용
   <textarea rows="20" cols="30" name="ncontent">${ndto.ncontent }</textarea><br>
   <input type="text" name="nnum" value="${ndto.nnum}"><br>
   <input type="submit" value="전송">
   
   </form>
</body>
</html>