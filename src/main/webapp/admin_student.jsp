<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ page errorPage="error.jsp" %>
	<jsp:include page="admin_navbar.jsp" /> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<link rel="stylesheet" href="../static/css/table.css">
<title>Admin-dashboard</title>
</head>
<body>
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
					+ "<td>" + data[x].fid + "</td>"+ 
					"<td>" + data[x].fmail + "</td>"+ 
					"<td>" + data[x].branch + "</td>" +
					"<td>" + data[x].dep + "</td>" +
					"<td>" + data[x].hid + "</td>"+
					"<td>" + data[x].hmail + "</td>"+
					"<td>" + data[x].issue + "</td>"+
					"<td>" + data[x].username + "</td>"+
					"<td>"+"<a href=complaint_edit.jsp?fid="+data[x].username+">edit</a>"+"</td>"+
					"<td>"+"<a href=remove.jsp?fid="+data[x].username+">remove</a>"+"</td>"+
					"<td>"+"<a href=http://localhost:8000/>Resolve</a>"+"</td>"+"</tr>";
					i++;
					
				}
				table = table + "</table>";
				display.innerHTML = table;
			}
		};
	</script>
</body>
</html>