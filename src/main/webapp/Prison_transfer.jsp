<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="UTF-8">
    <!---<title> Responsive Registration Form | CodingLab </title>--->
    <link rel="stylesheet" href="formstyle.css">
     <meta name="viewport" content="width=device-width, initial-scale=1.0">
   </head>
<body>
  <div class="container">
    <div class="title">Prison Transfer</div>
    <div class="content">
      <form action="#">
        <div class="user-details">
          <div class="input-box">
            <span class="details">Full Name</span>
            <input type="text" placeholder="Enter your name" required>
          </div>
          <div class="input-box">
            <span class="details">Age</span>
            <input type="number" placeholder="Enter Age" required>
          </div>
          <div class="input-box">
            <span class="details">Case Number</span>
            <input type="text" placeholder="Enter Case Number" required>
          </div>    
          <div class="input-box">
            <span class="details">Current Location</span>
            <input type="text" placeholder="Current Location" required>
          </div>
          <div class="input-box">
            <span class="details">Transfer To</span>
            <input type="text" placeholder="Transfer To" required>
          </div>
          <div class="input-box">
            <span class="details">Transfer Date</span>
            <input type="date" placeholder="Transfer Date" required>
          </div>
        </div>
        <div class="gender-details">
          <input type="radio" name="gender" id="dot-1">
          <input type="radio" name="gender" id="dot-2">
          <input type="radio" name="gender" id="dot-3">
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
