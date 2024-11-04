<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="UTF-8">
    <!---<title> Responsive Registration Form | CodingLab </title>--->
    <link rel="stylesheet" href="formstyle.css">
     <meta name="viewport" content="width=device-width, initial-scale=1.0">
          <script type="text/javascript">
	function validate() {
		var sname = /^[a-z A-Z]+$/;
		var sage = /^[0-9]*$/;
        var sdept=/^[a-z A-Z]+$/;
		var sid=/^[0-9]*$/;
		var snumber = /^[6-9]\d{9}$/;
		var saddress = /^[a-z A-Z]+$/;
	

		var fullname = document.getElementById("fullname");
		var age = document.getElementById("age");
		var department = document.getElementById("department");
		var staff_id = document.getElementById("staff_id");
		var phonenumber = document.getElementById("phonenumber");
		 var address = document.getElementById("address");
 
		if (!sname.test(fullname.value) || fullname.value == "") {
			alert("Enter your Full name, alphabets only..!");
			fullname.focus();
			return false;
		} else if (!sage.test(age.value)
				|| age.value == "") {
			alert("input age..!");
			age.focus();
			return false;
		} else if (!sdept.test(department.value) || department.value == "") {
			alert("Enter department....!");
			department.focus();
			return false;
		}else if (!sid.test(staff_id.value) || staff_id.value == "") {
			alert("Enter staff id....! numbers only");
			staff_id.focus();
			return false;
		} 
		else if (!snumber.test(phonenumber.value) || phonenumber.value == "") {
			alert("Enter valid phonenumber..!");
			phonenumber.focus();
			return false;
		}

		/*     else if (!vtime.test(timeofvisit.value =="") {
		alert("Enter a valid time....!");
		timeofvisit.focus();
		return false;
		}  */
		else if (!saddress.test(address.value) || address.value == "") {
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
    <div class="title">Add Staff</div>
    <div class="content">
      <form action="Add_staff_form.jsp" onsubmit="return validate()" method="post">
        <div class="user-details">
          <div class="input-box">
            <span class="details">Full Name</span>
            <input type="text" name="fullname" id="fullname" placeholder="Enter your name" >
          </div>
          <div class="input-box">
            <span class="details">Age</span>
            <input type="number" name="age" id="age" placeholder="Enter Age" >
          </div>
          <div class="input-box">
            <span class="details">Department</span>
            <input type="text" name="department" id="department" placeholder="Enter Department" >
          </div>
          <div class="input-box">
            <span class="details">ID Number</span>
            <input type="text" name="staff_id" id="staff_id" placeholder="Enter ID Number" >
          </div>
          <div class="input-box">
            <span class="details">Phone Number</span>
            <input type="text" name="phonenumber" id="phonenumber" placeholder="Enter Phone Number" >
          </div>
          
          <div class="input-box">
            <span class="details">Address</span>
            <input type="text" name="address" id="address" placeholder="Enter Address" >
          </div>
        </div>
        <div class="gender-details">
          <input type="radio" name="gender" value="Male" id="dot-1" checked>
          <input type="radio" name="gender" value="Female" id="dot-2">
          <input type="radio" name="gender" value="Prefer Not To Say" id="dot-3">
          <span class="gender-title">Gender</span>
          <div class="category">
            <label for="dot-1">
            <span class="dot one"></span>
            <span class="gender">Male</span>
          </label>
          <label for="dot-2">
            <span class="dot two"></span>
            <span class="gender">Female</span>
          </label>
          <label for="dot-3">
            <span class="dot three"></span>
            <span class="gender">Prefer not to say</span>
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
