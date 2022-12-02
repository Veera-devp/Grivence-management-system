<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<jsp:include page="admin_navbar.jsp" /> 
<title>Insert title here</title>
</head>
<body>
<div id="display"/>
</body>
<script type="text/javascript">
var xhtml = new XMLHttpRequest();
var url="http://localhost:8080/api/exam-section";
xhtml.open("GET", url, true);
xhtml.setRequestHeader('Content-Type', 'application/json');

xhtml.send();

var display = document.getElementById("display");

xhtml.onreadystatechange = function() {
	if (this.readyState == 4 && this.status == 200) {
		var table = "<table border='1'>";
		var i = 0;
		table += "<tr>  <th>S.no</th> <th>Student-id</th> <th>Student-name</th> <th>Email</th> <th>sem</th> <th>year</th> <th>CourseCode</th> <th>course name</th> <th>Issue</th> <th>Other related Issue</th></tr>";
		var data = JSON.parse(this.responseText);
		for ( var x in data) {
			table = table + "<tr>" + "<td>"+ (i+1) +"</td>"
			+ "<td>" + data[x].id + "</td>"+ 
			"<td>" + data[x].name + "</td>"+ 
			"<td>" + data[x].email + "</td>"+
			"<td>" + data[x].sem + "</td>" +
			"<td>" + data[x].year + "</td>"+
			"<td>" + data[x].ccode + "</td>"+
			"<td>" + data[x].cname + "</td>"+
			"<td>" + data[x].issue + "</td>"+
			"<td>" + data[x].issue2 + "</td>"+"</tr>";
			i++;
			
		}
		table = table + "</table>";
		display.innerHTML = table;
	}
};
</script>
</script>
</html>