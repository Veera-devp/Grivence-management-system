<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ page errorPage="error.jsp" %>
	<jsp:include page="admin_navbar.jsp" />  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

<title>Admin-dashboard</title>
<style>
body { 
  background: url(../static/images/admin.jpg) no-repeat center center fixed;
  background-size: cover;
}
</style>
</head>
<body>
<center>
<h1>Admin Dashboard</h1>
<br/><br/>
<a href="admin_student.jsp" class="btn btn-primary btn-lg" role="button" aria-pressed="true" >Students</a>
</br>
</br></br>
<a href="admin_faculty.jsp" class="btn btn-primary btn-lg" role="button" aria-pressed="true">Faculty</a>
</br>
</br></br>
<a href="admin_allusers.jsp" class="btn btn-primary btn-lg" role="button" aria-pressed="true">All Users</a>
</br></br></br>
<a href="exam_issue_display.jsp" class="btn btn-primary btn-lg" role="button" aria-pressed="true">Exam Section</a>
</center>
</body>
</html>