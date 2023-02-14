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
    <title>Document</title>
    <link rel="stylesheet" href="${cpath}/resources/css/style.css">
    <link rel="stylesheet" href="/src/main/webapp/resources/css/style.css">
</head>
<body>
    <header>
        <div id="TOP" class="flex">
            <div><a href=""><img src="${cpath}/resources/img/MainLogo.png" alt="" class="main_Logo"></a></div>
            <div class="flex header_main">
                <div><a href=""><h1 id="header_font">COORDI FOR SHOES</h1></a></div>
                <div><a href="">서비스소개</a><a href="">공지사항</a></div>
            </div>
            <div class="flex header_left">       
                <div><a href="">로그인</a><a href="">회원가입</a></div>
            </div>
        </div>
    </header>
    <main>
        <div class="flex center"id="login">
            <form action="${cpath}/Login.do" method="post">
                <div class="flex login">
                    <h1>로그인</h1>
                    <input type="text" placeholder="아이디" class="login_input" id="mem_Id" name="mem_Id">
                    <input type="password" placeholder="비밀번호" class="login_input" id="mem_pw" name="mem_pw">
                    <input type="submit" value="로그인" class="login_button">
                </div>
            </form>
            <div><img src="https://via.placeholder.com/556x442" alt=""></div>
        </div>
        
    </main>
    <footer></footer>
</body>
</html>