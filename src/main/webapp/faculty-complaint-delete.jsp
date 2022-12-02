<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page errorPage="error.jsp" %>
    <jsp:include page="faculty_navbar.jsp" /> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

<title>StudentDshboard</title>
</head>
<body onload="usernameDisplay()">

<section>
       <div class="container">
    <center><h3 class="well" >Delete Grivence</h3></center>
    <br/>
	<div class="col-lg-12 well">
	<div class="rowing">
							<div class="col-sm-6 form-group">
								<label>Username</label>
								<input type="text" disabled placeholder="Enter Username of faculty Here.." class="form-control" id ="df"/>
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
function usernameDisplay()
{
	var username=sessionStorage.getItem("username");
	var u=document.getElementById("df");
	u.value=username;
}
function del()
{
	var xhtml = new XMLHttpRequest();
	var user=sessionStorage.getItem("username");alert(user);
	var url = "http://localhost:8080/api/faculty-complaint-withdraw/" + user;
	xhtml.open("DELETE", url, true);
	xhtml.setRequestHeader('Content-Type','application/json');
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