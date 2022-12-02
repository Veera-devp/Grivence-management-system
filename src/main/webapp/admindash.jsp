<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ page errorPage="error.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

<title>Admin-dashboard</title>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" href="#">AdminDashboard</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item">
        <a class="nav-link" href="#">Profile</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="adminLogin">Logout</a>
      </li>
      
    </ul>
    <ul class = "navbar-nav ml-auto">
    <li class="nav-item">
      <a href="#" class="nav-link" id="t1"></a>
      </li>
    </ul>
  </div>
</nav>
<br/>
<br/>
<center>
<a href="admin_student.jsp" class="btn btn-primary" role="button" aria-pressed="true">Students</a>
<a href="admin_faculty.jsp" class="btn btn-primary" role="button" aria-pressed="true">Faculty</a>
<a href="admin_allusers.jsp" class="btn btn-primary" role="button" aria-pressed="true">All Users</a>
<a href="exam_issue_display.jsp" class="btn btn-primary" role="button" aria-pressed="true">Exam Section</a>
</center>
</body>
</html>