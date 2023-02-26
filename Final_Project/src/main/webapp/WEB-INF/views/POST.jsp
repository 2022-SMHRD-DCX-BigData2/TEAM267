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

            <!-- 글 내용 -->
            <div class="POST">
                <div class="POST_img">
                    <img src="${cpath}/resources/img/WRITE.png">
                </div>

                <div class="POST_content">
                    <div class="POST_content_icon">
                        <h3>안녕하세요. 오늘은 캐주얼 코디를 준비해봤습니다.</h3>
                        <p>캐주얼</p>
                    </div>
                    <span>
                   	 안녕하세요. 오늘은 캐주얼 코디를 준비해봤습니다. 코디 이쁘게 봐주세요
                    </span>

                    <div class="POST_content_info">
                        <div style="display: flex;">
                            <p>작성자:</p>
                            <p>이준혁</p>
                            <p style="font-weight:50; font-size:0.1em; color:gray; align-self: center;">2023.02.26</p>
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
                        <img src="https://image.msscdn.net/images/goods_img/20171110/668822/668822_1_500.jpg" width="100px" height="100px">
                        <p>334,000원</p>
                        <p>MTR 오버핏 더블 롱 코트 (블랙)</p>
                    </div>

                    <div>
                        <img src="https://image.msscdn.net/images/goods_img/20210714/2028329/2028329_2_500.jpg" width="100px" height="100px">
                        <p>49,900원</p>
                        <p>스트레이트 데님 팬츠 [워시드 블랙]</p>
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
                            <li> &nbsp; &nbsp; 호주호주</li>
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
                            <li>오늘은 이 코디와 비슷하게 입고 나가야겠네요. 감사합니다.</li>
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