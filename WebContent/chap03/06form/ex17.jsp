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
<h1>button</h1>
<!-- submit 동작을 하지않는 button 만들기 -->
<form action="ex18.jsp">
	<input type="text" name="movie" />
	
	<input type ="button" value="그냥버튼" />
	<input type ="submit" value="전송" />
	
	<!-- 오류 발생 -->
	<%-- <input type="button" value="<i class="fa-brands fa-apple-pay"></i>" --%>
	
	<!-- form element 안에 button을 만들면 submit 버튼 작동을 한다.
	input을 button으로 바꿔주면 submit 동작을 하지않는 button이 생성된다. -->
	<button type="button"><i class="fa-brands fa-apple-pay"></i></button>

</form>

</body>
</html>