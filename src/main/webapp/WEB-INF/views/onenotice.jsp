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
		<form action ="qsave", method="post">
			<div class="aa">
				<h3>문의하기</h3> 
				<a href="qsout?custnum=${member.custnum}"><span>내 문의내역</span></a>
			</div>
			
			<div class="info">
				<h4>이메일 &emsp; <a>${member.email}</a></h4> 
			</div> 
			
			<div class="write">
				<div class="check">
					<h4>문의항목</h4>&emsp;&emsp;
					<input type="radio" name="qlist" value="사이트이용 문의"> 사이트이용 문의&emsp;
					<input type="radio" name="qlist" value="장애/오류 문의"> 장애/오류 문의&emsp;
					<input type="radio" name="qlist" value="기타 문의"> 기타 문의<br>
				</div>
			
				<div class="qatitle">	
					<h4>제목</h4>&emsp;&emsp;&emsp;
					<input type="text" name="title">
				</div>
				<%-- <div class="custnum">
					<input type="hidden" name="custnum" value="${member.custnum}" readonly>
				</div> --%>
				<textarea style="width:93.6%; height: 402px;" name="content"></textarea>
				<br><input type="submit" value="등록"> <input type="button" value="취소" onclick="location.href='index'">
			</div>
		</form>
	</div>
	
	
</body>
</html>