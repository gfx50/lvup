<%-- <%@ page language="java" contentType="text/html; charset=UTF-8" --%>
<%--     pageEncoding="UTF-8" import="member.model.vo.Member"%> --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<style type="text/css">
nav > ul#menubar {
	list-style: none;
	position: relative;
	left: 150px;
}

nav > ul#menubar li {
	float: left;
	width: 120px;
	height: 30px;
	margin-right: 5px;
	padding: 0;
}

nav > ul#menubar li a {
	text-decoration: none;
	width: 120px;
	height: 30px;
	display: block;
	background: orange;
	color: navy;
	text-align: center;
	font-weight: bold;
	margin: 0;
	text-shadow: 1px 1px 2px white;
	padding-top: 5px;
}

nav > ul#menubar li a:hover {
	text-decoration: none;
	width: 120px;
	height: 30px;
	display: block;
	background: navy;
	color: white;
	text-align: center;
	font-weight: bold;
	margin: 0;
	text-shadow: 1px 1px 2px white;
	padding-top: 5px;
}

hr { clear : both;}
</style>
<body>
<%-- <% if(loginMember == null) { // login 하지 않았을 때 %> --%>
<c:if test="${ empty sessionScope.loginMember }">
<nav>
	<ul id="menubar">
		<li><a href="/first/index.jsp">Home</a></li>
		<li><a href="/first/nlist">공지사항</a></li>
		<li><a href="/first/blist?page=1">게시글</a></li>
		<li><a href="#">QnA</a></li>
		<li><a href="/first/views/testapi/testList.html">테스트API</a></li>
	</ul>
</nav>

</c:if>	
<%-- <% } else if(loginMember.getAdmin().equals("Y")) { // 관리자로그인%> --%>
<c:if test="${ !empty sessionScope.loginMember and loginMember.admin eq 'Y' }">
<nav>
	<ul id="menubar">
		<li><a href="/first/index.jsp">Home</a></li>
		<li><a href="/first/nlist.admin">공지사항관리</a></li>
		<li><a href="/first/blist?page=1">게시글관리</a></li>
		<li><a href="/first/mlist">회원관리</a></li>
		<li><a href="/first/views/testapi/testList.html">테스트</a></li>
	</ul>
</nav>
</c:if>
<%-- <% } else { // 일반회원 로그인%> --%>
<c:if test="${ !empty sessionScope.loginMember and loginMember.admin ne 'Y' }">
<nav>
	<ul id="menubar">
		<li><a href="/first/index.jsp">Home</a></li>
		<li><a href="/first/nlist">공지사항</a></li>
		<li><a href="/first/blist">게시글</a></li>
		<li><a href="#">QnA</a></li>
		<li><a href="/first/views/testapi/testList.html">테스트</a></li>
	</ul>
</nav>
</c:if>
<%-- <% } %> --%>

<br><br><hr>
</body>
</html>