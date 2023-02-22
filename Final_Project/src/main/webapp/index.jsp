<!-- 톰캣이 실행되면 자동으로 인식하는 첫 웰컴페이지 index...
	톰캣 Servers - web.xml 제일 하단에 welcome-file
 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="cpath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<body>

<script type="text/javascript">
	function gologin() {
		location.href ="${cpath}/login.do";
	}

	function gosign() {
		location.href ="${cpath}/sign.do";
	}
	function gocloset(){
		location.href="${cpath}/MYCLOSET.do";
	}
	function gomain(){
		location.href="${cpath}/main.do";
	}
	function gofootlist(){
		location.href="${cpath}/footlist.do";
	}
	function goCLTHN_SLCTN(){
		location.href="${cpath}/CLTHN_SLCTN.do";
	}
	function goServiceinfo(){
		location.href="${cpath}/Serviceinfo.do";
	}
	function goPOST(){
		location.href="${cpath}/POST.do";
	}
	function goStyleCommunity(){
		location.href="${cpath}/StyleCommunity.do";
	}
	function goRecominfo(){
		location.href="${cpath}/Recominfo.do";
	}
	function goWRITE(){
		location.href="${cpath}/WRITE.do";
	}
	</script>
<%
	// response.sendRedirect("boardList.do");
	// jstl 몰랐을때 사용했던 방법

%>
<a  href="#" onclick="gomain()">메인화면</a>
<a  href="#" onclick="gologin()">로그인</a>
<a  href="#" onclick="gosign()">회원가입</a>
<a  href="#" onclick="goServiceinfo()">서비스 설명페이지</a>
<a  href="#" onclick="gocloset()">내옷장</a>
<a  href="#" onclick="goRecominfo()">신발상품 상세페이지</a>


<a  href="#" onclick="goCLTHN_SLCTN()">코디페이지</a>
<a  href="#" onclick="goWRITE()">코디 업로드</a>
<a  href="#" onclick="goPOST()">신발 코디 커뮤니티 상세</a>

<a  href="#" onclick="gofootlist()">신발리스트</a>
<a  href="#" onclick="goStyleCommunity()">신발 코디기준 커뮤니티</a>

<c:redirect url="main.do" />



</body>
</html>