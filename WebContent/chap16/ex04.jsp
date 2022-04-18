<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="my" tagdir="/WEB-INF/tags/my1" %>
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
	<!-- num1과 num2를 더한 결과가 출력되도록 mytag4.tag를 완성하세요. -->
	<my:mytag4 num1="3" num2="5"></my:mytag4>
	
	<my:mytag4 num1="9" num2="8"></my:mytag4>
	
	<!-- num2가 없으면 산술결과 시 0으로 처리되서 출력됨 -->
	<!-- mytag4에서 num2를 필수 attribute 지정했으므로 오류 발생 -->
	<my:mytag4 num1="10"></my:mytag4>
	
	<!-- 표준 태그 라이브러리처럼 필수 attribute 지정할 수 있다. -->
	<c:if test="true">
		<div>hello</div>
	</c:if>
</body>
</html>