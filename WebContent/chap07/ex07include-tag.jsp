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
<!-- include standard action tag(표준액션태그) -->
<!-- page 속성에 포함될 페이지 경로 작성 -->
<!-- 자바코드-JspRuntimeLibrary.include(request, response, "module/header02.jsp", out, false);
include 메소드를 호출하여 사용한다 같은 request객채를 사용할 수 있다. -->

<jsp:include page="module/header02.jsp"></jsp:include>

<div>
	<h1>Lorem.</h1>
	<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquam quos at rem doloremque consequuntur natus ad officia incidunt ratione labore vitae sunt accusamus quisquam delectus voluptate eligendi eos dolor voluptates!</p>
</div>

</body>
</html>