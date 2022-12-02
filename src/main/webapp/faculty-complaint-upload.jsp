<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page errorPage="error.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

<title>Faculty-complaint-Upload</title>
</head>
<body onload="login()">
<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" href="#">FacultyDashboard</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item">
        <a class="nav-link" href="#">Profile</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="login">Logout</a>
      </li>
      
    </ul>
    <ul class = "navbar-nav ml-auto">
    <li class="nav-item">
      <a href="#" class="nav-link" id="t1"></a>
      </li>
    </ul>
  </div>
</nav>
	<br/>
	<br/>
	 <section>
      <div class="container">
    <center><h3 class="well" >Upload Grivence</h3></center>
    <br/>
	<div class="col-lg-12 well">
	<div class="rowing">
				<form>
					<div class="col-sm-12">
						<div class="row">
						<div class="col-sm-6 form-group">
								<label>Student Id</label>
								<input type="number" placeholder="Enter Id of Student Here.." class="form-control" id ="tie1"/>
							</div>
							<div class="col-sm-6 form-group">
								<label>Name of Student</label>
								<input type="text" placeholder="Enter Name Here.." class="form-control" id ="t2"/>
							</div>
							<div class="col-sm-6 form-group">
								<label>student mail</label>
								<input type="email" placeholder="Enter mail Here.." class="form-control" id ="t3"/>
							</div>
							<div class="form-group">
							<label>Issue on student</label>
							<textarea placeholder="Enter your issue" rows="3" class="form-control"id ="t4"></textarea>
						</div>
						</div>
						<label id="lbl"></label>
                  <center>
					<button onClick = "insert()" type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal">
  Submit
</button>
</center>

                    				
					</div>
				</form> 
				</div>
	</div>
	</div>
      </section>
<br/>
<br/>
<br/>
<br/>
	
</body>
<script>
function insert()
{
  var xhtml = new XMLHttpRequest();
  var url = "http://localhost:8080/api/faculty-complaint-register";
  xhtml.open("POST", url, true);
  xhtml.setRequestHeader('Content-Type','application/json');
  
  var t1 = document.getElementById("tie1");
  var t2 = document.getElementById("t2");
  var t3 = document.getElementById("t3");
  var t4 = document.getElementById("t4");
  var person=sessionStorage.getItem("username");
  
  alert(t1.value);
  
  xhtml.send(JSON.stringify({
    sid : t1.value,
    name : t2.value,
    smail : t3.value,
    issue : t4.value,
    username : person
  }));
  
  xhtml.onreadystatechange = function()
  {
    if(this.readyState == 4 && this.status == 200)
      lbl.innerText = this.responseText;
  };
}
</script>
</script>
</html>