<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ page errorPage="error.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body onload="disp()">
	<input type="text" id="t1" />
	<label id="lbl"></label>
	<div style="width: 100%" id="display"></div>
	<button onclick="remove()">Remove</button>
</body>
<script>
function remove()
{
  var xhtml = new XMLHttpRequest();
  var t1 = document.getElementById("t1");
  var url = "http://localhost:8080/api/complaint-withdraw/" + t1.value;
  xhtml.open("DELETE", url, true);
  xhtml.setRequestHeader('Content-Type','application/json');
  var lbl = document.getElementById("lbl");
  xhtml.send();
  alert(url);
  xhtml.onreadystat1echange = function()
  {
    if(this.readyState == 4 && this.status == 200)
      lbl.innerText = this.responseText;
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
  }
  alert(url);
}
</script>
</html>