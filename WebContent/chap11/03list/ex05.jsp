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

	<%
	List<String> list = new ArrayList<>();
	list.add("bag");
	list.add("pen");
	list.add("book");
	list.add("phone");
	list.add("wallet");
	
	// 향상된 for문 사용시 작성하지 않아도됨(일반 for문은 작성해야함 )
	// 향상된 for문 돌면서 setAttribute 직접 넣어줌
	pageContext.setAttribute("myList", list);
	
	%>

	<%
	for (int i = 0; i < list.size(); i++) {
		pageContext.setAttribute("index", i);
	%>
		<p>${myList[index] }</p>
	<%
	}
	%>
	
	<hr />
	
	<%
	for (String item : list) {
		pageContext.setAttribute("index2", item);
	%>
		<p>${index2 }</p>
	<%
	}
	%>
	


</body>
</html>