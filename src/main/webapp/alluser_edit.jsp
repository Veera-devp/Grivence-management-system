<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page errorPage="error.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body onload="display()">
  username:
  <input type="text" id="t1"/>
  <br/>
   id:
  <input type="text" disabled id="t2"/>
  <br/>
  Email:
  <input type="text" id="t3"/>
  <br/>
  name:
  <input type="text" id="t4"/>
  <br/>
  phone:
  <input type="text" id="t5"/>
  <br/>
 role:
  <input type="text" id="t6"/>
  <br/>
  college:
  <input type="text" id="t7"/>
  
  <button onclick="updateFunction()">Update</button>
  <label id="lbl"></label>
</body>
<script>
function display()
{
  disp();
  var xhtml = new XMLHttpRequest();
  var t1 = document.getElementById("t1");
  var t2 = document.getElementById("t2");
  var t3 = document.getElementById("t3");
  var t4 = document.getElementById("t4");
  var t5 = document.getElementById("t5");
  var t6 = document.getElementById("t6");
  var t7 = document.getElementById("t7");
  
 
  var url = "http://localhost:8080/api/roles/" + t1.value;
  xhtml.open("GET", url, true);
  xhtml.setRequestHeader('Content-Type','application/json');
  var lbl = document.getElementById("lbl");
  xhtml.send();
  alert(url);
  xhtml.onreadystatechange = function()
  {
    if(this.readyState == 4 && this.status == 200)
      var data=JSON.parse(this.responseText);
      for(var x in data)
      {
    	  t2.value=data[x].Id;
        t3.value=data[x].email;
        t4.value=data[x].name;
        t5.value=data[x].phone;
        t6.value=data[x].role;
        t7.value=data[x].clg;
      }
  };
}
function disp()
{
  let urlString=window.location.href;
  let paramString = urlString.split('?')[1];
  let queryString = new URLSearchParams(paramString);
  var url;
  var t1 = document.getElementById("t1");
  for(let pair of queryString.entries()) 
  {
    url=pair[1];
    t1.value=pair[1];
    sessionStorage.setItem("user",pair[1]);
  }
  alert(url);
}
function updateFunction()
{
  var xhtml = new XMLHttpRequest();
  var t1 = document.getElementById("t1");
  var t2 = document.getElementById("t2");
  var t3 = document.getElementById("t3");
  var t4 = document.getElementById("t4");
  var t5 = document.getElementById("t5");
  var t6 = document.getElementById("t6");
  var t7 = document.getElementById("t7");
 
  var url = "http://localhost:8080/api/register/update/" + t1.value;
  xhtml.open("PUT", url, true);
  xhtml.setRequestHeader('Content-Type','application/json');
  var lbl = document.getElementById("lbl");
  xhtml.send(JSON.stringify({
	 Id : t2.value,
    email : t3.value,
    name : t4.value,
    phone : t5.value,
    role: t6.value,
    clg : t7.value
  }));
  alert(url);
  xhtml.onreadystatechange = function()
  {
    if(this.readyState == 4 && this.status == 200)
    	alert(this.responseText);
      lbl.innerText = this.responseText;
  };
}
</script>
</html>