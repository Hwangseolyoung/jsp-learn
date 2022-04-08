<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<% request.setCharacterEncoding("utf-8"); %>

<h1>ex03from.jsp</h1>

<%
String param = request.getParameter("param");

// query string을 이용해서 param의 value를 넣어주면 해당 페이지로 이동한다.

if(param != null && param.equals("vip")) {
%>
	<jsp:forward page="ex03to1.jsp" />
<% 	
	
}else {
%>	
	<jsp:forward page="ex03to2.jsp" />
<%
}

%>

