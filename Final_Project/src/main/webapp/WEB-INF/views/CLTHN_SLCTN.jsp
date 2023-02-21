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
            $(document).ready(function(){
                
            	c_cate();
            })
            
            /* 옷 카테고리 */
            var c_cate_list = ["0","겨울더블코트","겨울싱글코트","긴소매 티셔츠","나일론코치재킷","니트스웨터","데님팬츠","레깅스","레더 라이더스재킷",
            	"롱스커트","롱패딩롱해비아우터","맥시원피스","맨투맨스웨트셔츠","무스탕퍼","미니원피스","미니스커트","미디원피스","미디스커트","민소매티셔츠","반소매티셔츠"
            	,"베스트","블루종","사파리헌팅재킷","셔츠블라우스","숏패딩숏해비아우터","숏팬츠","슈트블레이저재킷","슈트팬츠슬랙스","스타디움재킷","아노락재킷",
            	"점프슈트오버올","카디건","코튼팬츠","트러거재킷","트레이닝재킷","트레이닝조거팬츠","패딩베스트","플리스뽀글이","피케카라티셔츠",
            	"환절기코트","후드 티셔츠","후드집업"];
            
            /* 내옷장 데이터 가져오기 */
            function rcmndClst() {
            	  var memId = "${loginMember.memId}";
            	  $.ajax({
            	    url: "${cpath}/rcmndClst_1",
            	    type: "get",
            	    dataType: "json",
            	/*     data: {"memId": memId}, */
            	    success: rcmndClstlist,
            	    error: function() {
            	      alert("의류 카테고리 불러오기 실패");
            	    }
            	  })
            	}
			/* 내옷장 데이터 이미지 리스트 출력 */
            	function rcmndClstlist(data) {
            	  console.log(data);
            	  var rcmndClst_1_1 = "";

            	  rcmndClst_1_1 += '<div class="" id="viewCLOSET">';
            	  rcmndClst_1_1 += '<h3>전체</h3>';
            	  $.each(data,(indxe,item)=>{
            	  rcmndClst_1_1 += '<a onclick="select_TOP()"><img src="' + item.closet_img + '" width="150px" height="150px"></a>';
            	  });
            	  rcmndClst_1_1 += '</div>';

            	  $(".viewCLOSET_area").html(rcmndClst_1_1);
            	}
            	
            	
            	
        		// 추천옷장 대카테고리 데이터
                function c_cate() {
                    $.ajax({
                        url : "${cpath}/c_cate",
                        type : "get",
                        dataType : "json",
                        success : c_data_cate,
                        error : function(){
                            alert("카테고리불러오기 실패");
                        }
                    })
                }
            	
            	// 추천옷장 대카테고리 불러오기
                function c_data_cate(data) {
                	console.log(data);
                    var c_data_TOP = "";
                    $.each(data,(indxe,obj)=>{
                    		
                    		c_data_TOP += '<button type="button" class="collapsible" onclick="collapse(this); c_cate_conliset('+obj.c_cate+') ">'+c_cate_list[obj.c_cate]+'</button>';
                    		c_data_TOP += '<div class="content">';
                    		c_data_TOP += '</div>'
                    	})
                    $("#c_data_category").html(c_data_TOP);
                }
            	
            	function c_cate_conliset(c_cate) {
            		 $.ajax({
                         url : "${cpath}/c_cate_conliset/"+c_cate,
                         type : "get",
                         data : {"c_cate" : c_cate},
                         dataType : "json",
                         success : c_cate_clothing,
                         error : function(){
                             alert("카테고리 기준 옷리스트 불러오기 실패"+c_cate);
                             
                         }
                     })
				}
            	
            	function c_cate_clothing(data) {
            		 console.log(data);
            		 var c_cate_con = "";	
            		 		c_cate_con += '<div class="" id="viewCLOSET">';
            		 		c_cate_con += '<h3>전체</h3>';
                   	  		$.each(data,(indxe,item)=>{
                   	  		c_cate_con += '<a onclick="select_clt('+item.c_cate+', \''+item.c_img+'\');clt_move()"><img src="' + item.c_img + '" width="150px" height="150px"></a>';

                   	  		});
                   	  		c_cate_con += '</div>';
                     $(".viewCLOSET_area").html(c_cate_con);
				}
            	
            	function select_clt(c_cate, c_img) {
            	    console.log(c_img);
            	    var TOP = [1,2,3,4,5,8,10,11,12,13,14,16,18,19,20,21,22,23,24,26,28,29,31,33,34,36,37,38,39,40,41];
            	    var BOTTOM = [6,7,9,15,17,25,27,30,32,35];
            	    if (TOP.indexOf(c_cate) !== -1) {
            	        // c_cate가 TOP에 속하는 경우
            	        // 처리할 코드를 작성하세요.
            	        var top = "";
            	        top += '<h3 style="text-align: center;">상의</h3>';
            	        top += '<img id="choose_img" src="'+c_img+'" width="100px" height="100px">'; 
            	        $("#TOP_img").html(top);
                      var container = ""
                      container += '<div id="item"><img id="choose_img" src="'+c_img+'" width="100px" height="100px"></div>'
                      $("#container").html(container);
            	    } else if (BOTTOM.indexOf(c_cate) !== -1) {
            	        // c_cate가 BOTTOM에 속하는 경우
            	        // 처리할 코드를 작성하세요.
            	    	var BOTTOM = ""
            	    		BOTTOM += '<h3 style="text-align: center;">하의</h3>';
            	    		BOTTOM += '<img id="choose_img" src="'+c_img+'" width="100px" height="100px">';
            	    		$("#BOTTOM_img").html(BOTTOM);
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
  <div class="CLTHN">
      <div class="tab_wrap tab_area" style="width: 17%;">
        <div class="btn_area clearfix">
          <button class="btn btn_tab act" data-depth="0" data-idx="0">내옷장</button>
          <button class="btn btn_tab" data-depth="0" data-idx="1">추천옷장</button>
        </div>

        <!-- 내 옷장 TAB-->
        <div class="content_area act" data-depth="0" data-idx="0">
          <button type="button" class="collapsible" onclick="collapse(this);">상의 TOP</button>
          <div class="content">
            <div class="sublist">
              <a onclick="sublist_top()" align-items: center;">전체</a>

            </div>
          </div>
          <button type="button" class="collapsible" onclick="collapse(this);">하의 BOTTOM</button>
          <div class="content">

            <div class="sublist">
              <a onclick="sublist_bottom()">전체</a>
              <a onclick="sublist_bottom()">청바지</a>
              <a onclick="sublist_bottom()">반바지</a>
              <a onclick="sublist_bottom()">슬렉스</a>
            </div>

          </div>
          <button type="button" class="collapsible" onclick="collapse(this);">아우터 OUTER</button>
          <div class="content">
            <div class="sublist">
              <a onclick="sublist_outer()" >전체</a>
              <a onclick="sublist_outer()">패딩</a>
              <a onclick="sublist_outer()">자켓</a>
              <a onclick="sublist_outer()">가디건</a>
            </div>
          </div>
        </div>
		
		
		
        <!-- 추천 옷장 -->
        <div class="content_area" data-depth="0" data-idx="1" id="c_data_category">
          <button type="button" class="collapsible" onclick="collapse();">상의 TOP</button>
          <div class="content">
            <div class="sublist">
              <a onclick="rcmndClst()">전체</a>

            </div>
          </div>
        </div>
      </div>

      <!-- 옷 선택 하는곳 -->
      <div class="viewCLOSET_area">
        <div class="viewCLOSET" id="viewCLOSET">
          
        </div>
      </div>
	  <!-- 선택된 의류 이미지 -->
      <div class="viewCLOSET_under">
        <div id="TOP_img">
          <h3 style="text-align: center;">상의</h3>
          
        </div>

        <div id="BOTTOM_img">
          <h3 style="text-align: center;">하의</h3>
          
        </div>

        <div id="SHOES_img">
          <h3 style="text-align: center;">신발</h3>
          
        </div>

      </div>

      <!-- 피팅 AREA -->
      <div class="fitting_area" id="outerContainer">
   		  <div id="container">
          	<div id="item"></div>
   		  </div>
        <div class="home-btn" style="width: 5em; justify-content: center;">코디 공유</div>
      </div>
  </div>
</body>
  <footer>
    <!-- 푸터 들어갈 자리 -->
  </footer>

<script src="${cpath}/resources/JS/tabmenu.js"></script>
<script>
  function clt_move() {
	  var dragItem = document.querySelector("#item");
	   var container = document.querySelector("#container");

	   var active = false;
	   var currentX;
	   var currentY;
	   var initialX;
	   var initialY;
	   var xOffset = 0;
	   var yOffset = 0;

	   container.addEventListener("touchstart", dragStart, false);
	   container.addEventListener("touchend", dragEnd, false);
	   container.addEventListener("touchmove", drag, false);

	   container.addEventListener("mousedown", dragStart, false);
	   container.addEventListener("mouseup", dragEnd, false);
	   container.addEventListener("mousemove", drag, false);

	   function dragStart(e) {
	      if (e.type === "touchstart") {
	         initialX = e.touches[0].clientX - xOffset;
	         initialY = e.touches[0].clientY - yOffset;
	      } else {
	         initialX = e.clientX - xOffset;
	         initialY = e.clientY - yOffset;
	      }

	      if (e.target === dragItem) {
	         active = true;
	      }
	   }

	   function dragEnd(e) {
	      initialX = currentX;
	      initialY = currentY;

	      active = false;
	   }

	   function drag(e) {
	      if (active) {

	         e.preventDefault();

	         if (e.type === "touchmove") {
	            currentX = e.touches[0].clientX - initialX;
	            currentY = e.touches[0].clientY - initialY;
	         } else {
	            currentX = e.clientX - initialX;
	            currentY = e.clientY - initialY;
	         }

	         xOffset = currentX;
	         yOffset = currentY;

	         setTranslate(currentX, currentY, dragItem);
	      }
	   }

	   function setTranslate(xPos, yPos, el) {
	      el.style.transform = "translate3d(" + xPos + "px, " + yPos + "px, 0)";
	   }
}
    
  
</script>


</html>