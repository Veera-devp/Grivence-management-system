<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

<title>Admin-dashboard</title>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" href="#">AdminDashboard</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item">
        <a class="nav-link" href="#">Profile</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="adminLogin">Logout</a>
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
<center>
<div id="display"/>
</center>
	<script>
		var xhtml = new XMLHttpRequest();
		var url="http://localhost:8080/api/complaint-register";
		xhtml.open("GET", url, true);
		xhtml.setRequestHeader('Content-Type', 'application/json');

		xhtml.send();

		var display = document.getElementById("display");

		xhtml.onreadystatechange = function() {
			if (this.readyState == 4 && this.status == 200) {
				var table = "<table border='1'>";
				var i = 0;
				table += "<tr>  <th>S.no</th> <th>Faculty-id</th> <th>Faculty-mail</th> <th>Branch</th> <th>Department</th> <th>Department HOD id</th> <th>Hod mail</th> <th>Complaint</th> <th>Username</th> </tr>";
				var data = JSON.parse(this.responseText);
				for ( var x in data) {
					table = table + "<tr>" + "<td>"+ (i+1) +"</td>"
					+ "<td>" + data[x].fid + "</td>"+ "<td>" + data[x].fmail + "</td>"+ "<td>" + data[x].branch + "</td>" +"<td>" + data[x].dep + "</td>" +"<td>" + data[x].hid + "</td>"+"<td>" + data[x].hmail + "</td>"+"<td>" + data[x].issue + "</td>"+"<td>" + data[x].username + "</td>"+"<td>"+"<a href=admin-update.jsp?fid="+data[x].fid+">edit</a>"+"</td>"+"<td>"+"<a href=admin-delete.jsp?fid="+data[x].fid+">remove</a>"+"</td>"+"</tr>";
					i++;
					
				}
				table = table + "</table>";
				display.innerHTML = table;
			}
		};
	</script>
</body>
</html>