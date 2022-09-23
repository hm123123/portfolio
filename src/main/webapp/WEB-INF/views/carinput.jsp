<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="carsave" method="post">
<table border="1" align="center">
<tr>
	<th>차량번호</th>
	<td><input type="text" name="carnum"></td>
</tr>
<tr>
	<th>브랜드</th>
	<td><input type="text" name="carbrand"></td>
</tr>
<tr>
	<th>모델명</th>
	<td><input type="text" name="carname"></td>
</tr>
<tr>
	<th>연료</th>
	<td>
	<input type="radio" name="fueltype" value="휘발유">휘발유
	<input type="radio" name="fueltype" value="경유">경유
	</td>
</tr>
<tr>
	<th>원산지</th>
	<td>
	<input type="radio" name="origin" value="국산">국산
	<input type="radio" name="origin" value="수입">수입
	</td>
</tr>
<tr>
	<th>연식</th>
	<td><input type="text" name="cyear"></td>
</tr>
<tr>
	<th>색상</th>
	<td><input type="text" name="color"></td>
</tr>
<tr>
	<th>주행거리</th>
	<td><input type="text" name="km"></td>
</tr>
<tr>
	<th>가격</th>
	<td><input type="text" name="price"></td>
</tr>
<tr>
	<th>참고사항</th>
	<td><textarea cols="22" rows="5" name="content"></textarea></td>
</tr>
<tr>
	<td colspan="2">
	<input type="submit" value="등록">
	<input type="reset" value="초기화">
	</td>
</tr>
</table>
<input type="hidden" name="custnum" value="${member.custnum }">
</form>
</body>
</html>