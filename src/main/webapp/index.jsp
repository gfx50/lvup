<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
<!-- 웰컴 요청(첫페이지 접속)이 오면, main 페이지가 나가도록 요청을 전달함 
	첫페이지 요청 url: http://domain:port/context-root/
	예: http://localhost
-->
<%-- 
<% RequestDispatcher view = request.getRequestDispatcher("main.do");
	view.forward(request, response);
%>
--%>
<jsp:forward page="main.do"/>
</body>
</html>
