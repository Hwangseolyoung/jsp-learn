<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<title>Insert title here</title>
</head>
<body>
<h1>post 방식 전송 한글 처리</h1>
<!-- 리퀘스트에 넣어놨는데 겟파라미터로 꺼낼때 깨져서 나온다.
갯파라미터 하기 이전에 인코딩코드를 작성해서 utf-8로 지정해야한다.  -->
<form action="ex22.jsp" method="post">
	<input type="text" name="movie" />
	<input type="text" name="actor" />
	
	<input type="submit" value="전송" />
</form>


</body>
</html>