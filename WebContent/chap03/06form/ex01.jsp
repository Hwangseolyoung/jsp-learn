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
<h1>form 요소</h1>
<!-- 사용자의 입력을 받아 query string이 작성된다. -->
<form action="http://localhost:8080/jsp20220405/chap03/06form/ex02.jsp">
	
	<input type="text" name="age" value="999"/>
	<!-- 전송 버튼 클릭시 name="age" value="999"가 
	query string 으로 작성 되어 넘어간다. -->
	<!-- 전송 결과 값 : http://localhost:8080/jsp20220405/chap03/06form/ex02.jsp?age=999 -->
	
	<br />


	<!-- submit 버튼 클릭시 form요소의 action 속성으로 이동  -->
	<input type="submit" value="전송">


</body>
</html>