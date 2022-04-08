<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="chap07.*"%>
<% request.setCharacterEncoding("utf-8"); %>

<!-- 자바 파일 실행하려면 import 시켜줘야 한다. -->
<%
Car car = new Car();
car.setName("kia");
car.setPrice(500);

request.setAttribute("myCar", car);
%>

<jsp:forward page="ex08to.jsp"></jsp:forward>