<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<title>Login</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Roboto" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/css/bootstrap.min.css" />
<link rel="stylesheet" href="Prison_login.css" />
</head>
<body>
	<main>
		<div class="container">
			<form action="username_password.jsp" onsubmit="post">
				<h2>Login</h2>

				<div class="input-group" style="margin-bottom: 10px;">
					<label for="email">Email</label> <input id="email" type="text"
						class="form-control" name="email" placeholder="Enter your email" />
				</div>
				<p style="color: red" id="email_error"></p>
				<div class="input-group" style="margin-bottom: 10px;">
					<label for="txtPassword">Password</label> <input type="password"
						id="txtPassword" class="form-control" name="txtPassword"
						placeholder="Enter your Password" />
					<button type="button" id="btnToggle" class="toggle">
						<i id="eyeIcon" class="fa fa-eye"></i>
					</button>
				</div>
				<div class="checkbox-text" style="margin-bottom: 10px;">
					<div class="checkbox-content">
						<input type="checkbox" id="logCheck"> <label
							for="logCheck" class="text">Remember me</label>
					</div>
				<p style="color: red" id="txtPassword_error"></p>
				<button class="btn btn-lg btn-primary btn-block" id="submit_form" name="button">
					Login</button>
				
					 <!-- <div class="for-btn"> 
                        <a href="#" class="text">Forgot password?</a>
                    </div> -->
					
					</div></form>
				</div>

				
	</main>
	<script src="Prison_login.js"></script>
	
</body>
</html>
