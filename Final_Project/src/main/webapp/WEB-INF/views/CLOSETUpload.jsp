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
    <title>Coordi For SHOES</title>
    <link rel="stylesheet" href="${cpath}/resources/css/style.css">
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
    <script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
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
    
    <div class="closet_upload_main">
    	<form action="" class="closet_upload_form">
    		<div class="closet_upload_sub1">
    			<span style="font-size: x-large">이름</span>
    			<input type="text" placeholder="의류 이름을 지어주세요." style="height: 40px; width: 200px;">
    			<span style="margin-top: 30px; font-size: x-large;">옷 정보</span>
				<ul class="closet_upload_ul">
					<span>카테고리</span> 
					<li>
						<select>
							<option value="empty">&nbsp;</option>
							<option value="shirts">셔츠</option>
							<option value="pants">바지</option>
							<option value="outer">외투</option>
						</select>
					</li>
					<span>색상</span> 
					<li>
						<select>
							<option value="shirts">준비중인 서비스 입니다.</option>
						</select>
					</li>
					
					<span>소재</span> 
					<li>
						<select>
							<option value="shirts">준비중인 서비스 입니다.</option>
						</select>
					</li>
					
					<span>패턴</span> 
					<li>
						<select>
							<option value="shirts">준비중인 서비스 입니다.</option>
						</select>
					</li>
				</ul>
				<input type="submit" value="추가 하기" class="closet_upload_submit">
    		</div>
    		
    		<div class="closet_upload_sub2">
    			<span style="font-size: x-large">등록</span>
    			<div>
    				<img alt="" src="${cpath}/resources/img/whiteback.png" style="width: 100%; height: 100%;">
    			</div>
    			<input type="file" value="사진 등록" style="margin-top:1em">
    		</div>
		</form>
    </div>
</body>
</html>