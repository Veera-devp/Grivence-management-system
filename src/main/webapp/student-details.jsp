<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page errorPage="error.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body onload="read()">
	<div id="display"></div>
</body>
<script>
function read()
{
		var xhtml = new XMLHttpRequest();
		var url = "http://localhost:8080/api/register/users";
		xhtml.open("GET", url, true);
		xhtml.setRequestHeader('Content-Type','application/json');
		
		xhtml.send();
		
		var display = document.getElementById("display");
		
		xhtml.onreadystatechange = function()
		{
			if(this.readyState == 4 && this.status == 200)
			{
				var i=0;
				var table = "<table border='1'>";
				table=table+
				"<tr>"+
					"<th>S.No</th>"+
					"<th>Username</th>"+
					"<th>Id</th>"+
					"<th>Email</th>"+
					"<th>Name</th>"+
					"<th>Phone</th>"+
					"<th>Role</th>"+
					"<th>College</th>"+
				"</tr>";
				var data = JSON.parse(this.responseText);
				for(var x in data)
				{
					if(data[x].role=="Student")
					{
						table=table+
						"<tr>"+
							"<td>"+ (i+1)+"</td>"+
							"<td>"+ data[x].username +"</td>"+
							"<td>"+ data[x].Id+"</td>"+
							"<td>"+ data[x].email +"</td>"+
							"<td>"+ data[x].name +"</td> "+
							"<td>"+ data[x].phone +"</td> "+
							"<td>"+ data[x].role +"</td>"+
							"<td>"+ data[x].clg +"</td>"+
						"</tr>";
						i++;
					}
				}
				table=table+"</table>";
				display.innerHTML = table;
			}
		};
}
</script>
</html>