<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="cpath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Coordi For SHOES 홈 화면</title>
    <link rel="stylesheet" href="/src/main/webapp/resources/css/style.css">
    <link rel="stylesheet" href="${cpath}/resources/css/style.css">
    <script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
    <style>
        @keyframes move {
            0% {
                left: 0;
            }

            5% {
                left: -780px;
            }

            33% {
                left: -780px;
            }

            38% {
                left: -1560px;
            }

            66% {
                left: -1560px;
            }

            71% {
                left: -2340px;
            }

            99.9% {
                left: -2340px;
            }

            99.99% {
                left: 0px;
            }

            100% {
                left: 0px;
            }
        }
    </style>
</head>

<body>
    <header>
        <div id="TOP" class="flex">
            <div>
                <a href="">
                    <img src="${cpath}/resources/img/MainLogo.png" alt="" class="main_Logo">
                </a>
            </div>
            <div class="flex header_main">
                <div>
                    <a href="">
                        <h1 id="header_font">COORDI FOR SHOES</h1>
                    </a>
                </div>
                <div>
                    <a href="">서비스소개</a>
                    <a href="">공지사항</a>
                </div>
            </div>
        <c:choose>
        	<c:when test="${empty loginMember}">
	            <div class="flex header_left">
	                <div>
		                <a href="">로그인</a>
		                <a href="">회원가입</a>
	                </div>
	            </div>
            </c:when>
            <c:otherwise>			
				<div class="flex header_left">
	                <div>
	                	<span>${loginMember.memName}</span>
		                <a href="">내정보</a>
		                <a class="" href="${cpath}/Logout.do">로그아웃</a>
	                </div>
	            </div>
			</c:otherwise>
		</c:choose>
        </div>
    </header>
    <!-- 헤더 끝 -->

<!-- 홈화면 -->
<div class="section">
    <input type="radio" name="slide" id="slide01" checked>
    <input type="radio" name="slide" id="slide02">
    <input type="radio" name="slide" id="slide03">

    <div class="slidewrap">
        <ul class="slidelist">
            <li>
                <a style="display: flex;">
                    <p class="slide-info">
                        신발에 맞는 맞춤 코디 <br> 추천해드릴게요! <br>
                        오늘 뭐 신지? 오늘 뭐 입지? 고민하지마세요! <br> 당신의 맞춤 코디 되어드릴게요.
                        <span class="home-btn">추천 서비스</span>
                    </p>
                    <!-- <label for="slide03" class="left"></label> -->
                    <img src="${cpath}/resources/img/home01.jpg" style="width: 40%;">
                    <!-- <label for="slide02" class="right"></label> -->
                </a>
            </li>

            <li>
                <a style="display: flex;">
                    <p class="slide-info">
                        가죽샌들 <br> 139,000원 <br>           
                        나이키 <br> <span class="home-btn">M O R E</span>
                    </p>
                    <!-- <label for="slide01" class="left"></label> -->
                    <img src="${cpath}/resources/img/home05.jpg">
                    <!-- <label for="slide03" class="right"></label> -->
                </a>
            </li>
            <li>
                <a style="display: flex;">
                    <p class="slide-info">
                        가죽부츠 <br> 239,000원 <br>           
                        나이키 <br> <span class="home-btn">M O R E</span>
                    </p>
                    <!-- <label for="slide02" class="left"></label> -->
                    <img src="${cpath}/resources/img/home03.jpg">
                    <!-- <label for="slide01" class="right"></label> -->
                </a>
            </li>

            <div class="slide-control">
                <div class="control01">
                    <label for="slide03" class="left"></label>
                    <label for="slide02" class="right"></label>
                </div>

                <div class="control02">
                    <label for="slide01" class="left"></label>
                    <label for="slide03" class="right"></label>
                </div>

                <div class="control03">
                    <label for="slide02" class="left"></label>
                    <label for="slide01" class="right"></label>
                </div>
            </div>
        </ul>
    </div>
</div>

</body>
</html>