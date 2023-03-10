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
    <!-- 헤더 끝 -->      <div class="my_page">
      <h2>내정보</h2>
        <div class="tab_wrap tab_area" id="my_tab_wrap">
            <div class="btn_area clearfix" id="my_btn_tab">
              <button class="btn btn_tab act" data-depth="0" data-idx="0" style="margin-right: 10px;">회원정보 수정</button>
              <button class="btn btn_tab" data-depth="0" data-idx="1">커뮤니티</button>
            </div>
            <!-- 내정보 페이지 -->
            <div class="content_area act" data-depth="0" data-idx="0">
              <div id="sign" class="center"> 
                <form action="${cpath}/userUpdate.do" class="my_sign">
                
	                <input type="text" placeholder="아이디" class="sign_input" id="ID" name = "mem_id" value="${loginMember.mem_id}">
	                <input type="password" placeholder="비밀번호" class="sign_input" id="PW" name = "mem_pw" value="${loginMember.mem_pw}">
	                <input type="text" placeholder="변경할 닉네임을 입력하세요" class="sign_input" name = "mem_nick" value="${loginMember.mem_nick}">
	                <input type="email" placeholder="변경할 이메일을 입력하세요" class="sign_input" id="email" name = "mem_email" value="${loginMember.mem_email}">
	                
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
                    
                  </table>
                </div>
              </div>
            </div>
          </div>
      </div>
    <script src="${cpath}/resources/JS/tabmenu.js"></script>
</body>
</html>