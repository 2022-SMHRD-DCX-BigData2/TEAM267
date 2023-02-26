<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="cpath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>신발 상세페이지</title>
      <link rel="stylesheet" href="${cpath}/resources/css/style.css">
      <link rel="stylesheet" href="${cpath}/resources/css/shoes.css">
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
                    <a href="${cpath}/StyleCommunity.do">커뮤니티</a>
                </div>
        	</c:when>
        	
        	<c:otherwise>
        		<div>
        			<a href="${cpath}/Serviceinfo.do">서비스소개</a>
        			<a href="${cpath}/Footup.do">발 사이즈 측정</a>
        			<a href="${cpath}/MYCLOSET.do">디지털 옷장</a>
        			<a href="${cpath}/StyleSelect.do">취향 선택</a>
        			<a href="${cpath}/StyleCommunity.do">커뮤니티</a>
        			<a href="${cpath}/footlist.do">신발 목록</a>
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
    <main>
        <!-- 신발 정보 -->
        <div class="shoes flex">
            <div><img src="https://image.a-rt.com/art/product/2020/02/68184_1581657478562.jpg" alt=""></div>
            <div class="content_box">
                <dl>
                    <dd>페이유에</dd>
                    <dd id="name">펠로 II</dd>
                    <dd>69,000원</dd>
                    <dd><a href="${cpath}/CLTHN_SLCTN.do" class="home-btn">COORDI</a></dd>
                </dl>
            </div>
        </div>
        <!-- 코디 -->
        <div >
            <h1>코디</h1>
            <div id="shoes_content2" class="grid">
                <a href="" >
                    <div>
                        <img src="https://via.placeholder.com/210x310" alt="">
                        <p>코디 카테고리</p>
                        <p class="p_name">코디 이름</p>
                        <span>게시물 작성일자</span>
                        <span>좋아요 개수</span>
                    </div>
                </a>
                <a href="" >
                    <div>
                        <img src="https://via.placeholder.com/210x310" alt="">
                        <p>코디 카테고리</p>
                        <p class="p_name">코디 이름</p>
                        <span>게시물 작성일자</span>
                        <span>좋아요 개수</span>
                    </div>
                </a>
                <a href="" >
                    <div>
                        <img src="https://via.placeholder.com/210x310" alt="">
                        <p>코디 카테고리</p>
                        <p class="p_name">코디 이름</p>
                        <span>게시물 작성일자</span>
                        <span>좋아요 개수</span>
                    </div>
                </a>
                <a href="" >
                    <div>
                        <img src="https://via.placeholder.com/210x310" alt="">
                        <p>코디 카테고리</p>
                        <p class="p_name">코디 이름</p>
                        <span>게시물 작성일자</span>
                        <span>좋아요 개수</span>
                    </div>
                </a>
                <a href="" >
                    <div>
                        <img src="https://via.placeholder.com/210x310" alt="">
                        <p>코디 카테고리</p>
                        <p class="p_name">코디 이름</p>
                        <span>게시물 작성일자</span>
                        <span>좋아요 개수</span>
                    </div>
                </a>
            </div>
        </div>
    </main>
    <footer>
        <div style=" height: 100px;"></div>
    </footer>
</body>
</html>
