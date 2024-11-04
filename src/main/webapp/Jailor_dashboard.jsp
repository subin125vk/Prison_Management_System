<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Jailor Dashboard</title>
<link rel="shortcut icon" href="/images/logo-mb.png" type="image/png">
<!-- GOOGLE FONT -->
<link rel="preconnect" href="https://fonts.gstatic.com">
<link
	href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&display=swap"
	rel="stylesheet">
<!-- BOXICONS -->
<link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css'
	rel='stylesheet'>
<!-- APP CSS -->
<link rel="stylesheet" href="Jailor_dashboard_grid.css">
<link rel="stylesheet" href="Jailor_dashboard.css">
</head>

<body>

	<!-- SIDEBAR -->
	<div class="sidebar">
		<div class="sidebar-logo">
			<img src="./Images/prisonlogo.jpg" alt="Company logo">
			<div class="sidebar-close" id="sidebar-close">
				<i class='bx bx-left-arrow-alt'></i>
			</div>
		</div>
		<div class="sidebar-user">
			<div class="sidebar-user-info">
				<img src="./Images/jailorlogo.jpg" alt="User picture"
					class="profile-image">
				<div class="sidebar-user-name">Jailor</div>
			</div>
			<form action="Prison_login.jsp">

				<button class="btn btn-outline">
					<i class='bx bx-log-out bx-flip-horizontal'> </i>

				</button>
			</form>
		</div>
		<!-- SIDEBAR MENU -->
		<ul class="sidebar-menu">
			<li><a href="#" class="active"> <i class='bx bx-home'></i> <span>dashboard</span>
			</a></li>

			<li class="sidebar-submenu"><a href="#"
				class="sidebar-menu-dropdown"> <i class='bx bx-user-circle'></i>
					<span>Prisoner</span>
					<div class="dropdown-icon"></div>
			</a>
				<ul class="sidebar-menu sidebar-menu-dropdown-content">
					<li><a href="Add_prisoner.jsp"> Add </a></li>
					<li><a href="Edit_prisoner.jsp"> Edit/Update </a></li>
					<li><a href="View_prisoner.jsp"> View </a></li>
					<li><a href="Delete_jailor.jsp"> Delete </a></li>
				</ul></li>
			<li class="sidebar-submenu"><a href="#"
				class="sidebar-menu-dropdown"> <i class='bx bx-user-circle'></i>
					<span>Visitor</span>
					<div class="dropdown-icon"></div>
			</a>
				<ul class="sidebar-menu sidebar-menu-dropdown-content">
					<li><a href="Add_visitor.jsp"> Add </a></li>
					<li><a href="Edit_visitor.jsp"> Edit/Update </a></li>
					<li><a href="View_visitor.jsp"> View </a></li>
					<li><a href="Delete_visitor.jsp"> Delete </a></li>
				</ul></li>
			<li class="sidebar-submenu"><a href="#"
				class="sidebar-menu-dropdown"> <i class='bx bx-user-circle'></i>
					<span>Staff</span>
					<div class="dropdown-icon"></div>
			</a>
				<ul class="sidebar-menu sidebar-menu-dropdown-content">
					<li><a href="Add_staff.jsp"> Add </a></li>
					<li><a href="Edit_staff.jsp"> Edit/Update </a></li>

					<li><a href="View_staff.jsp"> View </a></li>
					<li><a href="Delete_staff.jsp"> Delete </a></li>
				</ul></li>
			<li class="sidebar-submenu"><a href="Prison_transfer.jsp"
				class="sidebar-menu-dropdown"> <i class='bx bx-user-circle'></i>
					<span>Prison Transfer</span>
					<div class="dropdown-icon"></div>
			</a>
				<ul class="sidebar-menu sidebar-menu-dropdown-content">
					<li><a href="Prison_transfer.jsp"> Add </a></li>
					<li><a href="#"> Edit/Update </a></li>
					<li><a href="#"> Delete </a></li>
				</ul></li>
			<li class="sidebar-submenu"><a href="#"
				class="sidebar-menu-dropdown"> <i class='bx bx-category'></i> <span>Other
						Services</span>
					<div class="dropdown-icon"></div>
			</a>
				<ul class="sidebar-menu sidebar-menu-dropdown-content">
					<li><a href="#"> Add </a></li>
					<li><a href="#"> Edit/Update </a></li>
					<li><a href="#"> Delete </a></li>
				</ul></li>


			<li class="sidebar-submenu"><a href="#"
				class="sidebar-menu-dropdown"> <i class='bx bx-cog'></i> <span>settings</span>
					<div class="dropdown-icon"></div>
			</a>
				<ul class="sidebar-menu sidebar-menu-dropdown-content">
					<li><a href="#" class="darkmode-toggle" id="darkmode-toggle">
							darkmode <span class="darkmode-switch"></span>
					</a></li>
				</ul></li>
		</ul>
		<!-- END SIDEBAR MENU -->
	</div>
	<!-- END SIDEBAR -->

	<!-- MAIN CONTENT -->
	<div class="main">
		<div class="main-header">
			<div class="mobile-toggle" id="mobile-toggle">
				<i class='bx bx-menu-alt-right'></i>
			</div>
			<div class="main-title">dashboard</div>
		</div>
		<div class="main-content">
			<div class="row">
				<div class="col-3 col-md-6 col-sm-12">
					<div class="box box-hover">
						<!-- COUNTER -->
						<div class="counter">
							<div class="counter-title">Prisoners</div>
							<div class="counter-info">
								<div class="counter-count">#</div>
								<i class='bx bx-user'></i>
							</div>
						</div>
						<!-- END COUNTER -->
					</div>
				</div>
				<div class="col-3 col-md-6 col-sm-12">
					<div class="box box-hover">
						<!-- COUNTER -->
						<div class="counter">
							<div class="counter-title">#</div>
							<div class="counter-info">
								<div class="counter-count">#</div>
								<i class='bx bx-user'></i>
							</div>
						</div>
						<!-- END COUNTER -->
					</div>
				</div>
				<div class="col-3 col-md-6 col-sm-12">
					<div class="box box-hover">
						<!-- COUNTER -->
						<div class="counter">
							<div class="counter-title">#</div>
							<div class="counter-info">
								<div class="counter-count">#</div>
								<i class='bx bx-user'></i>
							</div>
						</div>
						<!-- END COUNTER -->
					</div>
				</div>
				<div class="col-3 col-md-6 col-sm-12">
					<div class="box box-hover">
						<!-- COUNTER -->
						<div class="counter">
							<div class="counter-title">#</div>
							<div class="counter-info">
								<div class="counter-count">#</div>
								<i class='bx bx-user'></i>
							</div>
						</div>
						<!-- END COUNTER -->
					</div>
				</div>
			</div>

			<div class="row">
				<div class="col-3 col-md-6 col-sm-12">
					<!-- TOP PRODUCT -->
					<div class="box f-height">
						<div class="box-header">Upcoming Events</div>
						<div class="box-body">
							<ul class="product-list">
								<li class="product-list-item">
									<div class="item-info">
										<img src="./Images/independencelogo.jpg" alt="product image">
										<div class="item-name">
											<div class="product-name">Independence Day</div>
										</div>
									</div>

								</li>
								<li class="product-list-item">
									<div class="item-info">
										<img src="./Images/annualsportsmeet.jpg" alt="product image">
										<div class="item-name">
											<div class="product-name">Annual Sports Meet</div>

										</div>
									</div>

								</li>
								<li class="product-list-item">
									<div class="item-info">
										<img src="./Images/medicalcamp.jpg" alt="product image">
										<div class="item-name">
											<div class="product-name">Medical Camp</div>
										</div>
									</div>

								</li>
								<li class="product-list-item">
									<div class="item-info">
										<img src="./Images/cellreallocationlogo.jpg"
											alt="product image">
										<div class="item-name">
											<div class="product-name">Cell Reallocation</div>

										</div>
									</div>

								</li>
							</ul>
						</div>
					</div>
				</div>
				<div class="col-9 col-md-6 col-sm-12">
					<!-- ORDERS TABLE -->
					<div class="box">
						<div class="box-header">Recent Activity</div>
						<div class="box-body overflow-scroll">
							<table>
								<thead>
									<tr>
										<th>ID</th>
										<th>Action</th>
										<th>Date</th>

									</tr>
								</thead>
								<tbody>
									<tr>
										<td>#2345</td>
										<td>
											<div class="order-owner">
												<span>tuat tran anh</span>
											</div>
										</td>
										<td>2021-05-09</td>


									</tr>
									<tr>
										<td>#2345</td>
										<td>
											<div class="order-owner">
												<span>John doe</span>
											</div>
										</td>
										<td>2021-05-09</td>


									</tr>
									<tr>
										<td>#2345</td>
										<td>
											<div class="order-owner">
												<span>evelyn</span>
											</div>
										</td>
										<td>2021-05-09</td>


									</tr>
									<tr>
										<td>#2345</td>
										<td>
											<div class="order-owner">
												<span>John doe</span>
											</div>
										</td>
										<td>2021-05-09</td>


									</tr>
									<tr>
										<td>#2345</td>
										<td>
											<div class="order-owner">
												<span>evelyn</span>
											</div>
										</td>
										<td>2021-05-09</td>


									</tr>
								</tbody>
							</table>
						</div>
					</div>
				</div>



			</div>
		</div>

		<!-- END MAIN CONTENT -->

		<div class="overlay"></div>

		<script src="https://cdn.jsdelivr.net/npm/apexcharts"></script>

		<script src="Jailor_dashboard.js"></script>
</body>

</html>