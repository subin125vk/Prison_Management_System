
let passwordInput = document.getElementById("txtPassword"),
  toggle = document.getElementById("btnToggle"),
  icon = document.getElementById("eyeIcon");

function togglePassword() {
  if (passwordInput.type === "password") {
    passwordInput.type = "text";
    icon.classList.add("fa-eye-slash");
    //toggle.innerHTML = 'hide';
  } else {
    passwordInput.type = "password";
    icon.classList.remove("fa-eye-slash");
    //toggle.innerHTML = 'show';
  }
}

function checkInput() {
  //if (passwordInput.value === '') {
  //toggle.style.display = 'none';
  //toggle.innerHTML = 'show';
  //  passwordInput.type = 'password';
  //} else {
  //  toggle.style.display = 'block';
  //}
}

toggle.addEventListener("click", togglePassword, false);
passwordInput.addEventListener("keyup", checkInput, false);

$("#submit_form").click(function() {
  var passwordregex = /^(.{0,7}|[^0-9]*|[^A-Z]*|[a-zA-Z0-9]*)$/;
  var emailRegex = new RegExp(
    /^(("[\w-\s]+")|([\w-]+(?:\.[\w-]+)*)|("[\w-\s]+")([\w-]+(?:\.[\w-]+)*))(@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$)|(@\[?((25[0-5]\.|2[0-4][0-9]\.|1[0-9]{2}\.|[0-9]{1,2}\.))((25[0-5]|2[0-4][0-9]|1[0-9]{2}|[0-9]{1,2})\.){2}(25[0-5]|2[0-4][0-9]|1[0-9]{2}|[0-9]{1,2})\]?$)/i
  );
 
  var email = $.trim($("#email").val());
  var Password = $.trim($("#txtPassword").val());

  $("#txtPassword_error").html("");
  $("#email_error").html("");
   if (email == "") {
    $("#email").focus();
    $("#email_error").show();
    $("#email_error").html("Please Enter Email");
    return false;
  } else if (!email.match(emailRegex)) {
    $("#email").focus();
    $("#email_error").show();
    $("#email_error").html("Enter Valid Email");
    return false;
  } else if (Password == "") {
    $("#txtPassword").focus();
    $("#txtPassword_error").show();
    $("#txtPassword_error").html("Please Enter Password");
    return false;
  } else if (Password.match(passwordregex)) {
    $("#txtPassword-field").focus();
    $("#txtPassword_error").show();
    $("#txtPassword_error").html(
      "Incorrect username or password"
    );
    return false;
  } 
});