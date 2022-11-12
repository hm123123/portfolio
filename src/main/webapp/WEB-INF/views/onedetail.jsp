<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
		body{
		width: 100%;
		margin: 0 auto;
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
	
	.oneinput{
		width: 1280px;
		margin: 0 auto;
		padding-top:30px;
	}
	
	.aa{
		width: 100%;
		height:50px;
	}
	
	.aa h3{
		text-align: left;
		margin-bottom: 30px;
		float: left;
	}
	
	.aa a{
		float:right;
		border :1px solid #ddd;
		background-color: #eee;
		padding:5px;
		font-size:14px;
	}
	
	
	.write{
		width: 100%;
		height:600px;
		border:1.5px solid #ddd;
		line-height: 60px;
		margin-bottom: 30px;
		padding-bottom:30px;
	}
	
	.check{
		border-bottom:1.5px solid #ddd;
		width:93.6%;
		margin: 0 auto; 
		text-align: left;
		position:relative;
		padding:30px 0;
	}
	
	
	.check h4{
		text-align: left;
		position: absolute;
		left:0;
		top:0;
	}
	
	.write .qatitle{
		margin: 0 auto; 
		width:93.6%;
		text-align: left;
	}
	
	.write .qatitle h3{
		text-align: left;
		display:inline;
	}
	
	.write .qatitle input{
		margin-left: 10px;
		width: 1100px;
		height: 25px;
	}
	
	.date{
		width:93.6%;
		margin:0 auto;
		text-align: left;
		height:20px;
		border-bottom: 1.5px solid #ddd;
		line-height:20px;
		padding: 10px 0;
	}	
	
	.cont{
		margin:0 auto;
		width: 93.6%;
		text-align: left;
	}
	
	.btn{
		width:1280px;
		margin: 0 auto;
	}
	.btn a{
		border :1px solid #ddd;
		background-color: #eee;
		padding:5px;
		font-size:14px;
	}
	
		.allwrap{
  		height:800px;
  		margin-bottom: 200px;
  	}
</style>
</head>
<body>
<div class="allwrap">

	<div class="callimg">
		<img src="./image/callimg2.jpg" width="1950px;">
		
		<div class="txt">
			<div class="lefttxt">
				<h1>1:1문의</h2>
			</div>
		</div>
	</div>
	
	<div class="oneinput">
		<div class="aa">
			<h3>내 문의내역</h3> 
		</div>
		
		<div class="write">
			<div class="check">
				<h3>${dto.title}</h3>
			 </div>
			 
			 <div class="date">
					문의일자: <fmt:parseDate value="${dto.rdate }" var="rdate" pattern="yyyy-MM-dd"/> <fmt:formatDate value="${rdate }" pattern="yyyy.MM.dd"/> | 문의항목: ${dto.qlist} <br><br>
			 </div>
			 <div class="cont">
			  ${dto.content}
			 </div>
		</div>
		</div>
		<div class="btn">
		 <a href="qsout2?custnum=${dto.custnum }">목록으로</a>  <a href="onedelete?num=${dto.num }&custnum=${dto.custnum}">삭제</a>  
		 <a href="oneupdate?num=${dto.num }&custnum=${dto.custnum}">수정</a> 
		</div>
	</div>
		
</body>
</html>