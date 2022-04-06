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
<h1>form 요소들 (input, textarea, select, button)</h1>
<h2>input</h2>
<p>input요소의 type 속성에 따라 입력하는 방법이 달라짐</p>
<hr />
<h1>type="text</h1>

<form action="ex05.jsp">
	<!--text 입력란 -->
	<input type="text" name="group"/>
	
	<!-- 전송 -->
	<input type="submit" />
</form>

<h1>type="password"</h1>

<!-- 패스워드 형식으로 입력된다.(화면에는...으로 나옴) -->
<form action="ex05.jsp">
	<input type="password" name="pw"/>
	<input type="submit" />
</form>

<h1>type="date"</h1>
<!-- 날짜를 선택할 수 있는 캘린더가 뜬다.
주소창에는 날짜가 스트링 형식으로 작성된다.
(자바코드에서 캘린더 형식으로 변경해서 써야함) -->
<form action="ex05.jsp">
	<input type="date" name="birth"/>
	<input type="submit" />
</form>

<h1>type="number", type="email", type="file"</h1>
<form action="ex05.jsp">
	<!-- 숫자만 입력됨 -->
 	<input type="number" name="num" /> <br/>
	<!-- 이메일 형식으로만 작성해야한다 아니면 오류 발생(@는 %로 인코딩 되어 넘어간다.) -->
 	<input type="email" name="email" /> <br/>
	<!-- 파일을 선택하면 파일 명이 넘어간다. -->
 	<input type="file" name="filename"/> <br/>
 	<input type="submit" />
</form>
</body>
</html>