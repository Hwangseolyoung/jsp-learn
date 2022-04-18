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
	<h1>c:out 태그</h1>
	<!-- 출력할때 사용한다. 꼭 사용해야 하는데 코드가 복잡해짐  -->
	
	<p><c:out value="hello"></c:out></p>
	<p>hello</p>
	
	<hr />
	
	<p><c:out value="<br>">은 새로운 줄이다.</c:out></p>
	<p>&lt;br&gt;은 새로운 줄이다.</p>
	<p><br>은 새로운 줄이다.</p>
	
	<!-- 꼭 사용하는 이유는 사용자가 입력한 텍스트가 html코드를 일 수 있을때
	html코드로 출력된다. 그걸 방지하기 위해 필수로 사용한다.(스크립트 공격) -->
</body>
</html>