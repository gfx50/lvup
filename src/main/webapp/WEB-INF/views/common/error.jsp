<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isErrorPage="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>first : Error</title>
</head>
<body>
<h1>오류 발생 : </h1>
<%-- jsp 내장 객체 중 exception 객체를 사용:
	page 지시자 태그에 isErrorPage="true" 라고 지정했을 때만 
	exception 내장 객체를 사용할 수 있다 --%>
<%-- <%
	if(exception != null){ // jsp 페이지에서 발생한 에러이면
%> 
	<h3>jsp 페이지 오류 : <%= exception.getMessage() %></h3>
<%		
	}else{ // jsp 페이지 에러가 아니라면(servlet 에서 throws로 넘긴 예외라면)
		%>
	<h3>Servlet 오류 : <%= request.getAttribute("message") %></h3>		
<%
	}
%>
--%>

<c:set var="e" value="<%= exception %>"/>
<!-- jsp 에서 넘어온 에러일 경우 -->
<c:if test="${ !empty e }">
	<h3>jsp 페이지 오류 : ${ message }</h3>
	<h3>jsp 페이지 오류 : ${ e.message }</h3>
</c:if>
<!-- 서블릿에서 넘어온 에러일 경우 -->
<c:if test="${ empty e }"> 
	<h3>Servlet 페이지 오류 : ${ message }</h3>
	<h3>Servlet 페이지 오류 : ${ requestScope.message }</h3>
</c:if>
<c:url var="movemain" value="main.do"/>
<a href="${ movemain }">시작페이지로 이동</a>
</body>
</html>
