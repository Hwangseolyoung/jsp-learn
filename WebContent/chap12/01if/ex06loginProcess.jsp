<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.*"%>
<% request.setCharacterEncoding("utf-8"); %>

<%
String id = request.getParameter("id");
String pw = request.getParameter("pw");

if(id.equals(pw)) {
	// 아이디와 패스워드가 일치하면 로그인 성공
	// id session에 넣어주기
	session.setAttribute("username", id);
	// 로그인 성공시 이동 응답
	String loc = "ex07main.jsp";
	response.sendRedirect(loc);
} else {
	// 로그인 실패시 이동응답과 함께 query string으로 error=true 출력
	String loc = "ex05loginForm.jsp?error=true";
	response.sendRedirect(loc);
	
}

%>