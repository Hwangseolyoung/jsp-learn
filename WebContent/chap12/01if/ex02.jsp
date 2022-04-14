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
	<!-- http://localhost:8080/jsp20220405/chap12/01if/ex02.jsp?num1=98&num2=10 -->
	<c:if test="${(not empty param.num1) and (not empty param.num2) }">
		<h1>${param.num1 } + ${param.num2 } = ${param.num1 + param.num2 }</h1>	
	</c:if>
	
	<!-- else 태그가 없으므로 반대 결과조건 써줘야함 -->
	
	<!-- http://localhost:8080/jsp20220405/chap12/01if/ex02.jsp -->
	<c:if test="${(empty param.num1) or (empty param.num2) }">
		<h1>num1, num2 파라미터를 작성해주세요.</h1>	
	</c:if>
	
	<hr />
	
	<!-- 연산 결과 저장방법 : var attribute를 써주면 기본값 pageScope에 attribue로 들어간다. -->
	<!-- scope attribute에 var 위치를 지정해 줄 수 있다.(page, request에만 저장하는 것이 좋다.) -->
	<!-- 재사용시 attribute만 써주면 된다. -->
	<c:if test="${(not empty param.num1) and (not empty param.num2) }" var="myTest" scope="page">
		<h1>${param.num1 } + ${param.num2 } = ${param.num1 + param.num2 }</h1>	
	</c:if>
	
	<p>${myTest }</p>
	
	<c:if test="${not myTest }">
		<h1>num1, num2 파라미터를 작성해주세요.</h1>
	</c:if>
	
</body>
</html>