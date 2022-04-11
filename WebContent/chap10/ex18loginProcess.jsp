<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<% request.setCharacterEncoding("utf-8"); %>
<%
String id = request.getParameter("id");
String pw = request.getParameter("pw");

session.setAttribute("message", "로그인 성공하였습니다. 반갑습니다. " + id + "님");

//세선에 아이디를 담아놨으니 페이지에 로그인이 유지된다.
session.setAttribute("id", id); 


response.sendRedirect("ex17loginForm.jsp");


%>