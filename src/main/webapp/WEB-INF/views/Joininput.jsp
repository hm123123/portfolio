<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript">
function check(){
	var f = document.form1;	
	var bp = /^(19[0-9][0-9]|20\d{2})(0[0-9]|1[0-2])(0[1-9]|[1-2][0-9]|3[0-1])$/
	var pp = /^[0-9]{2,3}[0-9]{3,4}[0-9]{4}/
	var ep = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i
	var id1 = /^[a-z0-9]{4,14}$/;
	var p1 = /^[a-zA-Z0-9~!@#$%^&*()_+|<>?:{}/]{8,15}$/;
	
	if(f.name.value==""){
		alert("이름을 입력하세요.");
		f.name.select();
		return false;
	}
	if(f.birth.value==""){
		alert("생년월일을 입력하세요.");
		f.birth.select();
		return false;
	}
	if(!bp.test(f.birth.value)){
		alert("생년월일 형식이 틀립니다");
		f.birth.select();
		return false;
	}
	if($(':radio[name="sb"]:checked').length<1){
		alert("성별을 선택하세요.");
		return false;
	}
	if(f.id.value==""){
		alert("아이디를 입력하세요.");
		f.id.select();
		return false;
	}
	if(!id1.test(f.id.value)){
		alert("아이디 형식이 틀립니다.");
		f.id.select();
		return false;
	}ㄴ
	if(f.pw.value==""){
		alert("비밀번호 입력하세요.");
		f.pw.select();
		return false;
	}
	if(!p1.test(f.pw.value)){
		alert("비밀번호 형식이 틀립니다.")
		f.pw.select();
		return false;
	}
	if(f.pwcheck.value==""){
		alert("비밀번호 확인란을 입력하세요.");
		f.pwcheck.select();
		return false;
	}
	if(f.pw.value != f.pwcheck.value){
		alert("비밀번호가 일치하지 않습니다.")
		return false;
	}
	if(f.tel.value==""){
		alert("전화번호를 입력하세요.");
		f.tel.select();
		return false;
	}
	if(!pp.test(f.tel.value)){
		alert("전화번호 형식이 틀립니다.");
		f.tel.select();
		return false;
	}
	if(f.email.value==""){
		alert("이메일을 입력하세요.");
		f.email.select();
		return false;
	}
	if(!ep.test(f.email.value)){
		alert("이메일 형식이 틀립니다.");
		f.email.select();
		return false;
	}
	if(f.address.value==""){
		alert("거주지를 입력하세요.");
		f.address.select();
		return false;
	}	
	f.submit();
}
</script>
<style type="text/css">
 label {
width: 10000px;
text-align: left;
}
</style>
<title>W3.CSS</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
</head>
<body>
<div class="w3-container">
  <h1 style="font-weight: bold;">Join Us</h1>  
  <div class="w3-card-4">
    <div class="w3-container">
      <h3>정보를 입력해 주세요.</h3>
    </div>
  </div>
  <br>
    <form class="w3-container" action="save" method="post" name="form1">
      <p>
      <label>이름</label>
      <input class="w3-input" type="text" name="name" placeholder="실명입력">
      </p>   
      <p>     
      <label>생년월일</label>
      <input class="w3-input" type="text" name="birth" placeholder="YYYYMMDD">
      </p>
      <p style="text-align: left">     
      <label>성별</label>
      <input type="radio" name="sb" value="남자">남자 &emsp;&emsp;
      <input type="radio" name="sb" value="여자">여자
      </p>
      <p>     
      <label>아이디</label>
      <input class="w3-input" type="text" name="id" placeholder="영문 소문자와 숫자 조합 4-12">
      </p>
      <p style="text-align: left">     
      <label>비밀번호</label>
      <input class="w3-input" type="password" name="pw">
      영문 대/소문자, 숫자, 특수문자를 조합하여 8~16자로 입력해주세요.
      </p>
      <p style="text-align: left">     
      <label>비밀번호확인</label>
      <input class="w3-input" type="password" name="pwcheck">
      영문 대/소문자, 숫자, 특수문자를 조합하여 8~16자로 입력해주세요.
      </p>
      <p>     
      <label>전화번호</label>
      <input class="w3-input" type="text" name="tel" placeholder="'-'제외하고 숫자만 입력">
      </p>
      <p>     
      <label>이메일</label>
      <input class="w3-input" type="text" name="email" placeholder="sample@naver.com">
      </p>
      <p>     
      <label>거주지</label>
      <input class="w3-input" type="text" name="address">
      </p>     
      <input class="w3-input" type="submit" value="회원가입" onclick="return check()">        
    </form>
</div>
</body>
</html>