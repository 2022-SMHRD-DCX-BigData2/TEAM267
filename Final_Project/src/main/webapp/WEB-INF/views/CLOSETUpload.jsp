<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Coordi For SHOES</title>
<link rel="stylesheet" href="${cpath}/resources/css/style.css">
<link rel="stylesheet" href="${cpath}/resources/css/upload.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
<script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
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
	<main>
	<div class="closet_upload_main">
		<form action="${cpath}/MYCLOSET.do" class="closet_upload_form">
			<div class="closet_upload_sub1">
				<span style="font-size: x-large">이름</span> <input type="text"
					placeholder="의류 이름을 지어주세요." style="height: 40px; width: 200px;">
				<span style="margin-top: 30px; font-size: x-large;">옷 정보</span>
				<ul class="closet_upload_ul">
					<span>카테고리</span>
					<li><select>
							<option value="empty">&nbsp;</option>
							<option value="shirts">니트/스웨터</option>
							<option value="pants">후드티셔츠</option>
							<option value="outer">피케/카라티셔츠</option>
					</select></li>
					<span>색상</span>
					<li><select>
							<option value="shirts">준비중인 서비스 입니다.</option>
					</select></li>

					<span>소재</span>
					<li><select>
							<option value="shirts">준비중인 서비스 입니다.</option>
					</select></li>

					<span>패턴</span>
					<li><select>
							<option value="shirts">준비중인 서비스 입니다.</option>
					</select></li>
				</ul>
				<input type="submit" value="추가 하기" class="closet_upload_submit">
			</div>

			<div class="grid Upload" style="display: flex;
										    flex-direction: column;
										    margin-left: 250px;
										    width: 500px;">
				<span style="font-size: x-large">등록</span>
				<div id="root">
					<div class="contents">
						<div class="upload-box">
							<div id="drop-file" class="drag-file">
								<img src="https://img.icons8.com/pastel-glyph/2x/image-file.png"
									alt="파일 아이콘" class="image">
								<p class="message">파일 업로드 하기</p>
								<img src="" alt="미리보기 이미지" class="preview">
							</div>
							<div class="choose_upload">
								<label class="file-label" for="chooseFile">Choose File</label> <input
									class="file" id="chooseFile" type="file"
									onchange="dropFile.handleFiles(this.files)"
									accept="image/png, image/jpeg, image/gif">
							</div>
						</div>
					</div>
				</div>

			</div>
		</form>
	</div>
	</main>
</body>
<script src="${cpath}/resources/JS/upload.js"></script>
</html>