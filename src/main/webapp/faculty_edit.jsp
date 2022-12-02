<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page errorPage="error.jsp" %>
    <jsp:include page="faculty_navbar.jsp" /> 
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
  Student Name:
  <input type="text" id="t2"/>
  <br/>
  Student Email:
  <input type="text" id="t3"/>
  <br/>
  Student id:
  <input type="text" id="t4"/>
  <br/>
  Issue
  <input type="text" id="t5"/>
  
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
  
  var url = "http://localhost:8080/api/faculty-complaint-register/" + t1.value;
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
        t2.value=data[x].sid;
        t3.value=data[x].name;
        t4.value=data[x].smail;
        t5.value=data[x].issue;
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
  
  var url = "http://localhost:8080/api/faculty-complaint-update/" + t1.value;
  xhtml.open("PUT", url, true);
  xhtml.setRequestHeader('Content-Type','application/json');
  var lbl = document.getElementById("lbl");
  xhtml.send(JSON.stringify({
    username : t1.value,
    sid : t2.value,
    name : t3.value,
    smail : t4.value,
    issue : t5.value,
  }));
  alert(url);
  xhtml.onreadystatechange = function()
  {
    if(this.readyState == 4 && this.status == 200)
      lbl.innerText = this.responseText;
  };
}
</script>
</html>