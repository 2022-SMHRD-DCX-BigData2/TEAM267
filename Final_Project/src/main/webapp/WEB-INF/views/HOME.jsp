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
    <link rel="stylesheet" href="${cpath}/resources/css/style.css">
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
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
                <a href="${cpath}/Main.do">
                    <img src="${cpath}/resources/img/MainLogo.png" alt="" class="main_Logo">
                </a>
            </div>
            <div class="flex header_main">
                <div>
                    <a href="${cpath}/Main.do">
                        <h1 id="header_font">COORDI FOR SHOES</h1>
                    </a>
                </div>
        <c:choose>
        	<c:when test="${empty loginMember}">
        		<div>
                    <a href="${cpath}/Serviceinfo.do">서비스소개</a>
                    <a href="">공지사항</a>
                </div>
        	</c:when>
        	
        	<c:otherwise>
        		<div>
        			<a href="${cpath}/Serviceinfo.do">서비스소개</a>
        			<a href="${cpath}/Footup.do">발 사이즈 측정</a>
        			<a href="${cpath}/MYCLOSET.do">디지털 옷장</a>
        			<a href="${cpath}/footlist.do">신발 보러가기</a>
        			<a href="${cpath}/StyleSelect.do">취향 선택</a>
        		</div>
        	</c:otherwise>
        </c:choose>

            </div>
        <c:choose>
        	<c:when test="${empty loginMember}">
	            <div class="flex header_left">
	                <div>
		                <a href="${cpath}/LoginForm.do">로그인</a>
		                <a href="${cpath}/signupForm.do"> 회원가입 </a>
	                </div>
	            </div>
            </c:when>
            <c:otherwise>			
				<div class="flex header_left">
	                <div>
	                	<span>${loginMember.mem_nick}</span>
		                <a href="${cpath}/MYpage.do">내정보</a>
		                <a href="${cpath}/Logout.do"> 로그아웃 </a>
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
            	<c:choose>
        	<c:when test="${empty loginMember}">
				<a style="display: flex;" href="${cpath}/LoginForm.do">
                    <p class="slide-info">
                       	 신발 맞춤 코디 <br> 추천해드릴게요! <br>
                                                       오늘 뭐 신지? 오늘 뭐 입지? 고민하지마세요! <br> 
                        <p><span>Coordi For SHOES</span> 에서는 </p>
                                                       당신의 맞춤 코디 되어드릴게요.
                                                       
                        <span class="home-btn">추천 서비스</span>
                    </p>
                    <!-- <label for="slide03" class="left"></label> -->
                    <img src="${cpath}/resources/img/home01.jpg" style="width: 40%;">
                    <!-- <label for="slide02" class="right"></label> -->
                </a>
            </c:when>
            
            <c:otherwise>			
				<a style="display: flex;" href="${cpath}/footinfoRecom.do">
                    <p class="slide-info">
                       	  신발 맞춤 코디 <br> 추천해드릴게요! <br>
                                                       오늘 뭐 신지? 오늘 뭐 입지? 고민하지마세요! <br> 당신의 맞춤 코디 되어드릴게요.
                                                       
                        <span class="home-btn">추천 서비스</span>
                    </p>
                    <!-- <label for="slide03" class="left"></label> -->
                    <img src="${cpath}/resources/img/home01.jpg" style="width: 40%;">
                    <!-- <label for="slide02" class="right"></label> -->
                </a>
			</c:otherwise>
		</c:choose>
                
            </li>

            <li>
            <c:choose>
            	<c:when test="${empty loginMember}">
            	<a style="display: flex;" href="${cpath}/LoginForm.do">
                    <p class="slide-info">
                        디지털 옷장기능으로 <br> 의류를 손쉽게 관리하세요! <br><br><span class="home-btn">디지털 옷장</span>
                    </p>
                    <!-- <label for="slide01" class="left"></label> -->
                    <img src="${cpath}/resources/img/main2.png" style="height: 300px;">
                    <!-- <label for="slide03" class="right"></label> -->
                </a>
            	</c:when>
            	
            	<c:otherwise>
            	<a style="display: flex;" href="${cpath}/MYCLOSET.do">
                    <p class="slide-info">
                        디지털 옷장기능으로 <br> 의류를 손쉽게 관리하세요! <br><br><span class="home-btn">디지털 옷장</span>
                    </p>
                    <!-- <label for="slide01" class="left"></label> -->
                    <img src="${cpath}/resources/img/main2.png" style="height: 300px;">
                    <!-- <label for="slide03" class="right"></label> -->
                </a>
            	</c:otherwise>
            </c:choose>

            </li>
            
            <li>
            <c:choose>
            	<c:when test="${empty loginMember}">
            		<a style="display: flex;" href="${cpath}/LoginForm.do">
                    <p class="slide-info">
                        스타일을 PICK하시면 <br> 취향저격 신발을 추천해드립니다! <br>           
                        <br> <span class="home-btn">P I C K</span>
                    </p>
                    <!-- <label for="slide02" class="left"></label> -->
                    <img src="${cpath}/resources/img/main3.png" style="height: 270px; width: 600px;">
                    <!-- <label for="slide01" class="right"></label> -->
                </a>
            	</c:when>
            	
            	<c:otherwise>
            	 <a style="display: flex;" href="${cpath}/StyleSelect.do">
                    <p class="slide-info">
                        스타일을 PICK하시면 <br> 취향저격 신발을 추천해드립니다! <br>           
                        <br> <span class="home-btn">P I C K</span>
                    </p>
                    <!-- <label for="slide02" class="left"></label> -->
                    <img src="${cpath}/resources/img/main3.png" style="height: 270px; width: 600px;">
                    <!-- <label for="slide01" class="right"></label> -->
                </a>
            	</c:otherwise>
            </c:choose>

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