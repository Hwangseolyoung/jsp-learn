<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.*"%>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.1.3/css/bootstrap.min.css" integrity="sha512-GQGU0fMMi238uA+a/bdWJfpUGKUkBdgfFdgBm72SUQ6BeyWjoY/ton0tEjH+OSH9iP4Dfh+7HM0I9f5eR0L/4w==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<title>Insert title here</title>
</head>
<body>
	<h1>&lt;c:choose&gt;, &lt;c:when&gt;, &lt;c:otherwise&gt;</h1>
	
	<!-- 자바의 switch문 if-else문 코드블럭을 혼합한 형태로
	다수의 조건문을 하나의 블럭에서 수행할때 사용함  -->
	
	<%
	pageContext.setAttribute("age", 45);
	%>
	
	<c:choose>
		<c:when test="${age >= 20 }">
			<h1>성인입니다. </h1>
		</c:when>
		<c:when test="${age >= 13 }">
			<h1>청소년입니다.</h1>
		</c:when>
		<c:when test="${age >= 7 }">
			<h1>어린입니다.</h1>
		</c:when>
		<c:otherwise>
			<!-- c:otherwise는 생략가능하다. -->
			<h1>유아입니다.</h1>
		</c:otherwise>
	</c:choose>
</body>
</html>