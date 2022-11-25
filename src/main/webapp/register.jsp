<!doctype html>
<html lang="zxx">

<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<title>Register Page</title>
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
								<a href="services" class="nav-link">Services</a>
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
    <section>
        <body id="LoginForm">
            <div class="container2">
            <div class="login2-form">
            <div class="main-div">
                <div class="panel">
               <h1>Register</h1>
               <p>Please fill your details</p>
               </div>
                
                    
                    <div class="form-group">
                        <input type="text" class="form-control" name="username" placeholder="Username" id="t1" required/>
                    </div>
                    <div class="form-group">
                        <input type="password" class="form-control" name="password" placeholder="Password" id="t2" required>
                     </div>
                     <div class="form-group">
                        <input type="text" class="form-control" name="id" placeholder="Id" id="t3" required/>
                    </div>
                     <div class="form-group">
                        <input type="email" class="form-control" name="email" placeholder="Email Address" id="t5"required/>
                    </div>
                    <div class="form-group">
                        <input type="text" class="form-control" name="name" placeholder="Name" id="t6" required/>
                    </div>
                    <div class="form-group">
                        <input type="tel" class="form-control" name="phoneno" placeholder="Phone No" id="t7" required/>
                    </div>
                    <button onClick = "save()" class="btn btn-primary">Sign up</button>
                    <label id="lbl"></label>
                    <br/>
                    <br/>
                    <div class="forgot">
                    <a href="login"><center>Already Registered? Login Now</center></a>
                    </div>
                    <div class="forgot">
                    <a href="adminLogin"><center>Admin Login</center></a>
                    </div>
                
                </div>
            
            </div></div></div> 
    </section>  
    <footer class="w-100 py-4 flex-shrink-0">
		<div class="container py-4">
			<div class="row gy-4 gx-5">
				<div class="col-lg-4 col-md-6">
					<h5 class="h1 text-white">AceJob</h5>
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
    function save()
    {
      var xhtml = new XMLHttpRequest();
      var url = "http://localhost:8080/api/insert";
      xhtml.open("POST", url, true);
      xhtml.setRequestHeader('Content-Type','application/json');
      
      var t1 = document.getElementById("t1");
      var t2 = document.getElementById("t2");
      var t3 = document.getElementById("t3");
      var t4 = document.getElementById("t4");
      var t5 = document.getElementById("t5");
      var t6 = document.getElementById("t6");
      var t7 = document.getElementById("t7");
      var lbl = document.getElementById("lbl");
      
      xhtml.send(JSON.stringify({
        username : t1.value,
        password : t2.value,
        id : t3.value,
        email : t5.value,
        name : t6.value,
        phone : t7.value,
      }));
      
      xhtml.onreadystatechange = function()
      {
        if(this.readyState == 4 && this.status == 200)
          lbl.innerText = this.responseText;
          setTimeout(function()
          {
              window.location="http://localhost:8080/login";
          },3000);
      };
    }
    function insert()
    {
      var xhtml = new XMLHttpRequest();
      var url = "http://localhost:8080/api/insert";
      xhtml.open("POST", url, true);
      xhtml.setRequestHeader('Content-Type','application/json');
      
      var t1 = document.getElementById("t1");
      var t2 = document.getElementById("t2");
      var t5 = document.getElementById("t5");
      

      xhtml.send(JSON.stringify({
        username : t1.value,
        password : t2.value,
        email : t5.value,
        
      }));
      
      xhtml.onreadystatechange = function()
      {
        if(this.readyState == 4 && this.status == 200)
          lbl.innerText = this.responseText;
      };
    }
    function login()
    {
    var xhtml = new XMLHttpRequest();
      var user = document.getElementById("t1");
      var password = document.getElementById("t2");

      var url = "http://localhost:8080/api/login/" + user.value + "/" + password.value + "/";
      xhtml.open("POST", url, true);
      xhtml.setRequestHeader('Content-Type','application/json');
      xhtml.send();

      var display = document.getElementById("niku");

      xhtml.onreadystatechange = function()
      {
        if(this.readyState == 4 && this.status == 200)
          display.innerText = this.responseText;
      };
    }
    </script>
    </html>