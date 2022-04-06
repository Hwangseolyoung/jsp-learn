<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- request 객체의 정보를 담고 있는데 여러 메소드를 통해 얻어올 수 있다. -->
	<h1>request : java.servlet.http.HttpServletRequest</h1>
	
	<h3>method : <%= request.getMethod() %></h3>
	<h3>path : <%= request.getRequestURI() %></h3>
	
	<h3>query string : <%= request.getQueryString() %></h3>
	
	<h3>host : <%= request.getServerPort() %></h3>
	<h3>Accept Header : <%= request.getHeader("Accept") %></h3>
	<h3>URL : <%= request.getRequestURI() %></h3>
</body>
</html>