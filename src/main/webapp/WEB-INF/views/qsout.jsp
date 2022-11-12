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
		display: table;
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
	
	.info{
		width: 100%;
		height:60px;
		border:1.5px solid #ddd;
		line-height: 60px;
		margin-bottom: 30px;
	}
	
	.info h4{
		text-align: left;
		padding-left: 40px;
	}
	
	.write{
		width: 100%;
		height:600px;
		border:1.5px solid #ddd;
		line-height: 60px;
		margin-bottom: 130px;
		padding-bottom:30px;
	}
	
	.write .check{
		border-bottom:1.5px solid #ddd;
		width:93.6%;
		margin: 0 auto; 
		text-align: left;
	}
	
	
	.write .check h4{
		text-align: left;
		display: inline;
	}
	
	.write .qatitle{
		margin: 0 auto; 
		width:93.6%;
		text-align: left;
	}
	
	.write .qatitle h4{
		text-align: left;
		display:inline;
	}
	
	.write .qatitle input{
		margin-left: 10px;
		width: 1100px;
		height: 25px;
	}
	

   @font-face {
    font-family: 'KoPubDotum';
    src: url('../src/fonts/KoPubDotumBold_0.ttf') format('truetype');
   }
   
   .boardbody{
      margin:0 auto;
       width:1280px;
       font-family: 'KoPubDotum';
       padding-top: 52px;
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
   
   .oneinput table{
	   display:table; border-collapse:collapse;
	   width:1280px;
	   margin: 0 auto;
	  
   }
   .oneinput th{
	   background-color: #eee;
	    height: 55px; 
   }
   .oneinput td{
  		 height: 55px;
   }
   .tdtitle{
   text-align: left;
   padding-left: 31px;
   }
   
   .page{
	   padding-top: 16px;
	   text-align: center;
	   width:1280px;
	   margin: 0 auto;
   }
   
   .page table{
   	text-align: center;
   	 width:1280px;
	   margin: 0 auto;
   }
   
   table {
   		border-collapse:collapse;
   		width: 1280px;
   		margin: auto;
   
	}
   .oneinput table tr:nth-child(1)> th{
		border-right: none;
	}
	
	
	 .oneinput table tr:nth-child(1){
		border-top:none;
		border-bottom: none;
	}
	 .oneinput table tr:nth-child(2){
		border-bottom: none;
	}
	 .oneinput table tr:nth-child(3){
		border-bottom: none;
	}
	
</style>
		
	
</head>
<body>

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
			<a href="qs"><span>1:1문의하기</span></a>
		</div>
	
		<table border="1" align="center">
		<tr>
			<th>번호</th><th>문의항목</th><th>제목</th><th>문의일</th>
		</tr>
		<c:forEach items="${view }" var="qs">
		<tr>
			<td>${qs.num }</td>
			<td width= "150px">${qs.qlist }</td>
			<td><a href="onedetail?num=${qs.num}">${qs.title }</a></td>
			<td>
			<fmt:parseDate value="${qs.rdate }" var="rdate" pattern="yyyy-MM-dd"/>
			<fmt:formatDate value="${rdate }" pattern="yyyy.MM.dd"/>
			</td>	
		</tr>
		</c:forEach>
		</table>
	
	</div>
	<div class="page">
		<table>
		<!--페이징처리-->
		<tr style="border-left: none;border-right: none;border-bottom: none">
			<td colspan="5" style="text-align: center;">
				<c:forEach begin="${paging.startPage }" end="${paging.endPage}" var="p"> 
					<c:choose>
						<c:when test="${p == paging.nowPage }">
							<b>${p}</b>
						</c:when>	
						<c:when test="${p != paging.nowPage }">
							<a href="qsout?nowPage=${p}&cntPerPage=${paging.cntPerPage}&custnum=${custnum}">${p}</a>
						</c:when>	
					</c:choose>
				</c:forEach>
			</td>
		</tr>
		</table>
<!--페이징처리 끝-->
	</div>
</body>
</html>