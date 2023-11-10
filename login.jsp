<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Farm+ Login</title>
    <script src="https://kit.fontawesome.com/f25cce70b4.js" crossorigin="anonymous"></script>
    <style>
        a{
            color: rgb(5, 234, 5);
        }
        body {
            
            font-family: Arial, sans-serif;
            background-color: #101010;
            color: rgb(5, 234, 5);
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .container {
            background-color: rgba(0, 0, 0, 0.7);
            padding: 20px 40px;
            border-radius: 10px;
            box-shadow: 0 0 15px rgb(255, 174, 0);
            width: 300px;
            text-align: center;
        }

        input[type="text"], input[type="password"],input[type="email"],input[type="number"],input[type="option"] {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border: none;
            background-color: rgba(26, 191, 158, 0.1);
            color: #00ffcc;
            border-bottom: 2px solid #00ffcc;
        }

        button {
            padding: 10px 20px;
            border: none;
            background-color: rgb(255, 174, 0);
            color: #101010;
            border-radius: 5px;
            cursor: pointer;
            margin-top: 10px;
        }
        #X:hover{
            box-shadow: 0 0 5px rgb(255, 174, 0),
                        0 0 25px rgb(255, 174, 0),
                        0 0 50px rgb(255, 174, 0);
        }
        button:hover {
            box-shadow:0 0 5px rgb(255, 174, 0),
                        0 0 25px rgb(255, 174, 0),
                        0 0 50px rgb(255, 174, 0),
                        0 0 100px rgb(255, 174, 0),
                        0 0 200px rgb(255, 174, 0);
        }

        .switch {
            margin-top: 20px;
            cursor: pointer;
        }
        input::placeholder {
          color: rgb(5, 234, 5);
        }


    </style>
</head>

<body style="background-image: url(images/imagplus/wheatabc.jpg);background-repeat:no-repeat;background-position:center center; background-size:cover;  background-attachment:fixed;">
    
    <input type="hidden" id="status" value="<%=request.getAttribute("status")%>">
    
    <div class="container" id="X">
        <form method="post" action="FLogin" class="register-form"
							id="register-form">
							<div class="form-group">
								<label for="pass"><i class="fas fa-envelope" style="color: rgb(255, 174, 0);"></i> Enter Email ID</label> 
                                    <input type="email" name="email" placeholder="Email" minlength="3" required>
							</div>
                            <div class="form-group">
								<label for="re-pass"><i class="fas fa-key fa-spin" style="color: rgb(255, 174, 0);"></i> Enter Password</label>
                                    <input type="password" name="password" placeholder="Password" minlength="3" required>
                            </div>        
							<div class="form-group"><br>
								<a href="registration.jsp" class="signup-image-link">Create an
							account</a>
							</div>
							<div class="form-group form-button">
								<button type="submit" name="signup" id="signup"
									class="form-submit" value="Login" >Login</button>
							</div>
						</form>
    </div>
     <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<!-- link rel="stylesheet" href="alert/dist/sweetalert.css">
	 -->	
	 <script type="text/javascript">
	      var status = document.getElementById("status").value;
	      console.log(status);
	      if(status =="failed"){
	    	  swal("Sorry","Entered Email or Password is Incorrect :( ","error")
	      
           }else if(status == "success"){
        	   swal("Congrats","Account Created Successfully","success")
           }	      
	      
	</script>
    <!--   <script>
    function checkPasswordStrength() {
        var password = document.getElementById("password").value;
        var indicator = document.getElementById("password-strength");
        
        // Check password complexity requirements here
        var strongRegex = new RegExp("^(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])(?=.*[!@#\$%\^&\*])(?=.{12,})");
        
        if (strongRegex.test(password)) {
            indicator.textContent = "Strong password!";
            indicator.style.color = "green";
        } else {
            indicator.textContent = "Weak password. Use symbols, numbers, and both uppercase and lowercase letters. Min length: 12 characters.";
            indicator.style.color = "red";
        }
    }

    function checkPasswordMatch() {
        var password = document.getElementById("password").value;
        var confirmPassword = document.getElementById("confirm-password").value;
        var matchIndicator = document.getElementById("password-match");

        if (password === confirmPassword && confirmPassword !== "") {
            matchIndicator.textContent = "Passwords match!";
            matchIndicator.style.color = "green";
        } else {
            matchIndicator.textContent = "Passwords do not match.";
            matchIndicator.style.color = "red";
        }
    }

    document.addEventListener("DOMContentLoaded", function() {
    document.querySelector("form").addEventListener("submit", function(event) {
        var password = document.getElementById("password").value;
        var confirmPassword = document.getElementById("confirm-password").value;

        if (password !== confirmPassword) {
            event.preventDefault();
            alert("Passwords do not match. Please correct them before submitting.");
        }
    });
});

    </script>-->
</body>

</html>

<!-- DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Login</title>

<!-- Font Icon 
<link rel="stylesheet"
	href="fonts/material-icon/css/material-design-iconic-font.min.css">

<!-- Main css 
<link rel="stylesheet" href="css/style.css">
</head>
<body>

	<div class="main">

		<!-- Sing in  Form --
		<section class="sign-in">
			<div class="container">
				<div class="signin-content">
					<div class="signin-image">
						<figure>
							<img src="images/signin-image.jpg" alt="sing up image">
						</figure>
						<a href="registration.jsp" class="signup-image-link">Create an
							account</a>
					</div>

					<div class="signin-form">
						<h2 class="form-title">login</h2>
						<form method="" action="" class="register-form"
							id="login-form">
							<div class="form-group">
								<label for="username"><i
									class="zmdi zmdi-account material-icons-name"></i></label> <input
									type="text" name="username" id="username"
									placeholder="Your Name" required/>
							</div>
							<div class="form-group">
								<label for="password"><i class="zmdi zmdi-lock"></i></label> <input
									type="password" name="password" id="password"
									placeholder="Password" required/>
							</div>
							<div class="form-group">
								<input type="checkbox" name="remember-me" id="remember-me"
									class="agree-term" /> <label for="remember-me"
									class="label-agree-term"><span><span></span></span>Remember
									me</label>
							</div>
							<div class="form-group form-button">
								<input type="submit" name="signin" id="signin"
									class="form-submit" value="Log in" />
							</div>
						</form>
						<div class="social-login">
							<span class="social-label">Or login with</span>
							<ul class="socials">
								<li><a href="#"><i
										class="display-flex-center zmdi zmdi-facebook"></i></a></li>
								<li><a href="#"><i
										class="display-flex-center zmdi zmdi-twitter"></i></a></li>
								<li><a href="#"><i
										class="display-flex-center zmdi zmdi-google"></i></a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</section>

	</div>

	<!-- JS --
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="js/main.js"></script>
</body>
<!-- This templates was made by Colorlib (https://colorlib.com) --
</html-->