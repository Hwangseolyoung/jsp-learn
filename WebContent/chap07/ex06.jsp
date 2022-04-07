<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<div>
	<h1>ex06.jsp</h1>
	
	<!-- query string을 사용해도 복붙한 것과 동일하기 때문에 동작된다. -->
	<p><%= request.getParameter("movie") %></p>
</div>