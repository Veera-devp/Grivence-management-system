<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page errorPage="error.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

<title>Stuent-complaint-Upload</title>
</head>
<body onload="login()">
<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" href="#">UserDashboard</a>
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
								<label>ID number</label>
								<input type="number" placeholder="Enter Id of faculty Here.." class="form-control" id ="ras"/>
							</div>
							<div class="col-sm-6 form-group">
								<label>Name of faculty</label>
								<input type="text" placeholder="Enter Name Here.." class="form-control" id ="t2"/>
							</div>
							
						</div>					
							
						<div class="row">
							<div class="col-sm-4 form-group">
								<label>Branch</label>
								<input type="text" placeholder="Enter Branch Here.." class="form-control" id ="t3"/>
							</div>	
							<div class="col-sm-4 form-group">
								<label>Department</label>
								<input type="text" placeholder="Enter Department Here.." class="form-control"id ="t4"/>
							</div>	
							<div class="col-sm-4 form-group">
								<label>Section</label>
								<input type="text" placeholder="Enter your section Here.." class="form-control" id ="t5"/>
							</div>		
						</div>
						<div class="row">
							<div class="col-sm-6 form-group">
								<label>Faculty mail</label>
								<input type="email" placeholder="Enter your faculty mail Here.." class="form-control" id ="t6"/>
							</div>		
							<div class="col-sm-6 form-group">
								<label>HOD name</label>
								<input type="text" placeholder="Enter HOD Name Here.." class="form-control" id ="t7"/>
							</div>	
						</div>						
					<div class="form-group">
						<label>HOD ID</label>
						<input type="number" placeholder="Enter hod id Here.." class="form-control" id ="t8"/>
					</div>		
					<div class="form-group">
						<label>HOD Email Address</label>
						<input type="email" placeholder="Enter hod Email Address Here.." class="form-control" id ="t9"/>
					</div>	
					<div class="form-group">
							<label>Issue</label>
							<textarea placeholder="Enter your issue" rows="3" class="form-control"id ="t10"></textarea>
						</div>
						<br/>
						<br/>
						<label id="lbl"></label>
                  <center>
					<button onClick = "save()" type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal">
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
function login()
{
	var lbl=document.getElementById("t1");
	var person=sessionStorage.getItem("username");
	lbl.innerText=person;
}
function save()
{
  var xhtml = new XMLHttpRequest();
  var url = "http://localhost:8080/api/complaint-register";
  xhtml.open("POST", url, true);
  xhtml.setRequestHeader('Content-Type','application/json');
  //var person=sessionStorage.getItem("username");
  var t1 = document.getElementById("ras");
  var t2 = document.getElementById("t2");
  var t3 = document.getElementById("t3");
  var t4 = document.getElementById("t4");
  var t5 = document.getElementById("t5");
  var t6 = document.getElementById("t6");
  var t7 = document.getElementById("t7");
  var t7 = document.getElementById("t8");
  var t7 = document.getElementById("t9");
  var t7 = document.getElementById("t10");
  var lbl = document.getElementById("lbl");
  var person=sessionStorage.getItem("username");
  
  xhtml.send(JSON.stringify({
    fid : ras.value,
    fname : t2.value,
    branch : t3.value,
    dep : t4.value,
    section : t5.value,
    fmail : t6.value,
    hname : t7.value,
    hid : t8.value,
    hmail : t9.value,
    issue : t10.value,
    username : person
  }));
  
  xhtml.onreadystatechange = function()
  {
    if(this.readyState == 4 && this.status == 200)
      lbl.innerText = this.responseText;
      setTimeout(function()
      {
          window.location="http://localhost:8080/student-dashboard";
      },3000);
  };
}
function insert()
{
  var xhtml = new XMLHttpRequest();
  var url = "http://localhost:8080/api/complaint-register";
  xhtml.open("POST", url, true);
  xhtml.setRequestHeader('Content-Type','application/json');
  
  var t1 = document.getElementById("t1");
  var t2 = document.getElementById("t2");
  var t3 = document.getElementById("t3");
  var t4 = document.getElementById("t4");
  var t5 = document.getElementById("t5");
  var t6 = document.getElementById("t6");
  var t7 = document.getElementById("t7");
  var t8 = document.getElementById("t8");
  var t9 = document.getElementById("t9");
  var t10 = document.getElementById("t10");
  

  xhtml.send(JSON.stringify({
	  fid : t1.value,
	    fname : t2.value,
	    branch : t3.value,
	    dep : t4.value,
	    section : t5.value,
	    fmail : t6.value,
	    hname : t7.value,
	    hid : t8.value,
	    hmail : t9.value,
	    issue : t10.value,
    
  }));
  
  xhtml.onreadystatechange = function()
  {
    if(this.readyState == 4 && this.status == 200)
      lbl.innerText = this.responseText;
  };
}
</script>
</html>