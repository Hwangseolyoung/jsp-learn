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
	<h1>cookie el 기본객체 : Map&lt;String, cookie&gt; 타입</h1>
	
	<%
	Cookie cookie = new Cookie("cookie1", "value1");
	Cookie cookie2 = new Cookie("my-cookie", "value2");
	
	response.addCookie(cookie);
	response.addCookie(cookie2);
	%>
	
	<hr />
	<!-- cookie 타입 객체에 toSting된 내용이 출력됨
	javax.servlet.http.Cookie@32a902d1 -->
	<p>${cookie.cookie1 }</p>
	<!-- cookie의 메소드 중에 get~으로 시작하는 메소드가 있다면 property로 사용가능함 -->
	<p>${cookie.cookie1.name }</p>
	<p>${cookie.cookie1.value }</p>
	
	<p>${cookie[my-cookie].name }</p>
	<p>${cookie[my-cookie].value }</p>

</body>
</html>