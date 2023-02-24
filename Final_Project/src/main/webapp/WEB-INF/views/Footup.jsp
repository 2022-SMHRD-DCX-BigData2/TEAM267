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
  <link rel="stylesheet" href="${cpath}/resources/css/upload.css">
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
    <div class="grid Upload_name">
      <div class="flex  foot_box">
        <span class="sp_contents"><i class="fa-solid fa-image"></i></span>
        <p>왼발</p>
      </div>
      <div class="flex  foot_box">
        <span class="sp_contents"><i class="fa-solid fa-image"></i></span>
        <p>오른발</p>
      </div>
    </div>
    <div class="grid Upload">

      <div id="root">
        <div class="contents">
          <div class="upload-box">
            <div id="drop-file" class="drag-file">
              <img src="https://img.icons8.com/pastel-glyph/2x/image-file.png" alt="파일 아이콘" class="image">
              <p class="message">파일 업로드 하기</p>
              <img src="" alt="미리보기 이미지" class="preview">
            </div>
            <label class="file-label" for="chooseFile">Choose File</label>
            <form action="">
            	<input class="file" id="chooseFile" type="file" onchange="dropFile.handleFiles(this.files)"
              	accept="image/png, image/jpeg, image/gif">
            </form>
          </div>
        </div>
      </div>
      
      <div class="foot_size_img_h">
        <img src="/src/main/webapp/resources/img/foot_size_1.png" alt="" >
      </div>
      

      <div id="root">
        <div class="contents">
          <div class="upload-box">
            <div id="drop-file" class="drag-file">
              <img src="https://img.icons8.com/pastel-glyph/2x/image-file.png" alt="파일 아이콘" class="image">
              <p class="message">파일 업로드 하기</p>
              <img src="" alt="미리보기 이미지" class="preview">
            </div>
            <label class="file-label" for="chooseFile">Choose File</label>
            <input class="file" id="chooseFile" type="file" onchange="dropFile.handleFiles(this.files)"
              accept="image/png, image/jpeg, image/gif">
          </div>
        </div>
      </div>
    </div>

    
    <div class="grid Upload">
      <div id="root">
        <div class="contents">
          <div class="upload-box">
            <div id="drop-file" class="drag-file">
              <img src="https://img.icons8.com/pastel-glyph/2x/image-file.png" alt="파일 아이콘" class="image">
              <p class="message">파일 업로드 하기</p>
              <img src="" alt="미리보기 이미지" class="preview">
            </div>
            <label class="file-label" for="chooseFile">Choose File</label>
            <input class="file" id="chooseFile" type="file" onchange="dropFile.handleFiles(this.files)"
              accept="image/png, image/jpeg, image/gif">
          </div>
        </div>
      </div>
      <div class="foot_size_img_w"> 
        <img src="/src/main/webapp/resources/img/foot_size_2.png" alt="" >
      </div>
      <div id="root">
        <div class="contents">
          <div class="upload-box">
            <div id="drop-file" class="drag-file">
              <img src="https://img.icons8.com/pastel-glyph/2x/image-file.png" alt="파일 아이콘" class="image">
              <p class="message">파일 업로드 하기</p>
              <img src="" alt="미리보기 이미지" class="preview">
            </div>
            <label class="file-label" for="chooseFile">Choose File</label>
            <input class="file" id="chooseFile" type="file" onchange="dropFile.handleFiles(this.files)"
              accept="image/png, image/jpeg, image/gif">
          </div>
        </div>
      </div>
    </div>
  </main>
</body>
  <script src="${cpath}/resources/JS/upload.js"></script>

</html>