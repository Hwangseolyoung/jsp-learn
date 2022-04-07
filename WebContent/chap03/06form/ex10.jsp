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
<!-- select option -->
<!-- 선택 목록이 생성된다. name은 select element, value는 option element에 작성한다. -->
<!-- name, value 쌍으로 query string에 전송되므로 name 작성 필수이다. -->

<h1>select option</h1>
<form action="ex11.jsp">
	<input type="text" name="age" /> <br />
	
	<select name="movie" id="">
		<option value="avengers">어벤져스</option>
		<option value="knight">문나이트</option>
		<option value="doctor">닥터스트레인지</option>
	</select>
	
	<br />

	<input type="submit" value="전송" />
</form>

</body>
</html>