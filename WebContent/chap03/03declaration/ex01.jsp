<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>Dclaration : 선언부</h1>
<p>클래스 레벨에 작성되는 코드</p>
<p>주로 필드, 메소드 작성시 사용됨</p>

<%
// 스크립트릿
System.out.println("스크립트릿 명령문");
%>

<p>표현식 expression</p>
<%= "hello" %>
<%= add(10, 30) %>

<%!
// 선언부 dclaration
// 클래스 시작 부분에 위치함
private String name = "hello";

private int add(int a, int b) {
	return a + b;
}
%>

</body>
</html>