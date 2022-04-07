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
<h1>post 전송</h1>
<!-- 우리 눈에 보이지 않지만 본분에 붙어서 작성되어 있다.
request.getParameter로 필요한 내용을 불러 올 수 있다. -->

<!-- form>(input+br)*3+button{전송} -->
<!-- query string에 내용이 필요하다면 action 주소에 붙여서 사용할 수 있다. -->
<form action="ex20.jsp?address=seoul" method="post">
	<input type="text" name="movie" value="doctor strange"/>
	<br />
	<input type="text" name="age" value="700"/>
	<br />
	<input type="text" name="name" value="stephen"/>
	<br />
	<button>전송</button>
</form>

<!-- 예제 캡쳐 확인하기 -->

</body>
</html>