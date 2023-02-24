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
    <link rel="stylesheet" href="${cpath}/resources/css/foot_page.css">
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
        <h2>내 발사이즈</h2>
        <div class="flex center">
            <!-- 발사이즈 모양 -->
            <div class="t_center">
                <div class="foot_img">
                    <img src="https://via.placeholder.com/111x111" alt="">
                </div>
                <a href="${cpath}/Footup.do" class="bold">발사이즈 측정</a>
            </div>
            <!-- 발사이즈 상세정보 -->
            <table class="t_center">
                <tr class="bold">
                    <td>왼발</td>
                    <td></td>
                    <td>오른발</td>
                </tr>
                <tr>
                    <td><span>250<span>mm</span></span></td>
                    <td>길이</td>
                    <td><span>250<span>mm</span></span></td>
                </tr>
                <tr>
                    <td><span>96<span>mm</span></span></td>
                    <td>발볼</td>
                    <td><span>96<span>mm</span></span></td>
                </tr>
            </table>
            <!-- 추천 발사이즈 -->
            <div class="t_center">
                <h3>추천 발사이즈</h3>
                <div id="choice_size" class="flex center">
                    <span>${loginMember.mem_footsize}</span>
                    <span>mm</span>
                </div>
            </div>
        </div>
<!-- 신발 추천 -->
        <div style="display: flex; flex-direction: column; align-items: center;">
            <h2>신발 추천</h2>
            <h3>운동화</h3>
            <div class="shoes_top_box">
                <div class=" evenly ">
                    <div class="pos_r">
                        <div class="shoes_box t_center pos_a">
                            <a href="">
                            <img src="https://via.placeholder.com/118" alt="" class="shoes_img">
                            <div class="margin_0">
                                <h4>브랜드</h4>
                                <p>제품명</p>
                                <P>제품가격</P>
                            </div>
                            
                            <div class="shoes_size_box">
                                <hr>
                                <div id="shoes_size" class="grid">
                                    <div>250</div>
                                    <div>255</div>
                                    <div>260</div>
                                    <div>265</div>
                                    <div>270</div>
                                    <div>270</div>
                                </div>
                            </div>
                            </a>
                        </div>
                    </div>
                    <div class="pos_r">
                        <div class="shoes_box t_center pos_a">
                            <a href="">
                            <img src="https://via.placeholder.com/118" alt="" class="shoes_img">
                            <div class="margin_0">
                                <h4>브랜드</h4>
                                <p>제품명</p>
                                <P>제품가격</P>
                            </div>
                            <div class="shoes_size_box">
                                <hr>
                                <div id="shoes_size" class="grid">
                                    <div>250</div>
                                    <div>255</div>
                                    <div>260</div>
                                    <div>265</div>
                                    <div>270</div>
                                    <div>270</div>
                                </div>
                            </div>
                            </a>
                        </div>
                    </div>
                    
                    <div class="pos_r">
                        <div class="shoes_box t_center pos_a">
                            <a href="">
                            <img src="https://via.placeholder.com/118" alt="" class="shoes_img">
                            <div class="margin_0">
                                <h4>브랜드</h4>
                                <p>제품명</p>
                                <P>제품가격</P>
                            </div>
                            
                            <div class="shoes_size_box">
                                <hr>
                                <div id="shoes_size" class="grid">
                                    <div>250</div>
                                    <div>255</div>
                                    <div>260</div>
                                    <div>265</div>
                                    <div>270</div>
                                    <div>270</div>
                                </div>
                            </div>
                            </a>
                        </div>
                    </div>
                    <div class="pos_r">
                        <div class="shoes_box t_center pos_a">
                            <a href="">
                            <img src="https://via.placeholder.com/118" alt="" class="shoes_img">
                            <div class="margin_0">
                                <h4>브랜드</h4>
                                <p>제품명</p>
                                <P>제품가격</P>
                            </div>
                            
                            <div class="shoes_size_box">
                                <hr>
                                <div id="shoes_size" class="grid">
                                    <div>250</div>
                                    <div>255</div>
                                    <div>260</div>
                                    <div>265</div>
                                    <div>270</div>
                                    <div>270</div>
                                </div>
                            </div>
                            </a>
                        </div>
                    </div>
                    
                </div>
            </div>
            <h3>구두</h3>
            <div class="shoes_top_box">
                <div class=" evenly ">
                    <div class="pos_r">
                        <div class="shoes_box t_center pos_a">
                            <a href="">
                            <img src="https://via.placeholder.com/118" alt="" class="shoes_img">
                            <div class="margin_0">
                                <h4>브랜드</h4>
                                <p>제품명</p>
                                <P>제품가격</P>
                            </div>
                            
                            <div class="shoes_size_box">
                                <hr>
                                <div id="shoes_size" class="grid">
                                    <div>250</div>
                                    <div>255</div>
                                    <div>260</div>
                                    <div>265</div>
                                    <div>270</div>
                                    <div>270</div>
                                </div>
                            </div>
                            </a>
                        </div>
                    </div>
                    <div class="pos_r">
                        <div class="shoes_box t_center pos_a">
                            <a href="">
                            <img src="https://via.placeholder.com/118" alt="" class="shoes_img">
                            <div class="margin_0">
                                <h4>브랜드</h4>
                                <p>제품명</p>
                                <P>제품가격</P>
                            </div>
                            
                            <div class="shoes_size_box">
                                <hr>
                                <div id="shoes_size" class="grid">
                                    <div>250</div>
                                    <div>255</div>
                                    <div>260</div>
                                    <div>265</div>
                                    <div>270</div>
                                    <div>270</div>
                                </div>
                            </div>
                            </a>
                        </div>
                    </div>
                    
                    <div class="pos_r">
                        <div class="shoes_box t_center pos_a">
                            <a href="">
                            <img src="https://via.placeholder.com/118" alt="" class="shoes_img">
                            <div class="margin_0">
                                <h4>브랜드</h4>
                                <p>제품명</p>
                                <P>제품가격</P>
                            </div>
                            
                            <div class="shoes_size_box">
                                <hr>
                                <div id="shoes_size" class="grid">
                                    <div>250</div>
                                    <div>255</div>
                                    <div>260</div>
                                    <div>265</div>
                                    <div>270</div>
                                    <div>270</div>
                                </div>
                            </div>
                            </a>
                        </div>
                    </div>
                    <div class="pos_r">
                        <div class="shoes_box t_center pos_a">
                            <a href="">
                            <img src="https://via.placeholder.com/118" alt="" class="shoes_img">
                            <div class="margin_0">
                                <h4>브랜드</h4>
                                <p>제품명</p>
                                <P>제품가격</P>
                            </div>
                            
                            <div class="shoes_size_box">
                                <hr>
                                <div id="shoes_size" class="grid">
                                    <div>250</div>
                                    <div>255</div>
                                    <div>260</div>
                                    <div>265</div>
                                    <div>270</div>
                                    <div>270</div>
                                </div>
                            </div>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
            <h3>스니커즈</h3>
            <div class="shoes_top_box">
                <div class=" evenly ">
                    <div class="pos_r">
                        <div class="shoes_box t_center pos_a">
                            <a href="">
                            <img src="https://via.placeholder.com/118" alt="" class="shoes_img">
                            <div class="margin_0">
                                <h4>브랜드</h4>
                                <p>제품명</p>
                                <P>제품가격</P>
                            </div>
                            
                            <div class="shoes_size_box">
                                <hr>
                                <div id="shoes_size" class="grid">
                                    <div>250</div>
                                    <div>255</div>
                                    <div>260</div>
                                    <div>265</div>
                                    <div>270</div>
                                    <div>270</div>
                                </div>
                            </div>
                            </a>
                        </div>
                    </div>
                    <div class="pos_r">
                        <div class="shoes_box t_center pos_a">
                            <a href="">
                            <img src="https://via.placeholder.com/118" alt="" class="shoes_img">
                            <div class="margin_0">
                                <h4>브랜드</h4>
                                <p>제품명</p>
                                <P>제품가격</P>
                            </div>
                            
                            <div class="shoes_size_box">
                                <hr>
                                <div id="shoes_size" class="grid">
                                    <div>250</div>
                                    <div>255</div>
                                    <div>260</div>
                                    <div>265</div>
                                    <div>270</div>
                                    <div>270</div>
                                </div>
                            </div>
                            </a>
                        </div>
                    </div>
                    
                    <div class="pos_r">
                        <div class="shoes_box t_center pos_a">
                            <a href="">
                            <img src="https://via.placeholder.com/118" alt="" class="shoes_img">
                            <div class="margin_0">
                                <h4>브랜드</h4>
                                <p>제품명</p>
                                <P>제품가격</P>
                            </div>
                            
                            <div class="shoes_size_box">
                                <hr>
                                <div id="shoes_size" class="grid">
                                    <div>250</div>
                                    <div>255</div>
                                    <div>260</div>
                                    <div>265</div>
                                    <div>270</div>
                                    <div>270</div>
                                </div>
                            </div>
                            </a>
                        </div>
                    </div>
                    <div class="pos_r">
                        <div class="shoes_box t_center pos_a">
                            <a href="">
                            <img src="https://via.placeholder.com/118" alt="" class="shoes_img">
                            <div class="margin_0">
                                <h4>브랜드</h4>
                                <p>제품명</p>
                                <P>제품가격</P>
                            </div>
                            
                            <div class="shoes_size_box">
                                <hr>
                                <div id="shoes_size" class="grid">
                                    <div>250</div>
                                    <div>255</div>
                                    <div>260</div>
                                    <div>265</div>
                                    <div>270</div>
                                    <div>270</div>
                                </div>
                            </div>
                            </a>
                        </div>
                    </div>
                    
                </div>
            </div>
        </div>
</body>

</html>