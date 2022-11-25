<!doctype html>
<html lang="zxx">

<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<title>Login Page</title>
	<link href="https://fonts.googleapis.com/css2?family=Cabin:wght@400;500;600;700&display=swap" rel="stylesheet">
	<link rel="stylesheet" href="static/css/other/bootstrap.min.css">
	<link rel="stylesheet" href="static/css/style.css">
	<link rel="stylesheet" href="static/css/other/responsive.css">
	<link rel="stylesheet" href="static/css/home.css">
	<link rel="stylesheet" href="static/css/cards.css">
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<link href="static/css/login.css" rel="stylesheet" >
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</head>
<body>
	<div class="navbar-area">
		<div class="navbar-navy index-navber">
			
			<div class="container">
				<nav class="navbar navbar-expand-md navbar-light">
					<a class="navbar-brand" href="index.html">
						<h3 text="bold">InstaGrive</h3>
					</a>
					<div class="collapse navbar-collapse mean-menu" id="navbarSupportedContent">
						<ul class="navbar-nav">
							<li class="nav-item"> 
								<a href="/" class="nav-link">Home</a>
							</li>
							<li class="nav-item">
								<a href="about" class="nav-link">About Us</a>
							</li>
							<li class="nav-item">
								<a href="service" class="nav-link">Services</a>
							</li>
						</ul>
						<div class="other-option">
							<a class="default-btn nav-btn-1" href="login">Log In <span></span></a>
							<a class="default-btn" href="register">Register <span></span></a>
						</div>
					</div>
				</nav>
			</div>
		</div>
	</div>
	<br/><br/><br/>
    <section>
        <div class="login-form">
        <div class="main-div">
            <div class="panel">
           <h1>Login</h1>
           <p>Please enter your email and password</p>
           </div>
            
                <div class="form-group">
                    <input type="text" class="form-control" name="username" placeholder="Username" id="t1" required>
                </div>
        
                <div class="form-group">
                    <input type="password" class="form-control" name="password" placeholder="Password" id="t2" required>
                </div>
                
                <button onClick = "login()" class="btn btn-primary">Login</button>
                <br/>
                <br/>
                <label id="lbl"></label>
                <br/>
                <br/>
                <div class="forgot">
                <a href="register"><center>Not Registered? Register Now</center></a>
                </div>
                <div class="forgot">
                <a href="adminLogin"><center>Admin Login</center></a>
                </div>
            
            </div>
        
        </div></div>
    </section>  
    <footer class="w-100 py-4 flex-shrink-0">
		<div class="container py-4">
			<div class="row gy-4 gx-5">
				<div class="col-lg-4 col-md-6">
					<h5 class="h1 text-white">InstaGrive</h5>
					<p class="small text-muted">Copyright notices are not required by law. However, having one helps protect your creative content so you should have one even though not required.</p>
					<p class="small text-muted mb-0">&copy; Copyrights. All rights reserved. <a class="text-primary" href="#">AceJob.com</a></p>
				</div>
				<div class="col-lg-2 col-md-6">
					<h5 class="text-white mb-3">Quick links</h5>
					<ul class="list-unstyled text-muted">
						<li><a href="#">Home</a></li>
						<li><a href="#">About</a></li>
						<li><a href="#">Services</a></li>
						<li><a href="#">Contact</a></li>
						<li><a href="#">Login</a></li>
					</ul>
				</div>
				<div class="col-lg-2 col-md-6">
					<h5 class="text-white mb-3">FAQ's</h5>
					<ul class="list-unstyled text-muted">
						<li><a href="#">Contact manager</a></li>
						<li><a href="#">KL University</a></li>
						<li><a href="#">Vaddeshwaram</a></li>
						<li><a href="#">Guntur</a></li>
						<li><a href="#">Andhra Pradesh</a></li>
					</ul>
				</div>
				<div class="col-lg-4 col-md-6">
					<h5 class="text-white mb-3">Newsletter</h5>
					<p class="small text-muted">Further any help or any suggesstion to give you can dropdown your name and your Quires</p>
					<form action="#">
						<div class="input-group mb-3">
							<input class="form-control" type="text" placeholder="Recipient's username" aria-label="Recipient's username" aria-describedby="button-addon2"></input>
							
						</div>
					</form>
				</div>
			</div>
		</div>
	</footer>
    </body>
    <script>
    function login()
    {
      var xhtml = new XMLHttpRequest();
      var user = document.getElementById("t1");
      var password = document.getElementById("t2");

      var url = "http://localhost:8080/api/login/" + user.value + "/" + password.value + "/";
      xhtml.open("POST", url, true);
      xhtml.setRequestHeader('Content-Type','application/json');
      xhtml.send();

      var display = document.getElementById("lbl");

      xhtml.onreadystatechange = function()
      {
        if(this.readyState == 4 && this.status == 200)
          display.innerText = this.responseText;
          if(this.responseText=="Login success")
          {
        	  setTimeout(function()
        	  {
        	        window.location="http://localhost:8080/student-dashboard";
        	  },3000);
  		      sessionStorage.setItem("username",user.value);
          }
      };
    }
    </script>
    </html>