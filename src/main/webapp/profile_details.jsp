<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body onload="profileDetails()">

Username : <p id="t1"></p>
Id : <p id="t2"></p>
College : <p id="t3"></p>
Email : <p id="t4"></p>
Name : <p id="t5"></p>
Role : <p id="t6"></p>
</body>
<script type="text/javascript">
function profileDetails()
{
	
		var xhtml = new XMLHttpRequest();
		var t1 = document.getElementById("t1");
		var t2 = document.getElementById("t2");
		var t3 = document.getElementById("t3");
		var t4 = document.getElementById("t4");
		var t5 = document.getElementById("t5");
		var t6 = document.getElementById("t6");
		t1.innerHTML=sessionStorage.getItem("username");
		var url="http://localhost:8080/api/roles/"+sessionStorage.getItem("username");
		
		xhtml.open("GET", url, true);
		xhtml.setRequestHeader('Content-Type','application/json');
			
		xhtml.send();
		
		xhtml.onreadystatechange = function()
		{
			if(this.readyState == 4 && this.status == 200)
			{
				var data=JSON.parse(this.responseText);
				for(var x in data)
				{
					t2.innerHTML=data[x].Id;
					t3.innerHTML=data[x].clg;
					t4.innerHTML=data[x].email;
					t5.innerHTML=data[x].name;
					t6.innerHTML=data[x].role;
				}
			}
		};
	
}
</script>
</html>