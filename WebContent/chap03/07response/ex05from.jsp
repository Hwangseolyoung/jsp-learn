<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<% request.setCharacterEncoding("utf-8"); %>
<%
// 특수기호나 한글을 사용해야한다면 앤코더를 해야한다.
String actorValue = java.net.URLEncoder.encode("윤+여정", "utf-8");
/* response.sendRedirect("ex05to.jsp?age=80&movie=doctor&actor=윤+여정"); */
response.sendRedirect("ex05to.jsp?age=80&movie=doctor&actor=" + actorValue);
%>