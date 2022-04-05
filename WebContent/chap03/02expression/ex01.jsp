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
	<h1>express : 표현식</h1>
	<p>out객체의 print 메소드의 아규먼트(매개값)로 들어간다.</p>
	<%="표현식"%>
	<%
	// 스크립트릿 
	// _jspService 메소드의 명령문들
	%>


	<%
	out.print("hello");
	out.print("hi");
	%>

	<%="hello"%><%="hi"%>

</body>
</html>