<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<% request.setCharacterEncoding("utf-8"); %>

<%
// redirect : 다른 페이지로 이동하라고 응답하는 기능이다.
// sendRedirect(이동할 주소)를 사용하기
// 실행해보면 이동할 위치의 웹브라우저로 주소가 바뀌어 있다.
String location = "http://www.naver.com";
response.sendRedirect(location);

%>