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
	<%
	String[] movies = {"avengers", "thor", "ironman", "supernman", "batman"};
	
	// el에서 사용가능하도록 attribute에 넣어줘야함
	pageContext.setAttribute("movies", movies);
	%>
	
	<!-- 특정 아이템 출력하려면 인덱스 번호를 넣어주면됨
	begin="3" end="4" -->
	<c:forEach items="${list }" var="movie" begin="3" end="4" >
		<p>${movie }</p>
	</c:forEach>
	
	<hr />
	
	<c:forEach items="${list }" var="movie" begin="0" end="2">
		<p>${movie }</p>
	</c:forEach>

</body>
</html>