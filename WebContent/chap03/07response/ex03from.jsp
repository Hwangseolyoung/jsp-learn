<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<% request.setCharacterEncoding("utf-8"); %>

<%
String path = "ex03to.jsp";
response.sendRedirect(path);
// 톰캣은 sendRedirect 메소드를 사용햇을 뿐인데 
// status code랑, add Location Header까지 해준다.
%>