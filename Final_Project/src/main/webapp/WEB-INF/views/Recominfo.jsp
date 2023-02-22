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
            <div><a href=""><img src="${cpath}/resources/img/MainLogo.png" alt="" class="main_Logo"></a></div>
            <div class="flex header_main">
                <div><a href="">
                        <h1 id="header_font">COORDI FOR SHOES</h1>
                    </a></div>
                <div><a href="">서비스소개</a><a href="">공지사항</a></div>
            </div>
            <div class="flex header_left">
                <div><a href="">로그인</a><a href="">회원가입</a></div>
            </div>
        </div>
    </header>
    <main>
        <!-- 신발 정보 -->
        <div class="shoes flex">
            <div><img src="${cpath}/resources/img/home05.jpg" alt=""></div>
            <div class="content_box">
                <dl>
                    <dd>브랜드명</dd>
                    <dd id="name">제품명</dd>
                    <dd>가격</dd>
                    
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
