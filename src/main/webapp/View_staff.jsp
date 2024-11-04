<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Staff</title>
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round|Open+Sans">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<!-- <link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css"> -->
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<link rel="stylesheet" href="View.css">
<script type="text/javascript" src="View.js"></script>
</head>
<body>

	<%@page import="staff.*,java.util.*"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>



	<%
	List<Add_staff> list = Add_staffDao.getAllRecords();
	request.setAttribute("list", list);
	%>
	<div class="container">
		<div class="table-wrapper">
			<div class="table-title">
				<div class="row">
					<div class="col-sm-8">
						<h2>Staff Details</h2>
					</div>
					<div class="col-sm-4">
						<!-- <button type="button" class="btn btn-info add-new">
							<i class="fa fa-plus"></i> Add New
						</button> -->
					</div>
				</div>
			</div>
			<table class="table table-bordered">
				<thead>
					<tr>
						<th>id</th>
						<th>fullname</th>
						<th>age</th>
						<th>department</th>
						<th>staff_id</th>
						<th>phonenumber</th>
						<th>address</th>
						<th>gender</th>
						<th>Actions</th>
					</tr>
				</thead>

				<tbody>
					<c:forEach items="${list}" var="u">

						<tr>
							<td>${u.getId()}</td>
							<td>${u.getFullname()}</td>
							<td>${u.getAge()}</td>
							<td>${u.getDepartment()}</td>
							<td>${u.getStaff_id()}</td>
							<td>${u.getPhonenumber()}</td>
							<td>${u.getAddress()}</td>
							<td>${u.getGender()}</td>

							<td><a class="add" title="Add" data-toggle="tooltip"><i
									class="material-icons">&#xE03B;</i></a> <a class="edits"
								title="Edit" data-toggle="tooltip"
								href="Edit_Staff_form.jsp?id=${u.getId()}"><i
									class="material-icons">&#xE254;</i></a> <a class="delete"
								title="Delete" data-toggle="tooltip"
								href="Delete_staff.jsp?id=${u.getId()}"><i
									class="material-icons">&#xE872;</i></a></td>

						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
</body>
</html>
