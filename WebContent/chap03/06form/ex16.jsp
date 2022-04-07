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
<%
String str = request.getParameter("text");

StringBuffer sb =new StringBuffer(str);
String reveredStr = sb.reverse().toString();

%>

<!-- CSS style을 이용해서 입력된 그대로 출력되도록 작성했다 -->
<p style="white-space: pre;"><%= reveredStr %></p>

</body>
</html>