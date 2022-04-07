<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />

<title>Insert title here</title>
</head>
<body>

<p>ex11.jsp</p>
<!-- 데이터 전달시 request 파라미터 사용 -->

<!-- query string을 통해 부가 정보를 전달 할 수 있다. -->
<!-- 작성된 대로 전달 되지 않을 수 있음(비추천) -->
<jsp:action page="ex12.jsp?name=hello world+한글"></jsp:action>

<!-- jsp param 표준액션태그 사용방법(추천) -->
<!-- name, value 쌍으로 사용한다. -->
<jsp:action page="ex12.jsp">
	<jsp:param name="name" value="hello world+한글" />
	<jsp:param name="age" value="90" />
</jsp:action>

</body>
</html>