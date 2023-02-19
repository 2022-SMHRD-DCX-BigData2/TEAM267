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
    <title>내 옷장</title>
    <link rel="stylesheet" href="/src/main/webapp/resources/css/style.css">
    <link rel="stylesheet" href="${cpath}/resources/css/style.css">
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
    <script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>

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
    <div>
        <main style="display: flex;
                flex-direction: row;
                align-items: stretch;">

            <div class="tab_wrap tab_area" style="width: 17%;">
                <div class="btn_area clearfix">
                    <button class="btn btn_tab act" data-depth="0" data-idx="0" style="width: 100%;">내옷장</button>
                </div>

                <!-- 내 옷장 TAB-->
                <div class="content_area act" data-depth="0" data-idx="0">
                    <button type="button" class="collapsible" onclick="collapse(this);">상의 TOP</button>
                    <div class="content">
                        <div class="sublist">
                            <a onclick="sublist_top()" style="cursor: pointer; align-items: center;">전체</a>
                            <a onclick="sublist_top()" style="cursor: pointer;">니트/스웨터</a>
                            <a onclick="sublist_top()" style="cursor: pointer;">후드티셔츠</a>
                            <a onclick="sublist_top()" style="cursor: pointer;">피케/카라 티셔츠</a>
                        </div>
                    </div>
                    <button type="button" class="collapsible" onclick="collapse(this);">하의 BOTTOM</button>
                    <div class="content">

                        <div class="sublist">
                            <a onclick="sublist_bottom()" style="cursor: pointer;">전체</a>
                            <a onclick="sublist_bottom()">청바지</a>
                            <a onclick="sublist_bottom()">반바지</a>
                            <a onclick="sublist_bottom()">슬렉스</a>
                        </div>

                    </div>
                    <button type="button" class="collapsible" onclick="collapse(this);">아우터 OUTER</button>
                    <div class="content">
                        <div class="sublist">
                            <a onclick="sublist_outer()" style="cursor: pointer;">전체</a>
                            <a onclick="sublist_outer()">패딩</a>
                            <a onclick="sublist_outer()">자켓</a>
                            <a onclick="sublist_outer()">가디건</a>
                        </div>
                    </div>
                </div>

            </div>
            <!-- 옷 선택 하는곳 -->
            <div class="viewCLOSET_area">
                <div class="viewCLOSET" id="viewCLOSET">
                    <h3>전체</h3>
                    <a onclick="select_TOP()" style="cursor: pointer;"><img
                            src="${cpath}/resources/img/img1.jpg" width="150px" height="150px"></a>
                    <a onclick="select_TOP()" style="cursor: pointer;"><img
                            src="${cpath}/resources/img/img2.jpg" width="150px" height="150px"></a>
                    <a onclick="select_TOP()" style="cursor: pointer;"><img
                            src="${cpath}/resources/img/img3.jpg" width="150px" height="150px"></a>
                </div>
            </div>

            <div class="fitting_area">
                <span style="cursor: hand;">
                    <img class="fitting" id="fitting_top" src="/src/main/webapp/resources/img/img1.jpg" width="100px" height="100px"
                        onmousedown="startDrag(event, this)">
                </span>
                <input type="submit" class="myCLOST-btn" value="삭제">
                <input type="submit" class="myCLOST-btn" value="추가하기">
            </div>

        </main>
    </div>
</body>
<footer>
    <!-- 푸터 들어갈 자리 -->
</footer>
<script src="${cpath}/resources/JS/tabmenu.js"></script>
<script type="text/javascript">
    // function sublist_top() {
    //     if ($("#viewCLOSET").css("display") == "none") {
    //         $("#viewCLOSET").css("display", "flex")
    //     } else {
    //         $("#viewCLOSET").css("display", "none")
    //     }
    // }

    // function select_TOP() {
    //     if ($("#choose_TOP").css("display") == "flex") {
    //         $("#choose_TOP").css("display", "grid")
    //     } else {
    //         $("#choose_TOP").css("display", "grid")
    //     }
    // }

    // if ($("#choose_TOP").css("display") == "flex") {
    //     $("#id_img").attr("src", " /src/main/webapp/resources/img/img1.jpg");
    // }
    // // https://solbel.tistory.com/1070 참고해보기

    //   if ($("#choose_TOP_IMG").css("display") == "none") {
    // 		$("#choose_TOP_IMG").css("display", "flex")
    // 	} else {
    // 		$("#choose_TOP_IMG").css("display", "none")
    // 	}
    // }

    // function fit_top() {
    // 	if ($("#fitting_top").css("display") == "none") {
    // 		$("#fitting_top").css("display", "flex")
    // 	} else {
    // 		$("#fitting_top").css("display", "none")
    // 	}
    // }

    // 처음 이미지가 만들어지는 곳 지정
    // var img_L = 50;
    // var img_T = 50;
    // var targetObj;

    // function getLeft(o) {
    //     return parseInt(o.style.left.replace('px', ''));
    // }
    // function getTop(o) {
    //     return parseInt(o.style.top.replace('px', ''));
    // }

    // // 이미지를 움직이는 함수를 만들어 보겠습니다.
    // // 처음있던 위치애서, 움직인값의 좌표만큼을 더해줍니다.
    // function moveDrag(e) {
    //     var e_obj = window.event ? window.event : e;
    //     var dmvx = parseInt(e_obj.clientX + img_L);
    //     var dmvy = parseInt(e_obj.clientY + img_T);
    //     targetObj.style.left = dmvx + "px";
    //     targetObj.style.top = dmvy + "px";
    //     return false;
    // }

    // // 드래그를 시작하는 함수 입니다.
    // // 마지막으로 움직인 좌표값에서, 이전움직였던 좌표값을 빼줍니다. == 움직인 좌표를 나타냅니다.
    // // 움직였던 좌표에서 처음 드래그를 시작했던 좌표를 빼줍니다. 움직인 좌표를 나타내줍니다
    // function startDrag(e, obj) {
    //     targetObj = obj;
    //     var e_obj = window.event ? window.event : e;
    //     img_L = getLeft(obj) - e_obj.clientX;
    //     img_T = getTop(obj) - e_obj.clientY;

    //     document.onmousemove = moveDrag;
    //     document.onmouseup = stopDrag;
    //     if (e_obj.preventDefault) e_obj.preventDefault();
    // }

    // // 드래그를 정지하는 함수 입니다.
    // function stopDrag() {
    //     document.onmousemove = null;
    //     document.onmouseup = null;
    // }
</script>



</html>