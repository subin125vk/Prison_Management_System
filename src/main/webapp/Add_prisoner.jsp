<!DOCTYPE html>
<html lang="en" dir="ltr">
<head>
<meta charset="UTF-8">
<!---<title> Responsive Registration Form | CodingLab </title>--->
<link rel="stylesheet" href="formstyle.css">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script type="text/javascript"
	src="https://code.jquery.com/jquery-1.7.2.min.js"></script>
<script type="text/javascript">
	function validate() {
		var pname = /^[a-z A-Z]+$/;
		var page = /^[1-9]?[0-9]{1}$|^100$/
		var pid = /^[a-z A-Z]+$/;
		var pcasen =/^[A-Za-z0-9]*$/
		var pcased = /^[a-z A-Z]+$/;
		/* var vtime = ;*/
		var penumber = /^[6-9]\d{9}$/;
		var paddress = /^[a-z A-Z]+$/;

		var fullname = document.getElementById("fullname");
		var age = document.getElementById("age");
		var prisoner_id = document.getElementById("prisoner_id");
		var casenumber = document.getElementById("casenumber");
		/*            var timeofvisit = document.getElementById("timeofvisit");*/
		var cdetail = document.getElementById("cdetail");
		var address = document.getElementById("address");
		var econtact = document.getElementById("econtact");

		if (!pname.test(fullname.value) || fullname.value == "") {
			alert("Enter your Full name, alphabets only..!");
			fullname.focus();
			return false;
		} else if (!page.test(age.value) || age.value == "") {
			alert("Enter age!");
			age.focus();
			return false;
		} else if (!pid.test(prisoner_id.value) || prisoner_id.value == "") {
			alert("Enter prisoner id....!");
			prisoner_id.focus();
			return false;
		} else if (!pcasen.test(casenumber.value) || casenumber.value == "") {
			alert("Enter valid casenumber..!");
			casenumber.focus();
			return false;
		} else if (!pcased.test(cdetail.value) || cdetail.value == "") {
			alert("Enter case details!");
			cdetail.focus();
			return false;}
			
			else if (!paddress.test(address.value) || address.value == "") {
				alert("Enter address....!");
				address.focus();
				return false;
			}
		} else if (penumber.test(econtact.value) || econtact.value == "") {
			alert("Enter valid phonenumber..!");
			econtact.focus();
			return false;
		}

		/*     else if (!vtime.test(timeofvisit.value =="") {
		alert("Enter a valid time....!");
		timeofvisit.focus();
		return false;
		}  */
		
		return;
	}
</script>

</head>
<body>

	<div class="container">
		<div class="title">Add Prisoner</div>
		<div class="content">
			<form action="Prisonregister.jsp" onsubmit="return validate()"
				method="post">
				<div class="user-details">
					<div class="input-box">
						<span class="details">Full Name</span> <input type="text"
							name="fullname" id="fullname" placeholder="Enter name">
					</div>
					<div class="input-box">
						<span class="details">Age</span> <input type="number" name="age"
							id="age" placeholder="Enter Age">
					</div>
					<div class="input-box">
						<span class="details">ID Number</span> <input type="text"
							name="prisoner_id" id="prisoner_id" placeholder="Enter ID Number">
					</div>
					<div class="input-box">
						<span class="details">Case Number</span> <input type="text"
							name="casenumber" id="casenumber" placeholder="Enter Case Number">
					</div>
					<div class="input-box">
						<span class="details">Enrollment Date</span> <input type="date"
							name="edate" id="edate" placeholder="Date" >
						<script language="javascript">
							var today = new Date();
							var dd = String(today.getDate()).padStart(2, '0');
							var mm = String(today.getMonth() + 1).padStart(2,
									'0');
							var yyyy = today.getFullYear();

							today = yyyy + '-' + mm + '-' + dd;
							$('#edate').attr('min', today);
						</script>
					</div>
					<div class="input-box">
						<span class="details">Release Date</span> <input type="date"
							name="rdate" id="rdate" placeholder="Release Date" >
						<script language="javascript">
							var today = new Date();
							var dd = String(today.getDate()).padStart(2, '0');
							var mm = String(today.getMonth() + 1).padStart(2,
									'0');
							var yyyy = today.getFullYear();

							today = yyyy + '-' + mm + '-' + dd;
							$('#rdate').attr('min', today);
						</script>
					</div>
					<div class="input-box">
						<span class="details">Time Of Enrollment</span> <input type="time"
							name="etime" id="etime" placeholder="Time">
					</div>
					<div class="input-box">
						<span class="details">Other Details</span> <input type="text"
							name="cdetail" id="cdetail" placeholder="Enter Case Details">
					</div>
					<div class="input-box">
						<span class="details">Address</span> <input type="text"
							name="address" id="address" placeholder="Enter Address">
					</div>
					<div class="input-box">
						<span class="details">Emergency Contact</span> <input type="text"
							name="econtact" id="econtact" placeholder="Emergency Contact">
					</div>
				</div>

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
