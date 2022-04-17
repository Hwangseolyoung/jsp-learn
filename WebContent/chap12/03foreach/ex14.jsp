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

	<h1></h1>
	<c:forEach begin="1" end="5" var="i" varStatus="status">
		<p>begin, ${status.begin }</p> <!-- 처음 -->
		<p>end, ${status.end }</p> <!-- 마지막 -->
		<p>count, ${status.count }</p> <!-- 돌고있는 횟수 -->
		<p>index, ${status.index }</p> <!-- 돌고있는 인덱스 번호 -->
		<p>first, ${status.first }</p> <!-- 처음 돌고있는가? -->
		<p>last, ${status.last }</p> 
		
		<!-- var Status : LoopTagStatus타입
		몇번째 loop?
		몇번 index?
		첫번째 loop?
		마지막 loop?
		
		등의 상태 정보를 가진 attribute명 -->
	</c:forEach>

</body>
</html>