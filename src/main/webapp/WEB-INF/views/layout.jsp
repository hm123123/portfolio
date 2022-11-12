<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>    
<!DOCTYPE html>
<html>
<head>
<style type="text/css">

	
	
	.mainimg{
		width:100%;
	}
	
	#side{
		width: 5%;
		height: 100px;
		text-align: center;
		margin-top: 0px;
		float: left;
		background-color: #f1f6f6;
	}
	
	#footer{
		clear:both;
		width:100%;
		height:85px;
		line-height:25px;
		font-size:15px;
		color:#000000;
		background-color: #919395;
		position: fixed;
		bottom:0px;
		text-align: left;
		z-index: 10;
	} 
	
</style>
<meta charset="UTF-8">
<title> <tiles:insertAttribute name="title" />  </title>
</head>
<body >
	<div id="container">
			<div id="top">
				<tiles:insertAttribute name="top"/> 
			</div>
			<div id="body">
				<tiles:insertAttribute name="body"/> 
			</div>
			<div id="footer">
				<tiles:insertAttribute name="footer"/> 
			</div>

	</div>
</body>
</html>