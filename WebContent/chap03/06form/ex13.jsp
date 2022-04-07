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
<h1>textarea</h1>
<!-- 텍스트를 여러줄 작성할때 사용한다. -->
<!-- 여러줄 작성한 내용도 인코딩 되어 query string 에 붙어서 넘어간다.
query string에 작성되는데 name=aaa&desc=fkdlsd~~ -->
<form action="ex14.jsp">
	<!-- input+br+textarea+br+input:submit -->
	<input type="text" name="name"/>
	<br />
	<!-- 시작태그와 종료태그 사이에 들어가는 것이 value이다. -->
	<textarea name="desc" id="" cols="30" rows="10">hello</textarea>
	<br />
	<input type="submit" value="전송" />
</form>
</body>
</html>