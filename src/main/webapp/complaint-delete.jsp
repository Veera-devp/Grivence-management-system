<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

<title>StudentDshboard</title>
</head>
<body>
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
<section>
      <div class="container">
    <center><h3 class="well" >Upload Grivence</h3></center>
    <br/>
	<div class="col-lg-12 well">
	<div class="rowing">
							<div class="col-sm-6 form-group">
								<label>ID number</label>
								<input type="number" placeholder="Enter Id of faculty Here.." class="form-control" id ="df"/>
							</div>
						
						<label id="lbl"></label>
                  <center>
					<button onClick = "del()" type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal">
  Delete
</button>
</center>

                    				
					</div>
				</div>
	</div>
	</div>
      </section>
</body>
<script>
function del()
{
	var xhtml = new XMLHttpRequest();
	var t1 = document.getElementById("df");
	var url = "http://localhost:8080/api/complaint-withdraw/" + t1.value;
	xhtml.open("DELETE", url, true);
	xhtml.setRequestHeader('Content-Type','application/json');
	alert(url);
	var lbl = document.getElementById("lbl");
	alert(lbl);
	xhtml.send();
	
	xhtml.onreadystatechange = function()
	{
		if(this.readyState == 4 && this.status == 200)
			lbl.innerText = this.responseText;
	};
}
</script>
</html>