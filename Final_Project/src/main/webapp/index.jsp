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
<%
	// response.sendRedirect("boardList.do");
	// jstl 몰랐을때 사용했던 방법

%>
<a href="${cpath}/Login.do">메인화면</a>
<a href="${cpath}/LoginForm.do">로그인</a>

<a  href="${cpath}/signup.do">회원가입</a>
<a  href="${cpath}/Serviceinfo.do">서비스 설명페이지</a>
<a  href="${cpath}/MYCLOSET.do">내옷장</a>
<a  href="${cpath}/Recominfo.do">신발상품 상세페이지</a>


<a  href="${cpath}/CLTHN_SLCTN.do">코디페이지</a>
<a  href="${cpath}/WRITE.do">코디 업로드</a>
<a  href="${cpath}/POST.do">신발 코디 커뮤니티 상세</a>

<a  href="${cpath}/footlist.do">신발리스트</a>
<a  href="${cpath}/StyleCommunity.do">신발 코디기준 커뮤니티</a>

<c:redirect url="Main.do" />



</body>
</html>