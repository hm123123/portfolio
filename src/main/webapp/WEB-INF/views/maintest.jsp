<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<!-- 제이쿼리 불러오기, 아울 캐러셀 보다 위에 있어야 합니다. -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<!-- 아울 캐러셀 불러오기, 제이쿼리 보다 밑에 있어야 합니다. -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.2.1/owl.carousel.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.2.1/assets/owl.carousel.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.2.1/assets/owl.theme.default.min.css">
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="owl-carousel owl-theme">
    <div class="item">
<table>
<tr>
    <c:forEach items="${list }" var="list" begin="0" end="4" step="1">
   <td>
    <img src="./image/${list.picture }">
    ${list.carname }<br>
    ${list.readcnt }
   </td>
    </c:forEach>
</tr>
</table>
    </div>
</div>
<script type="text/javascript">
$('.owl-carousel').owlCarousel({
    loop:true,
    margin:10,
    nav:true,
    responsive:{
        0:{
            items:1
        },
        600:{
            items:3
        },
        1000:{
            items:5
        }
    }
})
</script>
</body>
</html>