<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
    <script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
</head>
<script>
//신발 목록 불러오기 데이터
function footcategory(f_cate) {
$.each()
  $.ajax({
      url : "${cpath}/TFdata/"+f_cate,
      type : "get",
      data : {"f_cate" : f_cate},
      dataType : "json",
      success : footlist,
      error : function(){
          alert("신발목록불러오기실패"+f_cate);
      }
  })
  
}                
</script>
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
                        <h1 id="header_font">COORDI FOR SHOES ${fn:split(loginMember.mem_tst, ',')[2]}</h1>
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
        <h2>내 발사이즈</h2>
        <div class="flex center">
            <!-- 발사이즈 모양 -->
            <div class="t_center">
                <div class="foot_img">
                    <img src="${cpath}/resources/img/footmode.png" alt="">
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
                    <td><span>256<span>mm</span></span></td>
                    <td>길이</td>
                    <td><span>255<span>mm</span></span></td>
                </tr>
                <tr>
                    <td><span>98<span>mm</span></span></td>
                    <td>발볼</td>
                    <td><span>100<span>mm</span></span></td>
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
				<a href="${cpath}/Recominfo.do">
					<div class="pos_r">
						<div class="shoes_box t_center pos_a">
							<img
								src="https://image.a-rt.com/art/product/2022/10/47820_1666054804068.jpg"
								alt="" class="shoes_img">
							<div class="margin_0">
								<h4>나이키</h4>
								<p>나이키 마노아 17 레더 보이그레이드</p>
								<P>99,000원</P>
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
						</div>
					</div>
				</a> 
				<a href="${cpath}/Recominfo.do">
					<div class="pos_r">
						<div class="shoes_box t_center pos_a">
							<img
								src="https://image.a-rt.com/art/product/2020/02/73525_1581657601408.jpg"
								alt="" class="shoes_img">
							<div class="margin_0">
								<h4>페이유에</h4>
								<p>펠로 II</p>
								<P>69,000원</P>
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
						</div>
					</div>
				</a>

				<div class="pos_r">
                        <div class="shoes_box t_center pos_a">
                            <a href="">
                            <img src="https://image.a-rt.com/art/product/2021/10/88489_1634106205248.jpg" alt="" class="shoes_img">
                            <div class="margin_0">
                                <h4>프로스펙스</h4>
                                <p>스코어러 101</p>
                                <P>139,000원</P>
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
                            <img src="https://image.a-rt.com/art/product/2021/01/58354_1611798892280.jpg" alt="" class="shoes_img">
                            <div class="margin_0">
                                <h4>휠라</h4>
                                <p>코트 플럼피 벨크로</p>
                                <P>69,000원</P>
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
                            <img src="https://image.a-rt.com/art/product/2022/10/04799_1666252405610.jpg" alt="" class="shoes_img">
                            <div class="margin_0">
                                <h4>닥터마틴</h4>
                                <p>1461</p>
                                <P>210,000원</P>
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
                            <img src="https://image.a-rt.com/art/product/2021/06/98565_1624943486689.jpg" alt="" class="shoes_img">
                            <div class="margin_0">
                                <h4>닥터마틴</h4>
                                <p>1461 벡스</p>
                                <P>210,000원</P>
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
                            <img src="https://image.a-rt.com/art/product/2021/07/48297_1625735627201.jpg" alt="" class="shoes_img">
                            <div class="margin_0">
                                <h4>호킨스</h4>
                                <p>알더</p>
                                <P>129,000원</P>
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
                            <img src="https://image.a-rt.com/art/product/2022/06/20357_1654138605466.jpg" alt="" class="shoes_img">
                            <div class="margin_0">
                                <h4>스테파노로시</h4>
                                <p>트리델</p>
                                <P>119,000원</P>
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

            <div class="shoes_top_box">

            </div>
        </div>
</body>

</html>