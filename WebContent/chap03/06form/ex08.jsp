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
// getParamete : 여러개를 선택해도 순서상 처음 value만 출력된다.
String movie1 = request.getParameter("movie");

// getParameterValues : 같은 이름으로 여러개 value가 있으면 string 배열로 리턴됨
String[] movies = request.getParameterValues("movie");

%>

<h1><%= movie1 %></h1>
<h1><%= Arrays.toString(movies) %></h1>

언오너드 리스트와 향상된 for로 출력하기
<ul>
<%
for (String movie : movies) {
	out.print("<li>");
	out.print(movie);
	out.print("</li>");
}
%>


</ul>

</body>
</html>