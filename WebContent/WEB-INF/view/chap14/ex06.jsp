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
	<!-- .container>.row>.col>table.table>thead>tr>th*4^^tbody>tr>td*4 -->
	<div class="container">
		<div class="row">
			<div class="col">
				<center><h1>직원 명단</h1></center>
				<table class="table table-dark table-striped">
					<thead>
						<tr>
							<th>#</th>
							<th>First</th>
							<th>Last</th>
							<th>BirthDate</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${employee }" var="employee" varStatus="status">
							<tr>
								<td>${status.count }</td>
								<td>${employee.firstName }</td>
								<td>${employee.lastName }</td>
								<td>${employee.birthDate }</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</div>
	
</body>
</html>