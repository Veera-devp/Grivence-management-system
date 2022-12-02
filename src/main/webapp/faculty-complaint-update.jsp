<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page errorPage="error.jsp" %>
    <jsp:include page="faculty_navbar.jsp" /> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

<title>FacultyDshboard</title>
</head>
<body>
<section>
      <div class="container">
    <center><h3 class="well" >Update Grivence</h3></center>
    <br/>
	<div class="col-lg-12 well">
	<div class="rowing">
					<div class="form-group">
							<label>Issue</label>
							<textarea placeholder="Enter your issue" rows="3" class="form-control"id ="t3"></textarea>
						</div>
						<br/>
						<br/>
						<label id="lbl"></label>
                  <center>
					<button onClick = "update()" type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal">
  Update
</button>
</center>

                    				
					</div>
				</div>
	</div>
	</div>
      </section>
</body>
<script>
function update()
{
	var xhtml = new XMLHttpRequest();
	var t3 = document.getElementById("t3");
	var lbl = document.getElementById("lbl");
	var user=sessionStorage.getItem("username");
	alert(user);
	var url = "http://localhost:8080/api/faculty-complaint-update/"+user;
	xhtml.open("PUT", url, true);
	xhtml.setRequestHeader('Content-Type','application/json');
	xhtml.send(JSON.stringify({
		issue : t3.value,
	}));
	
	xhtml.onreadystatechange = function()
	{
		if(this.readyState == 4 && this.status == 200)
			lbl.innerText = "Data Updated Successfully...!";
	};
}
</script>
</html>