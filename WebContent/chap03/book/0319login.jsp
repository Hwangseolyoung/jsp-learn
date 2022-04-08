<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<% request.setCharacterEncoding("utf-8"); %>
<%
	String id = request.getParameter("memberId");
	if(id != null && id.equals("madivirus")) {
		response.sendRedirect("0319index.jsp");
	} else {
		
%>

<!DOCTYPE html>
<html>
<head>
<title>로그인에 실패</title>
</head>
<body>
잘못된 아이디 입니다.
</body>
</html>

<%
}
%>