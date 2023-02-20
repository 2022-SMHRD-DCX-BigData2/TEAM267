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
    <title>신발리스트</title>
    <link rel="stylesheet" href="${cpath}/resources/css/style.css">
    <link rel="stylesheet" href="${cpath}/resources/css/foot_page.css">
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
    
    <script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script type="text/javascript">
        $(document).ready(function(){
            
        	footcategorylist();
        })
		// 신발 대카테고리 데이터
        function footcategorylist() {
            $.ajax({
                url : "${cpath}/TCategory",
                type : "get",
                dataType : "json",
                success : footcalist,
                error : function(){
                    alert("신발카테고리불러오기 실패");
                }
            })
        }
     
        // 신발 목록 불러오기 데이터
          function footcategory(f_cate) {
        	
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
        
     // 신발 브랜드에따른  불러오기 데이터
        /* function footcategory(f_cate) {
      	  	var newBrand = $("#footcategory"+f_cate).val();
        	console.log(newBrand);
      	  	
      	  	
            $.ajax({
                url : "${cpath}/TFdata/"+f_cate,
                type : "put",
                data : JSON.stringify({"f_cate" : f_cate, "f_brand" : newBrand}),	
                dataType : "json",
                success : footlist,
                error : function(){
                    alert("브랜드 기준 신발 불러오기 실패");
                }
            }) */
        
        // 신발 브랜드 불러오기 데이터
        function shoesbrand(f_cate){
        	$.ajax({
                url : "${cpath}/TBrand/"+f_cate,
                type : "get",
                data : {"f_cate" : f_cate},
                dataType : "json",
                success : function(shoesbrand){
                	var brand ="";
                	$.each(shoesbrand,(indxe,obj)=>{
                		brand += '<a style="cursor: pointer; align-items: center;" onclick="footcategory('+obj.f_cate+')" id="footcategory'+obj.f_cate+'">'+obj.f_brand+'</a>';
                		
                		if(indxe >= 4) return false;
            		}) 
            		$(".sublist").html(brand);
                },
                error : function(){
                    alert("신발브랜드불러오기 실패");
                }
            })
        }
        
        
        
        
        
     // 신발 대카테고리 불러오기
        function footcalist(data) {
            
            var fcategoryList = "";
            $.each(data,(indxe,obj)=>{
            		var cat = ["전체","구두","부츠","샌들","스포츠","운동화","캐주얼"]
            		fcategoryList += '<button type="button" class="collapsible" onclick="footcategory('+obj.f_cate+') ;collapse(this) ">'+cat[obj.f_cate]+'</button>';
            		fcategoryList += '<div class="content">';
            		fcategoryList += '<div class="sublist" >';
            		/* fcategoryList += '<a style="cursor: pointer; align-items: center;" onclick="footcategory('+obj.f_cate+')" id="footcategory'+obj.f_cate+'">전체</a>'; */
            		fcategoryList += '</div>'
            		fcategoryList += '</div>'
            	})
            $("#footcategory").html(fcategoryList);
            /* footcategory(); */
        }
        
       
          
         function footlist(data) {

           	var fList = "";
            	 $.each(data,(indxe,obj)=>{
            		fList +='<div class="pos_r">';
            		fList +='	<div class="shoes_box t_center pos_a">';
            		fList +='    <a href="">';
            		fList +='        <img src="'+obj.f_img+'" alt="" class="shoes_img">';
            		fList +='        <div class="margin_0">';
            		fList +='            <h4>'+obj.f_brand+'</h4>';
            		fList +='            <p>'+obj.f_name+'</p>';
            		fList +='            <P>'+obj.f_price+'</P>';
            		fList +='        </div>';
            		fList +='<div class="shoes_size_box">';
            		fList +='     <hr>';
            		fList +='   <div id="shoes_size" class="grid">';
                    f_sizelist=obj.f_size.split("\n")
            		$.each(f_sizelist,(indxe,oob)=>{
                        
            		fList += ' <div>'+oob+'</div>';
            				})
            		fList += '            </div>';
            		fList += '        </div>';
            		fList += '    </a>';
            		fList += '	</div>';
            		fList += '</div>';
            		
            		if(indxe > 100) return false;
            	})
            $("#footlist").html(fList);
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

    <!-- 신발 탭 -->

    <div style="display: flex;">
        <div class="tab_wrap tab_area">
            <div class="content_area act" data-depth="0" data-idx="0" style="margin-top: 1em;" id="footcategory">
                        
				<button type="button" class="collapsible" onclick="collapse(this);">111</button>
                <div class="content">
                    <div class="sublist">
                        <a style="cursor: pointer; align-items: center;">전체</a>
                    </div>
                </div>


            </div>
        </div>

        <div>
            <div class="shoes_top_box">
                <div class=" evenly grid" id="footlist">
                
                    

                </div>
            </div>
        </div>
        
    </div>

</body>

<script src="${cpath}/resources/JS/tabmenu.js"></script>
<script type="text/javascript">

</script>

</html>