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
    <title>Coordi For SHOES 서비스 소개</title>
    <link rel="stylesheet" href="/src/main/webapp/resources/css/style.css">
    <link rel="stylesheet" href="${cpath}/resources/css/style.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
    <script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
    <style>
        
    </style>
    <script type="text/javascript">
		function gologin() {
				location.href="${cpath}/login.do";
		}
		
		function gosign() {
			location.href="${cpath}/sign.do";
	}
	</script>
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

    <div class="info">
        <div>
            <h2>
                <span>Coordi For SHOES</span> 는 새로운 온라인 쇼핑 경험을 선물해드리고 싶습니다.(멘트 추천받음 ㅎ)
                <p>메인로고 넣으면 될 듯 로고자리</p>
                <p>메인로고 넣으면 될 듯 로고자리</p>
                <p>메인로고 넣으면 될 듯 로고자리</p>
            </h2>
        </div>

        <div class="info_list">
            <div>
                <p><span>신발 사이즈</span> 고민하지 마세요.</p>
                <p>발 사이즈를 측정해서~~</p>
                <p>구현 화면 넣을 자리</p>
                <p>구현 화면 넣을 자리</p>
                <p>구현 화면 넣을 자리</p>
                <p>구현 화면 넣을 자리</p>
                <p>구현 화면 넣을 자리</p>
            </div>

            <div>
                <p><span>마음에 드는 신발만</span>골라서 추천해 드릴게요.</p>
                <p>추천 알고리즘 어쩌고~</p>
                <p>구현 화면 넣을 자리</p>
                <p>구현 화면 넣을 자리</p>
                <p>구현 화면 넣을 자리</p>
                <p>구현 화면 넣을 자리</p>
                <p>구현 화면 넣을 자리</p>
            </div>

            <div>
                <p><span>디지털 옷장 기능</span>으로 옷을 관리하고 코디해보세요.</p>
                <p>디지털 옷장 기능~</p>
                <p>구현 화면 넣을 자리</p>
                <p>구현 화면 넣을 자리</p>
                <p>구현 화면 넣을 자리</p>
                <p>구현 화면 넣을 자리</p>
                <p>구현 화면 넣을 자리</p>
            </div>
        </div>
    </div>



</body>
</html>