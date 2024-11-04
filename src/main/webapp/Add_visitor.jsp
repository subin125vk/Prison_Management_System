<!DOCTYPE html>
<html lang="en" dir="ltr">
<head>
<meta charset="UTF-8">
<!---<title> Responsive Registration Form | CodingLab </title>--->
<link rel="stylesheet" href="formstyle.css">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script type="text/javascript">
	function validate() {
		var vname = /^[a-z A-Z]+$/;
		var vprisoner = /^[a-z A-Z]+$/;
		var vid = /^[0-9]*$/;
		var vnumber = /^[6-9]\d{9}$/;
		/* var vtime = ;
		 */var vaddress = /^[a-z A-Z]+$/;

		var fullname = document.getElementById("fullname");
		var prisonervisited = document.getElementById("prisonervisited");
		var visitorid = document.getElementById("visitorid");
		var phonenumber = document.getElementById("phonenumber");
		/*            var timeofvisit = document.getElementById("timeofvisit");
		 */var address = document.getElementById("address");

		if (!vname.test(fullname.value) || fullname.value == "") {
			alert("Enter your Full name, alphabets only..!");
			fullname.focus();
			return false;
		} else if (!vprisoner.test(prisonervisited.value)
				|| prisonervisited.value == "") {
			alert("Enter the name of prisoner visited, alphabets only..!");
			prisonervisited.focus();
			return false;
		} else if (!vid.test(visitorid.value) || visitorid.value == "") {
			alert("Enter visitor id....!");
			visitorid.focus();
			return false;
		} else if (!vnumber.test(phonenumber.value) || phonenumber.value == "") {
			alert("Enter valid phonenumber..!");
			phonenumber.focus();
			return false;
		}

		/*     else if (!vtime.test(timeofvisit.value =="") {
		alert("Enter a valid time....!");
		timeofvisit.focus();
		return false;
		}  */
		else if (!vaddress.test(address.value) || address.value == "") {
			alert("Enter address....!");
			address.focus();
			return false;
		}
		return;
	}
</script>

</head>
<body>
	<div class="container">
		<div class="title">Add Visitor</div>
		<div class="content">
			<form action="visitorregister.jsp" onsubmit="return validate()"
				method="post">
				<div class="user-details">
					<div class="input-box">
						<span class="details">Full Name</span> <input type="text"
							name="fullname" id="fullname" placeholder="Enter your name">
					</div>
					<div class="input-box">
						<span class="details">Prisoner Visited</span> <input type="text"
							name="prisonervisited" id="prisonervisited"
							placeholder="Enter Prisoner Details">
					</div>
					<div class="input-box">
						<span class="details">ID Number</span> <input type="number"
							name="visitorid" id="visitorid" placeholder="Enter ID Number">
					</div>
					<div class="input-box">
						<span class="details">Phone Number</span> <input type="text"
							name="phonenumber" id="phonenumber"
							placeholder="Enter Phone Number">
					</div>
					<div class="input-box">
						<span class="details">Time Of Visit</span> <input type="time"
							name="timeofvisit" id="timeofvisit" placeholder="Time">
					</div>
					<div class="input-box">
						<span class="details">Address</span> <input type="text"
							name="address" id="address" placeholder="Enter Address">
					</div>
				</div>
				<%--  --%>
				<div class="gender-details">
					<input type="radio" name="gender" value="Male" id="dot-1" checked>
					<input type="radio" name="gender" value="Female" id="dot-2">
					<input type="radio" name="gender" value="Prefer not to say"
						id="dot-3"> <span class="gender-title">Gender</span>
					<div class="category">
						<label for="dot-1"> <span class="dot one"></span> <span
							class="gender">Male</span>
						</label> <label for="dot-2"> <span class="dot two"></span> <span
							class="gender">Female</span>
						</label> <label for="dot-3"> <span class="dot three"></span> <span
							class="gender">Prefer not to say</span>
						</label>
					</div>
				</div>

				<div class="button">
					<input type="submit" value="Submit">
				</div>
			</form>
		</div>
	</div>

</body>
</html>
