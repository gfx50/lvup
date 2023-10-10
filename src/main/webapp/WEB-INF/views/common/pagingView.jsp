<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- 
<%@ page import="common.Paging" %> 
<%
	Paging paging = (Paging)request.getAttribute("paging");
	
	int startPage = paging.getStartPage();
	int endPage = paging.getEndPage();
	int maxPage = paging.getMaxPage();
	int currentPage = paging.getCurrentPage();
	int limit = paging.getLimit();
	
	String urlMapping = paging.getUrlMapping();
	
	String action = (String)request.getAttribute("action");
	String keyword = null, begin = null, end = null;

	if(action != null){
		if(action.equals("date")) {
			begin = (String)request.getAttribute("begin");
			end = (String)request.getAttribute("end");
		}else {
			keyword = (String)request.getAttribute("keyword");
		}
	}
%>  
 --%>  

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%-- 페이지 표시에 사용될 값들을 변수 선언 --%>
<c:set var="currentPage" value="${ requestScope.paging.currentPage }"/>
<c:set var="urlMapping" value="${ requestScope.paging.urlMapping }"/>
<c:set var="startPage" value="${ requestScope.paging.startPage }"/>
<c:set var="endPage" value="${ requestScope.paging.endPage }"/>
<c:set var="maxPage" value="${ requestScope.paging.maxPage }"/>
<c:set var="limit" value="${ requestScope.paging.limit }"/>

<c:set var="action" value="${ requestScope.action }"/>
<%-- 값이 없으면 자동 null 이 될 것이기 때문에 action 에 대한 if 처리 없이 값 추출 --%>
<c:set var="keyword" value="${ requestScope.keyword }"/>
<c:set var="begin" value="${ requestScope.begin }"/>
<c:set var="end" value="${ requestScope.end }"/>

<%-- 목록 페이징 처리 --%>
<%-- <% if(action == null){ %> --%>
<c:if test="${ action eq null }">
<div style="text-align:center;">
<%-- 	<% if(currentPage == 1){ %> --%>
		<c:if test="${ currentPage eq 1 }">
		[맨처음] &nbsp;
		</c:if>
<%-- 	<% }else{ //currentPage > 1 %> --%>
		<c:if test="${ currentPage gt 1 }">
		<a href="/first/${ urlMapping }?page=1">[맨처음]</a> &nbsp;
		</c:if>
<%-- 	<% } %> --%>
	<%-- 이전 페이지 그룹으로 이동 --%>
<%-- 	<% if((currentPage - 10) < startPage && (currentPage - 10) > 1){  //이전그룹이 있다면 %> --%>
		<c:if test="${ (currentPage - 10) < startPage && (currentPage - 10) > 1 }">
			
		
		
		<a href="/first/${ urlMapping }?page=${ startPage - 10 }">[이전그룹]</a> &nbsp;
		</c:if>
<%-- 	<% }else{ //이전그룹이 없다면 %> --%>
		<c:if test="${ !((currentPage - 10) < startPage && (currentPage - 10) > 1) }">
		[이전그룹] &nbsp;
		</c:if>
<%-- 	<% } %> --%>

	<%-- 현재 페이지가 속한 페이지그룹 숫자 출력 --%>
<%-- 	<% for(int p = startPage; p <= endPage; p++){ 
			if(p == currentPage){
	%> --%>
	<c:forEach var="p" begin="${ startPage }" end="${ endPage }">
		<c:if test="${ p eq currentPage }">
			<font color="blue" size="4"><b>${ p }</b></font>
		</c:if>
		
<%-- 	<%     }else{ %> --%>
		<c:if test="${ p ne currentPage }">
			<a href="/first/${ urlMapping }?page=${ p }">${ p }</a>
		</c:if>
<%-- 	<% }} %> --%>
	</c:forEach>
	<%-- 다음 페이지 그룹으로 이동 --%>
<%-- 	<% if((currentPage + 10) > endPage && (currentPage + 10) < maxPage){  //다음그룹이 있다면 %> --%>
	<c:if test="${ (currentPage + 10) > endPage && (currentPage + 10) < maxPage }">
		<a href="/first/${ urlMapping }?page=${ startPage + 10 }">[다음그룹]</a> &nbsp;
	</c:if>
<%-- 	<% }else{ //다음그룹이 없다면 %> --%>
	<c:if test="${!((currentPage + 10) > endPage && (currentPage + 10) < maxPage) }">
		[다음그룹] &nbsp;
	</c:if>
<%-- 	<% } %> --%>
	
<%-- 	<% if(currentPage >= maxPage){ %> --%>
	<c:if test="${ currentPage >= maxPage }">
		[맨끝] &nbsp;
	</c:if>
<%-- 	<% }else{ //currentPage < maxPage  %> --%>
	<c:if test="${ !(currentPage >= maxPage) }">
		<a href="/first/${ urlMapping }?page=${ maxPage }">[맨끝]</a> &nbsp;
	</c:if>
<%-- 	<% } %> --%>
</div>
<%-- <% } %> --%>
</c:if>	 <!-- action eq null -->

<%-- 검색(제목, 작성자, 내용) 페이징 처리 --%>
<%-- <% if(action != null && keyword != null){ %> --%>
<c:if test="${ action != null && keyword != null }">
<div style="text-align:center;">
<%-- 	<% if(currentPage <= 1){ %> --%>
		<c:if test="${ currentPage eq 1 }">
		[맨처음] &nbsp;
		</c:if>
<%-- 	<% }else{ //currentPage > 1 %> --%>
		<c:if test="${ currentPage ne 1 }">
		<a href="/first/${ urlMapping }?page=1&action=${ action }&keyword=${ keyword }">[맨처음]</a> &nbsp;
		</c:if>
<%-- 	<% } %> --%>
	<%-- 이전 페이지 그룹으로 이동 --%>
<%-- 	<% if((currentPage - 10) < startPage && (currentPage - 10) > 1){  //이전그룹이 있다면 %> --%>
		<c:if test="${ (currentPage - 10) < startPage && (currentPage - 10) > 1 }">
			<c:url var="um1" value="${ urlMapping }">
				<c:param name="page" value="${ startPage - 10 }"/>
				<c:param name="action" value="${ action }"/>
				<c:param name="keyword" value="${ keyword }"/>
			</c:url>
		<a href="${ um1 }">[이전그룹]</a> &nbsp;
		</c:if>
<%-- 	<% }else{ //이전그룹이 없다면 %> --%>
		<c:if test="${ !((currentPage - 10) < startPage && (currentPage - 10) > 1) }">
		[이전그룹] &nbsp;
		</c:if>
<%-- 	<% } %> --%>
	
	<%-- 현재 페이지가 속한 페이지그룹 숫자 출력 --%>
<%-- 	<% for(int p = startPage; p <= endPage; p++){  
			if(p == currentPage){
	%> --%>
	<c:forEach var="p" begin="${ startPage }" end="${ endPage }">
		<c:if test="${ p eq currentPage }">
			<font color="blue" size="4"><b>${ p }</b></font>
		</c:if>
<%-- 	<%     }else{ %> --%>
		<c:if test="${ !(p eq currentPage) }">
			<a href="/first/${ urlMapping }?page=${ p }&action=${ action }&keyword=${ keyword }">${ p }</a>
		</c:if>
<%-- 	<% }} %> --%>
	</c:forEach>

	<%-- 다음 페이지 그룹으로 이동 --%>
<%-- 	<% if((currentPage + 10) > endPage && (currentPage + 10) < maxPage){  //다음그룹이 있다면 %> --%>
	<c:if test="${ (currentPage + 10) > endPage && (currentPage + 10) < maxPage }">
		<a href="/first/${ urlMapping }?page=${ startPage + 10 }&action=${ action }&keyword=${ keyword }">[다음그룹]</a> &nbsp;
	</c:if>
<%-- 	<% }else{ //다음그룹이 없다면 %> --%>
	<c:if test="${ !((currentPage + 10) > endPage && (currentPage + 10) < maxPage) }">
		[다음그룹] &nbsp;
	</c:if>
<%-- 	<% } %> --%>
	
<%-- 	<% if(currentPage >= maxPage){ %> --%>
	<c:if test="${ currentPage >= maxPage }">
		[맨끝] &nbsp;
	</c:if>
<%-- 	<% }else{ //currentPage < maxPage  %> --%>
	<c:if test="${ !(currentPage >= maxPage) }">
		<a href="/first/${ urlMapping }?page=${ maxPage }&action=${ action }&keyword=${ keyword }">[맨끝]</a> &nbsp;
	</c:if>
<%-- 	<% } %> --%>
</div>
<%-- <% } %> --%>
</c:if>


<%-- 검색(등록날짜) 페이징 처리 --%>
<%-- <% if(action != null && action.equals("date")){ %> --%>
<c:if test="${ !empty action and action eq 'date' }">

<div style="text-align:center;">
<%-- 	<% if(currentPage <= 1){ %> --%>
		<c:if test="${ currentPage <= 1 }">
		[맨처음] &nbsp;
		</c:if>
<%-- 	<% }else{ //currentPage > 1 %> --%>
		<c:if test="${ !(currentPage <= 1) }">
		<a href="/first/${ urlMapping }?page=1&action=${ action }&begin=${ begin }&end=${ end }">[맨처음]</a> &nbsp;
		</c:if>
<%-- 	<% } %> --%>
	<%-- 이전 페이지 그룹으로 이동 --%>
<%-- 	<% if((currentPage - 10) < startPage && (currentPage - 10) > 1){  //이전그룹이 있다면 %> --%>
		<c:if test="${ (currentPage - 10) < startPage && (currentPage - 10) > 1 }">
		<a href="/first/${ urlMapping }?page=${ startPage - 10 }&action=${ action }&begin=${ begin }&end=${ end }">[이전그룹]</a> &nbsp;
		</c:if>
<%-- 	<% }else{ //이전그룹이 없다면 %> --%>
		<c:if test="${ !((currentPage - 10) < startPage && (currentPage - 10) > 1) }">
		[이전그룹] &nbsp;
		</c:if>
<%-- 	<% } %> --%>
	
	<%-- 현재 페이지가 속한 페이지그룹 숫자 출력 --%>
<%--	<% for(int p = startPage; p <= endPage; p++){ 
			if(p == currentPage){
	%> --%>
	<c:forEach var="p" begin="${ startPage }" end="${ endPage }">
		<c:if test="${ p eq currentPage }">
	
			<font color="blue" size="4"><b>${ p }</b></font>
		</c:if>
<%-- 	<%     }else{ %> --%>
		<c:if test="${ p eq currentPage }">
			<a href="/first/${ urlMapping }?page=${ p }&action=${ action }&begin=${ begin }&end=${ end }">${ p }</a>
		</c:if>
<%-- 	<% }} %> --%>
	</c:forEach>
		
	<%-- 다음 페이지 그룹으로 이동 --%>
<%-- 	<% if((currentPage + 10) > endPage && (currentPage + 10) < maxPage){  //다음그룹이 있다면 %> --%>
	<c:if test="${ (currentPage + 10) > endPage && (currentPage + 10) < maxPage }">

		<a href="/first/${ urlMapping }?page=${ startPage + 10 }">[다음그룹]</a> &nbsp;
	</c:if>
<%-- 	<% }else{ //다음그룹이 없다면 %> --%>
	<c:if test="${ !((currentPage + 10) > endPage && (currentPage + 10) < maxPage) }">
		[다음그룹] &nbsp;
	</c:if>
<%-- 	<% } %> --%>
	
<%-- 	<% if(currentPage >= maxPage){ %> --%>
		<c:if test="${ currentPage >= maxPage }">
		[맨끝] &nbsp;
		</c:if>
<%-- 	<% }else{ //currentPage < maxPage  %> --%>
		<c:if test="${ !(currentPage >= maxPage) }">
		<a href="/first/${ urlMapping }?page=${ maxPage }&action=${ action }&begin=${ begin }&end=${ end }">[맨끝]</a> &nbsp;
		</c:if>
<%-- 	<% } %> --%>
</div>
<%-- <% } %> --%>
</c:if>