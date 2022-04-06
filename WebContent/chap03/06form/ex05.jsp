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
<h1>input 요소에 type 속성</h1>

<h2>checkbox</h2>
<form action="ex06.jsp">
	<!-- 체크를 안하면 안넘어가고, 체크하면 on 값으로 넘어가는데 고정은 아님 -->
	<input type="checkbox" name="movie" /><br />
	<input type="checkbox" name="fruit" /><br />
	<input type="submit" />
</form>

<hr/>

<form action="ex06.jsp">
	<!-- 체크박스가 2개이면 하나만 체크하지 않아도 안넘어감 -->
	<input type="checkbox" name="agree" id="" /> 개인정보 <br />
	<input type="checkbox" name="accept" id="" /> 광고수신 <br />
	<input type="submit" value="동의"/> <br />
</form>

</body>
</html>