<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>스크립트릿(scriptlet)</h1>
	<p>자바 코드 작성 가능한 요소</p>
	<!-- jsp파일로 작성했지만 java 소스 코드로 변경된다. -->
	
	<%
	System.out.println("jsp의 스크립트릿에 작성한 자바 코드!");
	%>
	
	<h1>두번째 제목</h1>
	
	<% 
	System.out.println("두번째 자바 명령문");
	
	out.write("<h1>세번째 제목</h1>");
	%>

</body>
</html>