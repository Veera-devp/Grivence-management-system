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
fid : <p id="t2"></p>
fname : <p id="t3"></p>
fmail : <p id="t4"></p>
hmail : <p id="t5"></p>
hid : <p id="t6"></p>
branch : <p id="t7"></p>
dep : <p id="t8"></p>
issue : <p id="t9"></p>
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
		var t7 = document.getElementById("t7");
		var t8 = document.getElementById("t8");var t5 = document.getElementById("t5");
		var t9 = document.getElementById("t9");
		t1.innerHTML=sessionStorage.getItem("username");
		var url="http://localhost:8080/api/complaint/"+sessionStorage.getItem("username");
		
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
					t2.innerHTML=data[x].fid;
					t3.innerHTML=data[x].fname;
					t4.innerHTML=data[x].fmail;
					t5.innerHTML=data[x].hmail;
					t6.innerHTML=data[x].hid;
					t7.innerHTML=data[x].branch;
					t8.innerHTML=data[x].dep;
					t9.innerHTML=data[x].issue;
				}
			}
		};
	
}
</script>
</html>