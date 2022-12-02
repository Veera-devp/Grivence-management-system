<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ page errorPage="error.jsp" %>
	<jsp:include page="admin_navbar.jsp" /> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

<title>Admin-dashboard</title>
</head>
<body>
<center>
<div id="display"/>
</center>
	<script>
		var xhtml = new XMLHttpRequest();
		
		var url="http://localhost:8080/api/faculty-complaint-register";
		xhtml.open("GET", url, true);
		xhtml.setRequestHeader('Content-Type', 'application/json');

		xhtml.send();

		var display = document.getElementById("display");

		xhtml.onreadystatechange = function() {
			if (this.readyState == 4 && this.status == 200) {
				var table = "<table border='1'>";
				var i = 0;
				table += "<tr>  <th>S.no</th> <th>Student-id</th> <th>Student-name</th> <th>student name</th> <th>issue</th> <th>Username</th> </tr>";
				var data = JSON.parse(this.responseText);
				for ( var x in data) {
					table = table + "<tr>" + "<td>"+ (i+1) +"</td>"
					+ "<td>" + data[x].sid + "</td>"+ 
					"<td>" + data[x].name + "</td>"+ 
					"<td>" + data[x].smail + "</td>" +
					"<td>" + data[x].issue + "</td>" +
					"<td>" + data[x].username + "</td>"+
					"<td>"+"<a href=faculty_edit.jsp?username="+data[x].username+">edit</a>"+"</td>"+
							"<td>"+"<a href=remove.jsp?username="+data[x].username+">remove</a>"+"</td>"+"</tr>";
					i++;
					
				}
				table = table + "</table>";
				display.innerHTML = table;
			}
		};
	</script>
</body>
</html>