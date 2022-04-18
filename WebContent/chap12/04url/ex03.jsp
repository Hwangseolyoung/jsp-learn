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
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js" referrerpolicy="no-referrer"></script>
<title>Insert title here</title>
</head>
<body>

	<h1>c:url 로 쿼리스트링(요청 파라미터) 작성</h1>
	<!-- URL에 쿼리 스트링을 사용하는 경우(쿼리스트링은 리퀘스트에 저장된다.) -->
	
	
	<a href="http://www.google.com/search?q=bts">bts 검색</a>
	
	<c:url value="http://www.google.com/search" var="bteSearchUrl">
		<c:param name="q" value="bts"></c:param>
	</c:url>
	
	<a href="${btsSearchUrl }">bts 검색</a> 
	
	<br />
	<a href="http://www.google.com/search?q=apple+ipad">애플 아이패드 검색</a>
	<!-- a href는 url 엔코딩을 사용해야 +가 스페이스(공백)으로 표현되지 않는다. -->

	<!-- c:url에 value로 넣어주면 + 들어간다.(엔코딩X) -->
	<c:url value="http://www.google.com/search" var="ipadSearchUrl">
		<c:param name="q" value="apple+ipad"></c:param>
	</c:url>
	
	<a href="${ipadSearchUrl }">애플+아이패드</a>
	
</body>
</html>