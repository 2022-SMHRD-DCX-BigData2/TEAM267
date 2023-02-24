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
            <div><a href=""><img src="/src/main/webapp/resources/img/MainLogo.png" alt="" class="main_Logo"></a></div>
            <div class="flex header_main">
                <div><a href=""><h1 id="header_font">COORDI FOR SHOES</h1></a></div>
                <div><a href="">서비스소개</a><a href="">공지사항</a></div>
            </div>
            <div class="flex header_left">       
                <div><a href="">로그인</a><a href="">회원가입</a></div>
            </div>
        </div>
    </header>
      <div class="my_page">
      <h2>내정보</h2>
        <div class="tab_wrap tab_area" id="my_tab_wrap">
            <div class="btn_area clearfix" id="my_btn_tab">
              <button class="btn btn_tab act" data-depth="0" data-idx="0" style="margin-right: 10px;">회원정보 수정</button>
              <button class="btn btn_tab" data-depth="0" data-idx="1">커뮤니티</button>
            </div>
            <!-- 내정보 페이지 -->
            <div class="content_area act" data-depth="0" data-idx="0">
              <div id="sign" class="center"> 
                <form action="" class="my_sign">
                <input type="text" placeholder="아이디" class="sign_input" id="ID">
                <input type="password" placeholder="비밀번호" class="sign_input" id="PW">
                <input type="text" placeholder="닉네임" class="sign_input">
                <input type="email" placeholder="이메일" class="sign_input" id="email">
                
                <input type="submit" value="저장" class="login_button">
                </form>
              </div>
            </div>
            <!-- 커뮤니티 페이지 -->
            <div class="content_area" data-depth="0" data-idx="1">
              <div class="tab_area">
                <div class="btn_area clearfix" id="my_bltn">
                  <button class="btn btn_tab act" data-depth="1" data-idx="0">댓글</button>
                  <button class="btn btn_tab" data-depth="1" data-idx="1">게시물</button>
                  <button class="btn btn_tab" data-depth="1" data-idx="2">좋아요</button>

                </div>
          
                <div class="content_area act" data-depth="1" data-idx="0" id="my_board">
                    <table class="board">
                        <tr>
                            <td>원글</td>
                            <td colspan="2">댓글 내용</td>
                            <td>작성일</td>
                            <td>수정</td>
                            <td>삭제</td>
                        </tr>
                        <tr>
                            <td>아디다스바지</td>
                            <td colspan="2"><a>좋아요</a></td>
                            <td>2022-11-25</td>
                            <td><button type="button" class="btn btn-outline-dark">수정</button></td>
                            <td><button type="button" class="btn btn-outline-dark">삭제</button></td>
                        </tr>
                        <tr>
                          <td>아디다스바지</td>
                          <td colspan="2"><a>좋아요</a></td>
                          <td>2022-11-25</td>
                          <td><button type="button" class="btn btn-outline-dark">수정</button></td>
                          <td><button type="button" class="btn btn-outline-dark">삭제</button></td>
                        </tr>
                        <tr>
                          <td>아디다스바지</td>
                          <td colspan="2"><a>좋아요</a></td>
                          <td>2022-11-25</td>
                          <td><button type="button" class="btn btn-outline-dark">수정</button></td>
                          <td><button type="button" class="btn btn-outline-dark">삭제</button></td>
                        </tr>
                    </table>
                </div>

                <div class="content_area" data-depth="1" data-idx="1" id="my_board">
                  <table class="board">
                    <tr>
                        <td>작성자</td>
                        <td>제목</td>
                        <td>작성일</td>
                        <td>수정</td>
                        <td>삭제</td>
                    </tr>
                    <tr>
                        <td>홍길동</td>
                        <td><a>그리워하면</a></td>
                        <td>2022-11-25</td>
                        <td><button type="button" class="btn btn-outline-dark">수정</button></td>
                        <td><button type="button" class="btn btn-outline-dark">삭제</button></td>
                    </tr>
                    <tr>
                        <td>홍길동</td>
                        <td><a>그리워하면</a></td>
                        <td>2022-11-25</td>
                        <td><button type="button" class="btn btn-outline-dark">수정</button></td>
                        <td><button type="button" class="btn btn-outline-dark">삭제</button></td>
                    </tr>
                    <tr>
                        <td>홍길동</td>
                        <td><a>그리워하면</a></td>
                        <td>2022-11-25</td>
                        <td><button type="button" class="btn btn-outline-dark">수정</button></td>
                        <td><button type="button" class="btn btn-outline-dark">삭제</button></td>
                    </tr>
                  </table>
                </div>
              </div>
            </div>
          </div>
      </div>
    <script src="/src/main/webapp/resources/JS/tabmenu.js"></script>
</body>
</html>