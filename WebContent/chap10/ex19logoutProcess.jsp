<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />

<title>Insert title here</title>
</head>
<body>
	<%
	// 1.세션에 담아둔 특정 Attribute만 삭제하는 방법
	// session.removeAttribute("id");
	
	// 2. session invalidate 삭제
	// Attribute에 담아놨던 모든 것들이 삭제되며 초기화됨
	session.invalidate();
	%>

<h1>로그아웃 되었습니다.</h1>

<h2><a href="ex17loginFrom.jsp">로그인 하러 가기</a></h2>

</body>
</html>