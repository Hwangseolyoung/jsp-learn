<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<% request.setCharacterEncoding("utf-8"); %>

<%
//두번째 리퀘스에서 꺼내면 아무것도 존재하지 않는다
request.setAttribute("movie", "avengers");

// 같은 세션을 사용할 수 있게 setAttribute 메소드로 담을 수있다.
session.setAttribute("film", "doctor");

response.sendRedirect("ex02to.jsp");
%>