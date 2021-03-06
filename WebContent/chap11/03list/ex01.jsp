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
	<h1>attribute가 List 일 때 </h1>
	<%
	List<String> list = new ArrayList<>();
	list.add("hello");
	list.add("doctor");
	
	pageContext.setAttribute("list1", list);
	%>
	
	<h2>자바 출력방법</h2>
	<%
	List<String> l = (List<String>) pageContext.getAttribute("list");
	%>
	
	<p><%= l.get(0) %></p>
	<p><%= l.get(1) %></p>
	
	<hr />
	
	<h2>자바빈 출력방법</h2>
	
	<p>${list1[0] }</p>
	<p>${list1[1] }</p>

	<hr />
	
	<p>${list1["0"] }</p>
	<p>${list1["1"] }</p>
</body>
</html>