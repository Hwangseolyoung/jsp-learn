<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.1.3/css/bootstrap.min.css" integrity="sha512-GQGU0fMMi238uA+a/bdWJfpUGKUkBdgfFdgBm72SUQ6BeyWjoY/ton0tEjH+OSH9iP4Dfh+7HM0I9f5eR0L/4w==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js" referrerpolicy="no-referrer"></script>
<title>Insert title here</title>
</head>
<body>
	<h1 class="text-center">직원 목록</h1>
		
		<div>
			<form action="">
				LAST NAME : <input type="text" name="lastName" value="${param.lastName }" />
				<button>
					<i class="fa-solid fa-magnifying-glass"></i>
				</button> 
			</form>
			<form action="">
				FIRST NAME : <input type="text" name="firstName" value="${param.firstName }" />
				<button>
					<i class="fa-solid fa-magnifying-glass"></i>
				</button>
			</form>
		</div>
		
	<table class="table">
		<thead>
			<tr>
				<th>ID</th>
				<th>LAST NAME</th>
				<th>FIRST NAME</th>
				<th>BIRTH DATE</th>
				<th>PHOTO</th>
				<!-- <th>NOTES</th> -->
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${employeeList }" var="emp">
				<tr>
					<th>${emp.id }</th>
					<th>${emp.lastName }</th>
					<th>${emp.firstName }</th>
					<th>${emp.birthDate }</th>
					<th>${emp.photo }</th>
					<%-- <th>${emp.notes }</th> --%>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</body>
</html>