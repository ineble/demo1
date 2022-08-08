<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false"
%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<% 
	request.setCharacterEncoding("utf-8");
%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	.cls1{
		text-decoration: none;
	}
	.cls2{
		text-align : center;
		font-size: 30px;
	}
</style>

</head>
<body>
	<table align="center" width="100%" border="1">
		<tr align="center" bgcolor="#99ccff">
			<td width="5%">글번호</td>
			<td width="10%">작성자</td>
			<td width="35%">제목</td>
			<td width="10%">작성일</td>
		</tr>
		<c:choose>
			<c:when test="${articlesList == null }">
			<tr height="10">
			<td colspan="4">
				<p align="center"><b>
				<span style="font_size:9pt">등록된 글이 없습니다.</span>
				</b></p>
			</td>
			</tr>
			</c:when>
			<c:when test="${articlesList != null }">
				<c:forEach var="article" items="${articlesList}" varStatus="articleNum">
					<tr align="center">
					<td width="5%">${articleNum.count}</td>
					<td width="10%">${article.id }</td>
					<td width="35%">${article.title }</td>
					<td width="10%"><fmt:formatDate value="${article.writeDate }" />
					</td>
					</tr>
				</c:forEach>
			</c:when>
		</c:choose>
	</table>
	<a href="${contextPath}/board/listArticles.do">
	<p><span>글 쓰기</span></span></p>
	</a>
</body>
</html>