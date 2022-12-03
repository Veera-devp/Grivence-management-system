<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page errorPage="error.jsp" %>
    <jsp:include page="faculty_navbar.jsp" /> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body onload="profileDetails()">
<center>
Username : <p id="t1"></p>
student id : <p id="srh"></p>
student name : <p id="srh2"></p>
student mail : <p id="srh3"></p>
student issue : <p id="srh4"></p>
</center>
</body>
<script type="text/javascript">
function profileDetails()
{
		var xhtml = new XMLHttpRequest();
		var t1 = document.getElementById("t1");
		var t2 = document.getElementById("srh");
		var t3 = document.getElementById("srh2");
		var t4 = document.getElementById("srh3");
		var t5 = document.getElementById("srh4");
		t1.innerHTML=sessionStorage.getItem("username");
		
		var url="http://localhost:8080/api/faculty-complaint-register/"+sessionStorage.getItem("username");
		
		xhtml.open("GET", url, true);
		xhtml.setRequestHeader('Content-Type','application/json');
			
		xhtml.send();
		
		xhtml.onreadystatechange = function()
		{
			if(this.readyState == 4 && this.status == 200)
			{
				
				var data=JSON.parse(this.responseText);
				alert(data);
				for(var x in data)
				{
					t2.innerHTML=data[x].sid;
					t3.innerHTML=data[x].name;
					t4.innerHTML=data[x].smail;
					t5.innerHTML=data[x].issue;
				}
			}
		};
	
}
</script>
</html>