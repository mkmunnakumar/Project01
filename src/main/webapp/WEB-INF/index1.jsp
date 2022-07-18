<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Home</title>
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-primary bg-dark">
  <!-- <a class="navbar-brand" href="#">Employee management system</a> -->
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link active" href="add_emp">Add Empl</a>
      </li>
    </ul>
    
  </div>
</nav>
<div th:if=${session.msg}>
<div class="alert alert-success" role="alert" th:text="${session.msg}">

</div>
<th:block th:text="${#session.removeAttribute('msg')}">
</th:block>
</div>

    <!--table-->
    <div class="container p-5">
    
    <table class="table">
  <thead class="thead-dark">
  <center><h2><strong>Employee Management System</strong></h2></center>
    <tr>
      <th scope="col">EMPID</th>
      <th scope="col">Name</th>
      <th scope="col">Email</th>
      <th scope="col">DOB</th>
      <th scope="col">Age</th>
      <th scope="col">Salary</th>
      <th scope="col">Status</th>
      <th scope="col">Action</th>
    </tr>
  </thead>
  <tbody>
    <tr th:each="e:${emp}">
      <th th:text="${e.id}"></th>
      <td th:text="${e.name}"> </td>
      <td th:text="${e.email}"></td>
      <td th:text="${e.dob}"></td>
      <td th:text="${e.age}"></td>
      <td th:text="${e.salary}"></td>
      <td th:text="${e.status ? 'Active': 'Inactive'}"></td>
      <td>
      <a class="btn btn-sm btn-primary" th:href="@{/edit/{id}(id=${e.id})}">Edit</a>
      <a class="btn btn-sm btn-danger" th:href="@{/delete/{id}(id=${e.id})}">Delete</a>
      </td>
    </tr >
   
  </tbody>
</table> 
    </div>
    <!--table-->
    
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.7/dist/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</body>
</html>