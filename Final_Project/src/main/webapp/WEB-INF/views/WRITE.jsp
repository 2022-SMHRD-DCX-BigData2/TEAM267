<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
        <c:set var="cpath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>옷 코디 업로드</title>
    <link rel="stylesheet" href="${cpath}/resources/css/style.css">
    <script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script src="https://kit.fontawesome.com/7208daee16.js" crossorigin="anonymous"></script>

</head>

<body>
    <header>
        <div id="TOP" class="flex">
            <div><a href=""><img src="${cpath}/resources/img/MainLogo.png" alt="" class="main_Logo"></a></div>
            <div class="flex header_main">
                <div><a href="">
                        <h1 id="header_font">COORDI FOR SHOES</h1>
                    </a></div>
                <div><a href="">서비스소개</a><a href="">공지사항</a></div>
            </div>
            <div class="flex header_left">
                <div><a href="">로그인</a><a href="">회원가입</a></div>
            </div>
        </div>
    </header>
    <!-- 헤더 끝 -->

    <!-- 글 내용 -->
    <form class="WRITE_form_all"action="">
        <div class="WRITE_form">
            <div class="WRITE_img">
                <input type="hidden" value="${cpath}/resources/img/POST_file.png">
                <img id="captured-img">
            </div>

            <div class="WRITE_content">
                <div>
                    <input type="text" maxlength="15" placeholder="글 제목과 태그를 입력해 주세요.">
                    <select>
                        <option value="casual">캐주얼</option>
                        <option value="dandy">댄디</option>
                        <option value="chic">시크</option>
                        <option value="sports">스포츠</option>
                    </select>
                </div>
                <textarea maxlength="450" placeholder="글 내용을 입력해 주세요."></textarea>
                
            </div>

        </div>

        <!-- 제품 목록 -->
        <div class="WRITE_product">
            <div style="display: flex; justify-content: space-between;">
                <h1>제품 목록</h1>
                <div>
                    <input class="WRITE_submit" type="submit" value="등 록">
                    <input class="WRITE_submit" type="reset" value="취 소">
                </div>
            </div>

            
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
                    <img src="${cpath}/resources/img/home03.jpg" width="100px" height="100px">
                    <p>102,000원</p>
                    <p>워커</p>
                </div>

                <div>
                    <img src="${cpath}/resources/img/home03.jpg" width="100px" height="100px">
                    <p>102,000원</p>
                    <p>워커</p>
                </div>
            </div>
        </div>
    </form>

</body>
	
    <script>
    const capturedImg = localStorage.getItem("capturedImg");
    if (capturedImg) {
      const imgElement = document.querySelector("#captured-img");
      imgElement.src = capturedImg;
      localStorage.removeItem("capturedImg");
      

    }
	</script>
</html>