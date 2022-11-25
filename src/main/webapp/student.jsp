<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

<title>StudentDshboard</title>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" href="#">Student1Dashboard</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item">
        <a class="nav-link" href="#">Profile</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="login">Logout</a>
      </li>
      
    </ul>
    <ul class = "navbar-nav ml-auto">
    <li class="nav-item">
      <a href="#" class="nav-link" id="t1"></a>
      </li>
    </ul>
  </div>
</nav>
</br>
<center>
<h1>Welcome to student dashboard</h1>
</br>
<h3><a href = "student-dashboard/complaint-upload">Student grivence upload</a></h3>
</br>
<h3><a href = "student-dashboard/complaint-update">Complaint Update</a></h3>
</br>
<h3><a href = "student-dashboard/complaint-delete">Withdraw Complaint</a></h3>
</br>
<h3><a href = "#">Complaint Status</a></h3>
</center>
</body>
</html>