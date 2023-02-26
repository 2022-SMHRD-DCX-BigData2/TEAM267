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
    
</head>

<body>
    <header>
        <div id="TOP" class="flex">
            <div><a href="${cpath }/Main.do"><img src="${cpath}/resources/img/MainLogo.png" alt="" class="main_Logo"></a></div>
            <div class="flex header_main">
                <div><a href="${cpath }/Main.do">
                        <h1 id="header_font">COORDI FOR SHOES</h1>
                    </a></div>
        		<div>
                    <a href="${cpath}/Serviceinfo.do">서비스소개</a>
                    <a href="">공지사항</a>
                    <a href="${cpath}/StyleCommunity.do">커뮤니티</a>
                </div>
            </div>
            <div class="flex header_left">	
                <div><a href="">로그인</a><a href="">회원가입</a></div>
            </div>
        </div>
    </header>
    <main>
        <div id="sign" class="center"> 
            <form action="${cpath}/signup.do" method="post">
            <h1>회원가입</h1>
            <input type="text" placeholder="아이디" class="sign_input" id="ID" name="mem_id">
            <input type="password" placeholder="비밀번호" class="sign_input" id="PW" name = "mem_pw">
            <input type="text" placeholder="닉네임" class="sign_input" name = "mem_nick">
            <input type="hidden" value="1" name = "mem_type">
            
            <div class="flex gender_box">
                <div class="box_half flex center gender">
                    <P>성별</P>
                    <input type="radio" value="1" name="mem_gender" class="sign_input_radio" id="gender_man" checked>
                    <label for="gender_man">남</label>
                    <input type="radio" value="2" name="mem_gender" class="sign_input_radio" id="gender_woman">
                    <label for="gender_woman">여</label>
                </div>
                <input type="email" placeholder="이메일" class="box_half flex" id="email" name = "mem_email">
            </div>
            
            <input type="submit" value="회원가입" class="login_button">
            </form>
        </div>
    </main>
    <footer></footer>
</body>

</html>