<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<% request.setCharacterEncoding("utf-8"); %>

<!-- request parameter는 String
request attribute는 Object -->

<%
List<String> list = new ArrayList();
list.add("jimin");
list.add("rm");
list.add("jhope");

/* 리퀘스트에 리스트를 붙여 넣는데 String 타입 이름을 붙여준다. */
request.setAttribute("singer", list);
%>

<jsp:forward page="ex04to.jsp">
	<jsp:param value="doctor" name="job"/>
</jsp:forward>