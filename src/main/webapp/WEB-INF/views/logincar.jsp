<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript">
function check(){
	var f = document.form1;	
	var id1 = /^[a-z0-9]{4,14}$/;
	var p1 = /^[a-zA-Z0-9~!@#$%^&*()_+|<>?:{}/]{8,15}$/;
	
	if(f.id.value==""){
		alert("아이디 또는 비밀번호를 잘못 입력하셨습니다.");
		f.id.select();
		return false;
	}
	if(!id1.test(f.id.value)){
		alert("아이디 또는 비밀번호를 잘못 입력하셨습니다.");
		f.id.select();
		return false;
	}
	if(f.pw.value==""){
		alert("아이디 또는 비밀번호를 잘못 입력하셨습니다.");
		f.pw.select();
		return false;
	}
	if(!p1.test(f.pw.value)){
		alert("아이디 또는 비밀번호를 잘못 입력하셨습니다.")
		f.pw.select();
		return false;
	}
	f.submit();
}
</script>
<style type="text/css">
	.loginform{
		position: relative;
		top: 160px;
		font-size: 30px;
	}
	input[type=text], input[type=password] {
	  width: 830px;
	  height: 55px;
	  padding: 12px 20px;
	  margin: 8px 0;
	  display: inline-block;
	  border: 1px solid #ccc;
	  box-sizing: border-box;
	  font-size: 17px;
	}
	
	.idsavememo{
		font-size: 18px;
		position:relative;
		left:-370px;
		margin: 8px 0 0 0;
	}
	
	input[type=submit]{
		width: 830px;
		height: 55px;
		padding: 12px 20px;
		margin: 50px 0 0 0;
		display: inline-block;
		border: 1px solid #ccc;
		box-sizing: border-box;
		color: white;
		background-color: #dddfe9;
		font-size: 17px;
		cursor: pointer;
	}
	
	input[type=submit]:hover{
		background-color:#444;
		border: 1px solid #444;
		color: white;
		font-weight: bold;
	}
	
	.submenu{
		font-size:18px; 
		margin: 20px 0 0 0;
	}
	
	.maintext{
		margin-bottom: 40px;
	}
	
	
</style>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="loginform">
	<div class="maintext">
	<h1>EureCar</h1>
	</div>
	<form name="form1" action="carlogin" method="post" >
	
				<input type="text" name="id" placeholder="아이디"><br>
			
				<input type="password" name="pw" placeholder="비밀번호"><br>
				<div class="idsavememo">
				<input type="checkbox" name="idsave" id="idsave"> 아이디저장<br>
				</div>
				
				<input type="submit" value="로그인" onclick="return check()"><br>
	</form>
	<div class="submenu">
	<a href="findid">아이디 찾기</a> | <a href="findpw">비밀번호 찾기</a> | <a href="joininput">회원가입</a>
	</div>
</div>
</body>
</html>

