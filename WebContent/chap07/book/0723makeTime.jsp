<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Calendar"%>
<% request.setCharacterEncoding("utf-8"); %>
<%
Calendar cal = Calendar.getInstance();
request.setAttribute("time", cal);
%>

<jsp:forward page="0724viewTime.jsp" />