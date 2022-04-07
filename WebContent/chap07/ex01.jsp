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
<!-- 다른 파일의 내용을 현재 위치의 삽입(복붙) 후 java로 변환된다.  -->
<%@ include file="module/header01.jsp" %>


<!-- div>(h1>lorem1^p>lorem)*3 -->
<div>
	<h1>Lorem.</h1>
	<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quis soluta consectetur cupiditate doloremque itaque reprehenderit nesciunt labore possimus velit quasi! Nisi nostrum tempora impedit eaque dolores eveniet molestiae ullam deserunt.</p>
	<h1>Neque.</h1>
	<p>Saepe a eos fugiat provident quasi. Deserunt soluta rem perspiciatis mollitia corrupti et dolor dignissimos totam esse reiciendis quaerat a beatae officiis adipisci fuga? Exercitationem consequatur sint doloribus repellendus consectetur.</p>
	<h1>Dolorum.</h1>
	<p>Incidunt quaerat odit fuga obcaecati delectus alias eius veniam ipsa qui tempore! Quae repudiandae sed excepturi earum quam praesentium voluptas maxime aspernatur porro labore temporibus totam eligendi adipisci aliquam repellat.</p>
</div>

</body>
</html>