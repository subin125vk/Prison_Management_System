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
		var jname = /^[a-z A-Z]+$/;
		var jid = /^[a-z A-Z]+$/;
		var jage = /^[1-9]?[0-9]{1}$|^58$/
		
		/* var vtime = ;*/
		var jnumber =/^\(?([0-9]{3})\)?[-. ]?([0-9]{3})[-. ]?([0-9]{4})$/;
 		var jemail=/^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$/;
 		var jpassword= /^[A-Z a-z 0-9 !@#$%&*()<>]{6,12}$/;


		
		var fullname = document.getElementById("fullname");
		var jailor_id = document.getElementById("jailor_id");
		var age = document.getElementById("age");
		/*            var timeofvisit = document.getElementById("timeofvisit");*/
		var phonenumber = document.getElementById("phonenumber");
/* 		var email=document.getElementById("email");
 */		var txtpassword=document.getElementById("txtpassword");
		
		
		if (!jname.test(fullname.value) || fullname.value == "") {
			alert("Enter your Full name, alphabets only..!");
			fullname.focus();
			return false;
		} else if (!jid.test(jailor_id.value) || jailor_id.value == "") {
			alert("Enter jailor id....!");
			jailor_id.focus();
			return false;
			
		} else if (!jage.test(age.value) || age.value == "") {
			alert("Enter age!");
			age.focus();
			return false;}
		
		/* } else if (!pcasen.test(casenumber.value) || casenumber.value == "") {
			alert("Enter valid casenumber..!");
			casenumber.focus();
			return false;
		}  */
		 else if (!jnumber.test(phonenumber.value) || phonenumber.value == "") {
			alert("Enter valid phonenumber..!");
			phonenumber.focus();
			return false;
		}
		 else if (!jemail.test(email.value) || email.value == "") {
			alert("Enter valid email!");
			email.focus();
			return false;}
		else if (!jpassword.test(txtpassword.value) || txtpassword.value == "") {
				alert("Password must have atleast one special character number and characters....!");
				txtpassword.focus();
				return false;
			}  
		/*  else if(!jpassword.test(txtpassword.value)||txtpassword.value==""){
			 alert("abc");
			 txtpassword.focus();
			 return false;}
		 } */
		return;
	}
</script>
   </head>
<body>
  <div class="container">
    <div class="title">Add Jailor</div>
    <div class="content">
			<form action="Jailor_register.jsp" method="post" onsubmit="return validate()">
        <div class="user-details">
          <div class="input-box">
            <span class="details">Full Name</span>
            <input type="text" name="fullname" id="fullname" placeholder="Enter your name" >
          </div>
          <div class="input-box">
            <span class="details">ID Number</span>
            <input type="text" name="jailor_id" id="jailor_id" placeholder="Enter ID Number" >
          </div>
           <div class="input-box">
            <span class="details">Age</span>
            <input type="number" name="age" id="age" placeholder="Enter Age" >
          </div>
            <div class="input-box">
            <span class="details">DOB</span>
            <input type="date" name="dob" id="dob" placeholder="DOB" >
             <script language="javascript">
            var today = new Date();
            var dd = String(today.getDate()).padStart(2, '0');
            var mm = String(today.getMonth() + 1).padStart(2, '0');
            var yyyy = today.getFullYear();

            today = yyyy + '-' + mm + '-' + dd;
            $('#dob').attr('min',today);
        </script>
          </div>
          <div class="input-box">
            <span class="details">Phone Number</span>
            <input type="text" name="phonenumber" id="phonenumber" placeholder="Enter Phone Number" >
          </div>
          <div class="input-box">
            <span class="details">Email</span>
            <input type="Email" name="email" id="email" placeholder="Enter Email id" >
          </div>
          <!-- <div class="input-box">
            <span class="details">Username</span>
            <input type="text" name="username" id="password" placeholder="Enter Username" required>
          </div> -->
            <div class="input-box">
            <span class="details">Password</span>
            <input type="password" name="txtpassword" id="txtpassword" placeholder="Enter Password" >
          </div>
           
        </div>
        <div class="gender-details">
          <input type="radio" name="gender" value="Male" id="dot-1">
          <input type="radio" name="gender" value="Female" id="dot-2">
          <input type="radio" name="gender" value="Prefer not to say" id="dot-3">
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
