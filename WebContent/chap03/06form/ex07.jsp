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
<h1>checkbox 예제</h1>
<h2>좋아하는 영화를 고르세요</h2>
<form action="ex08.jsp">
<!-- name의 value는 같아도 된다.(같은 이름으로 여러개를 넘길 수 있다.)
value attribute를 사용하면 그 값이 넘어간다. -->
	<!-- (input:c+br)*5+input:submit -->
	<input type="checkbox" name="movie" id="" value="avengers"/> 어벤저스
	<br />
	<input type="checkbox" name="movie"" id="" value="scream"/> 스크림
	<br />
	<input type="checkbox" name="movie"" id="" value="mobius"/> 모비우스
	<br />
	<input type="checkbox" name="movie"" id="" value="spiderman"/> 스파이더맨
	<br />
	<input type="checkbox" name="movie"" id="" value="ambulance"/> 엠뷸런스
	<br />
	<input type="submit" value="골랐습니다." />
</form>

</body>
</html>