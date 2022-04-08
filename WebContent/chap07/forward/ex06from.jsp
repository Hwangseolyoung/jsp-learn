<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<% request.setCharacterEncoding("utf-8"); %>

<%
List<String> list = new ArrayList<>();
list.add("jungsuk");
list.add("jim");
list.add("rm");

request.setAttribute("names", list);
request.setAttribute("job", "doctor");
%>

<jsp:forward page="ex06to.jsp" />