<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
        <c:set var="cpath" value="${pageContext.request.contextPath}" />
        <!DOCTYPE html>
        <html lang="en">

        <head>
            <meta charset="UTF-8">
            <meta http-equiv="X-UA-Compatible" content="IE=edge">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <title>내 옷장</title>
            <link rel="stylesheet" href="${cpath}/resources/css/style.css">
            <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
            <script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
			<script type="text/javascript">
	        function rcmndClst() {
	            var memId = "${loginMember.mem_id}";
	            $.ajax({
	              url: "${cpath}/rcmndClst_1",
	              type: "get",
	              dataType: "json",
	              /*     data: {"memId": memId}, */
	              success: rcmndClstlist,
	              error: function () {
	                alert("의류 카테고리 불러오기 실패");
	              }
	            })
	          }
	          /* 내옷장 데이터 이미지 리스트 출력 */
	          function rcmndClstlist(data) {
	           
	            var rcmndClst_1_1 = "";

	            rcmndClst_1_1 += '<div class="" id="viewCLOSET">';
	            rcmndClst_1_1 += '<h3>전체</h3>';
	            $.each(data, (indxe, item) => {
	              rcmndClst_1_1 += '<a onclick="select_clt(' + item.closet_seq + ', \'' + item.closet_img + '\');moveco()"><img src="' + item.closet_img + '" width="150px" height="150px"></a>';
	            });
	            rcmndClst_1_1 += '</div>';

	            $(".viewCLOSET_area").html(rcmndClst_1_1);
	          }
	          
	          
	          function select_clt(c_cate, c_img) {
	        	  var img_con = "";
	        	  img_con +='<img src="' + c_img + '" alt="'+c_cate+'">';
	        	  

	        	  $("#my_img_con").html(img_con);
	              if (TOP.indexOf(c_cate) !== -1) {
	                // c_cate가 TOP에 속하는 경우
	                // 처리할 코드를 작성하세요.
	                var top = "";
	                top += '<h3 style="text-align: center;">상의</h3>';
	                top += '<img id="choose_img" src="' + c_img + '" >';
	                
	                $("#TOP_img").html(top);

	                container += '<div class="myElement"><img src="' + c_img + '" alt="'+c_cate+'"></div>'
	                container += '<div style="width:100px; height:100px;" class="myElement"><img alt="" src="https://image.a-rt.com/art/product/2020/02/68184_1581657478562.jpg"></div>'

	                $("#container").html(container);
	              } else if (BOTTOM.indexOf(c_cate) !== -1) {
	                // c_cate가 BOTTOM에 속하는 경우
	                // 처리할 코드를 작성하세요.
	                var bottom = "";
	                bottom += '<h3 style="text-align: center;">하의</h3>';
	                bottom += '<img id="choose_img" src="' + c_img + '">';
	                $("#BOTTOM_img").html(bottom);

	                container += '<div class="myElement"><img src="' + c_img + '" alt="'+c_cate+'"></div>'
	                $("#container").html(container);
	              } else {
	                // c_cate가 TOP 또는 BOTTOM에 속하지 않는 경우
	                // 처리할 코드를 작성하세요.
	              }
	    		
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
            <main style="display: flex;
                flex-direction: row;
                align-items: stretch;">

                <div class="tab_wrap tab_area" style="width: 17%;">
                    <div class="btn_area clearfix">
                        <button class="btn btn_tab act" data-depth="0" data-idx="0">옷장</button>
                        <button class="btn btn_tab" data-depth="0" data-idx="1">신발장</button>
                    </div>

                    <!-- 내 옷장 TAB-->
                    <div class="content_area act" data-depth="0" data-idx="0">
                        <button type="button" class="collapsible" onclick="collapse(this);">상의 TOP</button>
                        <div class="content">
                            <div class="sublist">
                                <a onclick="rcmndClst()" style="cursor: pointer; align-items: center;">전체</a>
                                <a onclick="sublist_top()" style="cursor: pointer;">니트/스웨터</a>
                                <a onclick="sublist_top()" style="cursor: pointer;">후드티셔츠</a>
                                <a onclick="sublist_top()">피케/카라 티셔츠</a>
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
                    <!-- 구두,부츠,샌들,스포츠,운동화,캐주얼 -->
                    <!-- 신발장 -->
                    <div class="content_area" data-depth="0" data-idx="1">
                        <button type="button" class="collapsible" onclick="collapse(this);">구두</button>
                        <div class="content">
                            <div class="sublist">

                            </div>
                        </div>
                        <button type="button" class="collapsible" onclick="collapse(this);">부츠</button>
                        <div class="content">

                            <div class="sublist">
 
                            </div>

                        </div>

                        <button type="button" class="collapsible" onclick="collapse(this);">샌들</button>
                        <div class="content">
                            <div class="sublist">

                            </div>
                        </div>

                        <button type="button" class="collapsible" onclick="collapse(this);">구두</button>
                        <div class="content">
                            <div class="sublist">

                            </div>
                        </div>
                        <button type="button" class="collapsible" onclick="collapse(this);">스포츠</button>
                        <div class="content">
                            <div class="sublist">

                            </div>
                        </div>
                        <button type="button" class="collapsible" onclick="collapse(this);">운동화</button>
                        <div class="content">
                            <div class="sublist">

                            </div>
                        </div>
                    </div>  
                </div>
                <!-- 옷 선택 하는곳 -->
                <div class="viewCLOSET_area">
                    <div class="viewCLOSET" id="viewCLOSET">
                        <h3>전체</h3>
                        <a onclick="select_TOP()" style="cursor: pointer;"><img src="${cpath}/resources/img/img1.jpg"
                                width="150px" height="150px"></a>
                        <a onclick="select_TOP()" style="cursor: pointer;"><img src="${cpath}/resources/img/img2.jpg"
                                width="150px" height="150px"></a>
                        <a onclick="select_TOP()" style="cursor: pointer;"><img src="${cpath}/resources/img/img3.jpg"
                                width="150px" height="150px"></a>
                    </div>
                </div>

                <div class="fitting_area" id="my_fitting">
                    <span style="cursor: hand;" id="my_img_con">
                        <img class="fitting" id="fitting_top" src="${cpath}/resources/img/img1.jpg"
                            width="100px" height="100px" onmousedown="startDrag(event, this)">
                    </span>
                    <div class="flex flex_dir_col" >
                    	<input type="submit" class="myCLOST-btn" value="삭제 ">
                    <input type="button" class="myCLOST-btn" value="추가하기" style="cursor: pointer;" onclick="location.href='${cpath}/CLOSETUpload.do'">
                    <%-- <a href="${cpath}/CLOSETUpload.do" class="myCLOST-btn">추가하기</a> --%>
                    </div>
                    
                </div>
            </main>
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