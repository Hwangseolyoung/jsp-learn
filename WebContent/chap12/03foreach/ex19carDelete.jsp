<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.*"%>
<%@ page import="chap11.*" %>
<% request.setCharacterEncoding("utf-8"); %>

<%
// 리퀘스트 인덱스 파라미터(id)를 받아 리스트를 삭제한다.
String idStr = request.getParameter("id");

// 몇번째의 인덱스인지 Integer.parseInt을 해줘야한다.
int id = Integer.parseInt(idStr);

// cars 리스트에서 꺼낸다.
List<Car> list = (List<Car>) application.getAttribute("cars");

// id를 찾아 삭제한다.
list.remove(id);


response.sendRedirect("ex18carForm.jsp");

%>
