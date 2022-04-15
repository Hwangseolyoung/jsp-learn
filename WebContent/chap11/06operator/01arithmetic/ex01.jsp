<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	<h1>el 산술 연산(+, -, *, /, %)</h1>
	
	<%
	pageContext.setAttribute("attr1", 3);
	pageContext.setAttribute("attr2", 5);
	%>
	<p>${attr1 }, ${attr2 }</p>
	<p>더하기 : ${attr1 + attr2 }</p>
	<p>빼기 : ${attr1 - attr2 }</p>
	<p>곱하기 : ${attr1 * attr2 }</p>
	<!-- Double 타입으로 연산된다. -->
	<p>나누기 : ${attr1 / attr2 }</p> <!-- 0.6 -->
	<p>나머지 : ${attr1 % attr2 }</p>
	<!-- 나누기, 나머지는 키워드로 연산할 수 있다. -->
	<p>나누기 : ${attr1 div attr2 }</p>
	<p>나머지 : ${attr1 mod attr2 }</p>
</body>
</html>