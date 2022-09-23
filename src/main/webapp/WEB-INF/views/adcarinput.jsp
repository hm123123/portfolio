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
</style>
</head>
<body>
      <form action="howsave" method="post" enctype="multipart/form-data">
         차사진<input type="file" name="photo"><br>
         차이름<input type="text" name="hname"><br>
         제목<input type="text" name="htitle"><br>
         장점<input type="text" name="good"><br>
         단점<input type="text" name="bad"><br>
         내용<input type="text" name="hcontent"><br>
         점수<input type="text" name="score"><br>
         <input type="submit" value="확인"><input type="reset" value="취소">
      </form>
</body>
</html>