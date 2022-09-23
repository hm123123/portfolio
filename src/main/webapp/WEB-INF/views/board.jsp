<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
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
				<h1>공지사항</h2>
			</div>
		</div>
	</div>
	<table border="1" align="left">
	<tr><th>NO.</th><th>SUBJECT</th><th>NAME</th></tr>
	<c:forEach items="${nlist }" var="aa">
	<tr>
	<td>${aa.nnum }</td>
	<td>${aa.ncontent }</td>
	<td>${aa.id}</td>
	</tr>
	</c:forEach>
	</table>
	
</body>
</html>