<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page errorPage="error.jsp" %>
    <jsp:include page="faculty_navbar.jsp" /> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

<title>FacultyDshboard</title>
<style type="text/css">
body { 
  background: url(../static/images/103.jpg) no-repeat center center fixed;
  background-size: cover;
}
</style>
</head>
<body onload="userLoad()">

<center>
<h1 style="color: #FFFFFF">Welcome to Faculty dashboard</h1>
</br>
<h3><a href = "faculty-complaint-upload.jsp">Faculty grivence upload</a></h3>
</br>
<h3><a href = "faculty-complaint-update.jsp">Faculty Update</a></h3>
</br>
<h3><a href = "faculty-complaint-delete.jsp">Withdraw Complaint</a></h3>
</br>
<h3><a href = "faculty-complaint-details.jsp">Complaint Status</a></h3>
</br>
<h3><a href = "student-details.jsp">Student Details</a></h3>
</center>
</body><script>
function userLoad()
{
	var user=sessionStorage.getItem("username");
	var raghava=document.getElementById("iop");
	raghava.innerHTML=user;
	alert(user);
}
</script>

</html>