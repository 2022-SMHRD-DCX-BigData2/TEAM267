<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
        <c:set var="cpath" value="${pageContext.request.contextPath}" />
        <!DOCTYPE html>
        <html lang="en">

        <head>
            <meta charset="UTF-8">
            <meta http-equiv="X-UA-Compatible" content="IE=edge">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <title>신발 상세</title>
            
            <link rel="stylesheet" href="${cpath}/resources/css/style.css">
            <script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
            <script src="https://kit.fontawesome.com/7208daee16.js" crossorigin="anonymous"></script>
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

            <!-- 글 내용 -->
            <div class="POST">
                <div class="POST_img">
                    <img src="${cpath}/resources/img/POST_file.png">
                </div>

                <div class="POST_content">
                    <div class="POST_content_icon">
                        <h1>결혼식때 입기 좋은 코디</h1>
                        <p>#로맨틱</p>
                    </div>
                    <span>
                        화면을 위아래로 스크롤하더라도 브라우저 화면의 특정 부분에 고정되어 움직이지 않는 UI를 본적이 있으신가요? 보통 라이브 채팅 버튼을 구현할 때 많이 쓰이는 기법인데요.
                        position 속성을 fixed로
                        지정하면 이렇게 요소를 항상 고정된(fixed) 위치에 배치할 수 있습니다.

                        이게 가능한 이유는 fixed 속성값의 배치 기준이 자신이나 부모 요소가 아닌 뷰포트(viewport), 즉 브라우저 전체화면이기 때문인데요. top, left,
                        bottom, right 속성은 각각 브라우저
                        상단, 좌측, 하단, 우측으로 부터 해당 요소가 얼마나 떨어져있는지를 결정합니다.
                    </span>

                    <div class="POST_content_info">
                        <div style="display: flex;">
                            <p>작성자:</p>
                            <p>정지명</p>
                            <p style="font-weight:50; font-size:0.1em; color:gray; align-self: center;">2023.02.07</p>
                        </div>

                        <div style="display: flex;">
                            <p><i class="fa-solid fa-share-from-square"></i></p>
                            <p><i class="fa-regular fa-heart"></i>13</p>
                        </div>
                    </div>
                </div>
            </div>

            <!-- 제품 목록 -->
            <div class="POST_product">
                <h1>제품 목록</h1>
                <div class="POST_product_list">

                    <div>
                        <img src="${cpath}/resources/img/img1.jpg" width="100px" height="100px">
                        <p>62,100원</p>
                        <p>후드티</p>
                    </div>

                    <div>
                        <img src="${cpath}/resources/img/TEST Jean02.jpg" width="100px" height="100px">
                        <p>52,000원</p>
                        <p>청바지</p>
                    </div>

                    <div>
                        <img src="${cpath}/resources/img/home03.jpg" width="100px" height="100px">
                        <p>102,000원</p>
                        <p>워커</p>
                    </div>

                    <div>
                        <img src="${cpath}/resources/img/img1.jpg" width="100px" height="100px">
                        <p>62,100원</p>
                        <p>후드티</p>
                    </div>

                    <div>
                        <img src="${cpath}/resources/img/img1.jpg" width="100px" height="100px">
                        <p>62,100원</p>
                        <p>후드티</p>
                    </div>
                </div>
            </div>

            <!-- 댓글 -->
            <div class="POST_comment">
                <h1>댓글</h1>
                <form action="">
                    <div class="POST_comment_input">
                        <input type="text" placeholder="로그인 후 작성 가능합니다.">
                        <input type="submit" value="등록">
                    </div>
                </form>

                <div class="POST_comment_list">
                    <!-- 댓글 하나 내용 시작 백엔드 작업시 for문 돌릴것 -->
                    <div class="POST_commnet_list1">
                        <ul>
                            <li><i class="fa-regular fa-user" style="font-size: x-large;"></i></li>
                            <li> &nbsp; &nbsp; 쭈녁</li>
                        </ul>

                        <ul>
                            <li>좋은 코디 감사합니다 땡큐~</li>
                        </ul>

                        <ul>
                            <li style="font-weight: 50; font-size: 0.1em; color: gray;">2023.02.07 10:41</li>
                        </ul>
                    </div>
                    <!-- 댓글 하나 내용 끝 백엔드 작업시 for문 돌릴것 -->

                    <!-- 댓글 하나 내용 시작 백엔드 작업시 for문 돌릴것 -->
                    <div class="POST_commnet_list1">
                        <ul>
                            <li><i class="fa-regular fa-user" style="font-size: x-large;"></i></li>
                            <li> &nbsp; &nbsp; 지명</li>
                        </ul>

                        <ul>
                            <li>페페로니에 미친남자 페미남 정지명</li>
                        </ul>

                        <ul>
                            <li style="font-weight: 50; font-size: 0.1em; color: gray;">2023.02.07 10:41</li>
                        </ul>
                    </div>
                    <!-- 댓글 하나 내용 끝 백엔드 작업시 for문 돌릴것 -->

                    <!-- 댓글 하나 내용 시작 백엔드 작업시 for문 돌릴것 -->
                    <div class="POST_commnet_list1">
                        <ul>
                            <li><i class="fa-regular fa-user" style="font-size: x-large;"></i></li>
                            <li> &nbsp; &nbsp; 호주</li>
                        </ul>

                        <ul>
                            <li>호주호주호주호주호주호주는 오스트레일리아</li>
                        </ul>

                        <ul>
                            <li style="font-weight: 50; font-size: 0.1em; color: gray;">2023.02.07 10:41</li>
                        </ul>
                    </div>
                    <!-- 댓글 하나 내용 끝 백엔드 작업시 for문 돌릴것 -->

                    <!-- 댓글 하나 내용 시작 백엔드 작업시 for문 돌릴것 -->
                    <div class="POST_commnet_list1">
                        <ul>
                            <li><i class="fa-regular fa-user" style="font-size: x-large;"></i></li>
                            <li> &nbsp; &nbsp; 상민</li>
                        </ul>

                        <ul>
                            <li>북괴 용사 정상민의 룩</li>
                        </ul>

                        <ul>
                            <li style="font-weight: 50; font-size: 0.1em; color: gray;">2023.02.07 10:41</li>
                        </ul>
                    </div>
                    <!-- 댓글 하나 내용 끝 백엔드 작업시 for문 돌릴것 -->
                </div>
            </div>
        </body>

        </html>