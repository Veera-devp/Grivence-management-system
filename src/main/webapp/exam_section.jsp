<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

<title>Exam Section</title>
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" href="#">Student1Dashboard</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item">
        <a class="nav-link" href="/student-dashboard/profile-details">Profile</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="login">Logout</a>
      </li>
      
    </ul>
    <ul class = "navbar-nav ml-auto">
    <li class="nav-item">
      <a href="#" class="nav-link" id="iop"></a>
      </li>
    </ul>
  </div>
</nav>
</br>
</br>
<section>
      <div class="container">
    <center><h3 class="well" >Raise Ticket</h3></center>
<div class="col-lg-12 well">
<div class="rowing">
<form>

  <div class="form-group">
    <label>ID</label>
    <input type="number" class="form-control" id="kas" placeholder="Enter Id">
    
  </div>
  <div class="form-group">
    <label>name</label>
    <input type="text" class="form-control" id="t2" placeholder="Enter Name">
    
  </div>
  <div class="form-group">
    <label>Email</label>
    <input type="email" class="form-control" id="t3" placeholder="Enter mail">
    
  </div>
  <div class="form-group">
    <label for="inputState">Sem</label>
      <select id="t4" class="form-control">
        <option selected>Choose your current sem</option>
        <option>1</option>
        <option>2</option>
      </select>
    
  </div>
  <div class="form-group">
    <label >Year</label>
      <select id="t5" class="form-control">
        <option selected>Choose your current year</option>
        <option>1</option>
        <option>2</option>
        <option>3</option>
        <option>4</option>
      </select>
    
  </div>
  <div class="form-group">
    <label>Course Code</label>
    <input type="text" class="form-control" id="t6" placeholder="Enter course code">
    
  </div>
  <div class="form-group">
    <label>COurse Full name</label>
    <input type="text" class="form-control" id="t7" placeholder="Enter course name">
    
  </div>
  <div class="form-group">
    <label >Issue</label>
      <select id="t8" class="form-control">
        <option selected>Select Your Issue</option>
        <option>Hall ticket Probelem</option>
        <option>Internals Issue</option>
        <option>End Sem Fee Issue</option>
        <option>Condanation Payment Issue</option>
        <option>Lab Exam Related Issue</option>
      </select>
    
  </div>
   <div class="form-group">
    <label>Other Issues</label>
    <textarea class="form-control" id="t9" rows="3"></textarea>
  </div>
  <button onClick = "save()" type="submit" class="btn btn-primary">Submit</button>
</form>
</div>
</div>
</div>
</section>
</body>
<script type="text/javascript">
function save()
{
  var xhtml = new XMLHttpRequest();
  
  var url = "http://localhost:8080/api/exam-section";
  xhtml.open("POST", url, true);
  xhtml.setRequestHeader('Content-Type','application/json');
  //var person=sessionStorage.getItem("username");
  var t1 = document.getElementById("kas");
  var t2 = document.getElementById("t2");
  var t3 = document.getElementById("t3");
  var t4 = document.getElementById("t4");
  var t5 = document.getElementById("t5");
  var t6 = document.getElementById("t6");
  var t7 = document.getElementById("t7");
  var t7 = document.getElementById("t8");
  var t7 = document.getElementById("t9");
  var lbl = document.getElementById("lbl");
  var person=sessionStorage.getItem("username");
  
  xhtml.send(JSON.stringify({
    id : kas.value,
    name : t2.value,
    email : t3.value,
    sem : t4.value,
    year : t5.value,
    ccode : t6.value,
    cname : t7.value,
    issue : t8.value,
    issue2 : t9.value,
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
</script>
</html>