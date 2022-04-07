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

<!-- include directive -->
<!-- file 속성으로 이 위치에 포함될 파일 경로를 작성한다. -->
<%@ include file="module/header01.jsp" %>

<!-- div>(h1>lorem1^p>lorem)*3  -->
<div>
	<h1>Lorem.</h1>
	<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Vero reprehenderit veritatis itaque perspiciatis commodi esse quidem dolore quisquam autem ea accusantium sequi facere ducimus maiores deleniti? Amet vero odit provident.</p>
	<h1>Assumenda.</h1>
	<p>Dolore in sequi est commodi unde magni similique nemo consequatur ut eum consectetur tenetur fugiat facilis voluptate quod. Repellendus ab tenetur iste. Id enim possimus cum facere eum placeat accusamus.</p>
	<h1>Obcaecati.</h1>
	<p>Nesciunt ab placeat repudiandae quia voluptas voluptate voluptatem hic amet quam delectus soluta dicta? Ratione error est repellat ipsum maxime minima quisquam provident delectus doloribus ipsam hic iure fugiat ducimus!</p>
</div>

</body>
</html>