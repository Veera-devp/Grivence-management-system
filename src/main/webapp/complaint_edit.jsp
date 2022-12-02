<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page errorPage="error.jsp" %>
    <jsp:include page="student_navbar.jsp" /> 
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
  Faculty Name:
  <input type="text" id="t2"/>
  <br/>
  Faculty Email:
  <input type="text" id="t3"/>
  <br/>
  Faculty id:
  <input type="text" id="t4"/>
  <br/>
  HOD Email
  <input type="text" id="t5"/>
  <br/>
  HOD Id:
  <input type="text" id="t6"/>
  <br/>
  Branch:
  <input type="text" id="t7"/>
  <br/>
  Department
  <input type="text" id="t8"/>
  <br/>
  Issue
  <input type="text" id="t9"/>
  
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
  var t8 = document.getElementById("t8");
  var t9 = document.getElementById("t9");
  
  var url = "http://localhost:8080/api/complaint/" + t1.value;
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
        t2.value=data[x].fname;
        t3.value=data[x].fmail;
        t4.value=data[x].fid;
        t5.value=data[x].hmail;
        t6.value=data[x].hid;
        t7.value=data[x].branch;
        t8.value=data[x].dep;
        t9.value=data[x].issue;
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
  var t8 = document.getElementById("t8");
  var t8 = document.getElementById("t9");
  
  var url = "http://localhost:8080/api/complaint-update/" + t1.value;
  xhtml.open("PUT", url, true);
  xhtml.setRequestHeader('Content-Type','application/json');
  var lbl = document.getElementById("lbl");
  xhtml.send(JSON.stringify({
    username : t1.value,
    fname : t2.value,
    femail : t3.value,
    fid : t4.value,
    hmail : t5.value,
    hid: t6.value,
    branch : t7.value,
    dep : t8.value,
    issue: t9.value
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