<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<h1>ex10.jsp</h1>

<!-- include 메소드를 호출하여 사용하므로 같은 request객채를 사용할 수 있다. -->
<p><%= request.getParameter("actor") %></p>