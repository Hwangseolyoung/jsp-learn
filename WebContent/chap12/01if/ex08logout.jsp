<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.*"%>
<% request.setCharacterEncoding("utf-8"); %>

<%
	// 로그아웃으로 session 삭제
	session.invalidate();
	
	// 메인 페이지로 리다이렉트함
	String loc = "ex07main.jsp";
	response.sendRedirect(loc);

%>
