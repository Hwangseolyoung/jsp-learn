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
<h1>ex02to.jsp</h1>

<!-- 두번째 리퀘스에서 꺼내면 아무것도 존재하지 않는다. -->
<!-- 리퀘스트는 서로다른 상자에 들어있기 때문이다. -->
<h2><%= request.getAttribute("movie") %></h2>

<!-- 같은 세션을 사용하기 때문에 세션에 넣어놓은 객체를 사용할 수 있다. -->
<h2><%= session.getAttribute("film") %></h2>
</body>
</html>