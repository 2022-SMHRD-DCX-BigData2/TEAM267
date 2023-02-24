<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
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
            <link rel="stylesheet" href="${cpath}/resources/css/community.css">
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
        <c:choose>
        	<c:when test="${empty loginMember}">
        		<div>
                    <a href="#" onclick="goinfo()">서비스소개</a>
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
            <main>
                <div>
                    <h1>신발 맞춤 코디 스타일</h1>
                </div>
                <div>
                    <h3>스타일</h3>
                    <div class="tab_wrap tab_area">
                        <div class="btn_area clearfix">
                            <button class="btn btn_tab act" data-depth="0" data-idx="0">캐주얼</button>
                            <button class="btn btn_tab" data-depth="0" data-idx="1">댄디</button>
                            <button class="btn btn_tab" data-depth="0" data-idx="2">스포츠</button>
                            <button class="btn btn_tab" data-depth="0" data-idx="3">로맨틱</button>
                            <button class="btn btn_tab" data-depth="0" data-idx="4">레트로</button>
                            <button class="btn btn_tab" data-depth="0" data-idx="5">포멀</button>
                            <button class="btn btn_tab" data-depth="0" data-idx="6">777</button>
                            <button class="btn btn_tab" data-depth="0" data-idx="6">777</button>
                            <button class="btn btn_tab" data-depth="0" data-idx="6">777</button>
                            <button class="btn btn_tab" data-depth="0" data-idx="6">777</button>
                            <button class="btn btn_tab" data-depth="0" data-idx="6">777</button>
                            <button class="btn btn_tab" data-depth="0" data-idx="6">777</button>
                            <button class="btn btn_tab" data-depth="0" data-idx="6">777</button>
                            <button class="btn btn_tab" data-depth="0" data-idx="6">777</button>
                            <button class="btn btn_tab" data-depth="0" data-idx="6">777</button>

                            <button class="btn btn_tab" data-depth="0" data-idx="6">777</button>
                            <button class="btn btn_tab" data-depth="0" data-idx="6">777</button>
                        </div>

                        <div class="content_area act" data-depth="0" data-idx="0">
                            <div id="shoes_community" class="flex flex-start items-center">
                                <div>
                                    <img src="https://via.placeholder.com/152x166" alt="">
                                    <p>신발 제품명</p>
                                    <p>신발 제품 이름</p>
                                </div>
                                <div id="shoes_content2" class="grid">
                                    <a href="">
                                        <div>
                                            <img src="https://via.placeholder.com/136x201" alt="">
                                            <p>코디 카테고리</p>
                                            <p class="p_name">코디 이름</p>
                                            <span class="f_size12">0000.00.00</span>
                                            <span class="f_size12">좋아요 개수</span>
                                        </div>
                                    </a>
                                    <a href="">
                                        <div>
                                            <img src="https://via.placeholder.com/136x201" alt="">
                                            <p>코디 카테고리</p>
                                            <p class="p_name">코디 이름</p>
                                            <span class="f_size12">0000.00.00</span>
                                            <span class="f_size12">좋아요 개수</span>
                                        </div>
                                    </a>
                                    <a href="">
                                        <div>
                                            <img src="https://via.placeholder.com/136x201" alt="">
                                            <p>코디 카테고리</p>
                                            <p class="p_name">코디 이름</p>
                                            <span>0000.00.00</span>
                                            <span>좋아요 개수</span>
                                        </div>
                                    </a>
                                    <a href="">
                                        <div>
                                            <img src="https://via.placeholder.com/136x201" alt="">
                                            <p>코디 카테고리</p>
                                            <p class="p_name">코디 이름</p>
                                            <span>0000.00.00</span>
                                            <span>좋아요 개수</span>
                                        </div>
                                    </a>
                                    <a href="">
                                        <div>
                                            <img src="https://via.placeholder.com/136x201" alt="">
                                            <p>코디 카테고리</p>
                                            <p class="p_name">코디 이름</p>
                                            <span>0000.00.00</span>
                                            <span>좋아요 개수</span>
                                        </div>
                                    </a>
                                </div>
                            </div>

                            <div id="shoes_community" class="flex flex-start items-center">
                                <div>
                                    <img src="https://via.placeholder.com/152x166" alt="">
                                    <p>신발 제품명</p>
                                    <p>신발 제품 이름</p>
                                </div>
                                <div id="shoes_content2" class="grid">
                                    <a href="">
                                        <div>
                                            <img src="https://via.placeholder.com/136x201" alt="">
                                            <p>코디 카테고리</p>
                                            <p class="p_name">코디 이름</p>
                                            <span>0000.00.00</span>
                                            <span>좋아요 개수</span>
                                        </div>
                                    </a>
                                    <a href="">
                                        <div>
                                            <img src="https://via.placeholder.com/136x201" alt="">
                                            <p>코디 카테고리</p>
                                            <p class="p_name">코디 이름</p>
                                            <span>0000.00.00</span>
                                            <span>좋아요 개수</span>
                                        </div>
                                    </a>
                                    <a href="">
                                        <div>
                                            <img src="https://via.placeholder.com/136x201" alt="">
                                            <p>코디 카테고리</p>
                                            <p class="p_name">코디 이름</p>
                                            <span>0000.00.00</span>
                                            <span>좋아요 개수</span>
                                        </div>
                                    </a>
                                    <a href="">
                                        <div>
                                            <img src="https://via.placeholder.com/136x201" alt="">
                                            <p>코디 카테고리</p>
                                            <p class="p_name">코디 이름</p>
                                            <span>0000.00.00</span>
                                            <span>좋아요 개수</span>
                                        </div>
                                    </a>
                                    <a href="">
                                        <div>
                                            <img src="https://via.placeholder.com/136x201" alt="">
                                            <p>코디 카테고리</p>
                                            <p class="p_name">코디 이름</p>
                                            <span>0000.00.00</span>
                                            <span>좋아요 개수</span>
                                        </div>
                                    </a>
                                </div>
                            </div>
                        </div>
                        <div class="content_area" data-depth="0" data-idx="1">
                            <p>2번쨰내용</p>
                        </div>
                        <div class="content_area" data-depth="0" data-idx="2">
                            <p>3번쨰 탭 내용</p>
                        </div>
                        <div class="content_area" data-depth="0" data-idx="3">
                            <p>4번쨰 탭 내용</p>
                        </div>
                        <div class="content_area" data-depth="0" data-idx="4">
                            <p>5번쨰 탭 내용</p>
                        </div>
                        <div class="content_area" data-depth="0" data-idx="5">
                            <p>6번쨰 탭 내용</p>
                        </div>
                        <div class="content_area" data-depth="0" data-idx="6">
                            <p>7번쨰 탭 내용</p>
                        </div>
                    </div>
                </div>

            </main>
            <footer></footer>
            <script src="${cpath}/resources/JS/tabmenu.js"></script>
        </body>

        </html>