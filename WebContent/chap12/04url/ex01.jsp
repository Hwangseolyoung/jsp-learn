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

	<h1>URL 처리 태그</h1>
	<!-- 반복해서 사용해야 하는 링크를 value에 넣어주고 var 변수에 담아주면된다. -->
	<!-- var(변수)를 저장할 영역을 변경하고 싶으면 scope(기본값 page영역) 사용
	쓰레드에 안전한 영역은 page와 request 영역이다. -->
	<c:url value="http://naver.com" var="naverUrl" scope="page"></c:url>
	
	<a href="${naverUrl }">naver.com</a>
	
	<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quos labore maiores perferendis atque odio culpa itaque impedit magnam dolor deserunt quo ut inventore molestias earum praesentium. Recusandae distinctio modi unde.</p>
	<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Tempore consequatur assumenda in sapiente natus facilis mollitia quo porro eveniet amet itaque voluptatem rerum ipsa. Aperiam ipsa illo minus soluta rem!</p>

	<a href="naverUrl">네이버</a>

</body>
</html>