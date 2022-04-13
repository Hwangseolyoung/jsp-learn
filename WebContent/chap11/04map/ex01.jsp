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
	<h1>Attribute가 Map 일 때...</h1>
	
	<%
	Map<String, String> map = new HashMap<>();
	map.put("singer", "서태지");
	map.put("soccer", "손흥민");
	map.put("my car", "tesla");
	
	pageContext.setAttribute("map", map);
	
	%>
	<!-- Map의 Key를 자바빈의 property처럼 사용하면 된다.  -->
	<p>${map.singer }</p>
	<p>${map.soccer }</p>
	<p>${map.group }</p>
	<%-- <p>${map.my car }</p> .연산자는 띄어쓰기를 허용하지 않는다. --%>
	
	<p>${map["singer"] }</p>
	<p>${map["soccer"] }</p>
	<p>${map.["group"] }</p>
	<!-- ["String"]문법은 띄어쓰기를 허용한다. -->
	<p>${map["my car"] }</p>
	
</body>
</html>