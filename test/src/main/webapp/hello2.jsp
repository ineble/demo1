<%@page import="java.time.LocalDateTime"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%! String name = "이순신"; 
	public String getName() {return name;}
%>
<% String age = request.getParameter("age"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<style type="text/css">
	#loginForm{
		width : 50%;
		text-align : center;
		background-color: wheat;
		margin : auto;
		border-radius : 10px;
	}

</style>
</head>
<body>
	<div id="loginForm">
	<h2>회원가입창</h2>
	<form action="result.jsp" method="post" name="frmLogin" enctype="utf-8">
	아이디 : <input type="text" name="user_id" size="22"> <br>
	비밀번호 : <input type="password" name="user_pw" size="20"> <br>
	<input type="submit" value="로그인">
	<input type="reset" value="취소하기">
	</form>
	</div>
</body>
</html>