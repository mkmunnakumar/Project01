<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">

<title>Add Employee</title>
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-primary bg-dark">
		<a class="navbar-brand" href="#">Employee management system</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item active"><a class="nav-link" href="/">Home
						<span class="sr-only">(current)</span>
				</a></li>
				<li class="nav-item"><a class="nav-link active" href="add_emp">Add
						Employee</a></li>
			</ul>

		</div>
	</nav>



	<!--boby-->
	<script type="text/javascript">
		function validate() {
			
			var name = document.getElementById("nameerr").value;
			var email = document.getElementById("emailerr").value;
			var salary = document.getElementById("salaryerr").value;
			//var validEmail = /^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$/;
			//Name validation
			if (name == "") {
				document.getElementById("Name").innerHTML = "Name is required";
				return false;
			}

			//Email validation
			if(email == ""){
				document.getElementById("Email").innerHTML = "Email is required";
				return false;
			}
			
			//salary validation
			if (salary == "") {
				document.getElementById("Salary").innerHTML = "Salary is required";
				return false;
			} else if (isNaN(salary)) {
				document.getElementById("Salary").innerHTML = "Salary is only in Number";
				return false;
			}
		}
	</script>
	<div class="container">
		<div class="row">
			<div class="col-md-6 offset-md-3">
				<div class="card">
					<div class="card-body">
						<h4 class="text-center text-primary">Add Emp</h4>

						<form name="formValidation" action="/register" method="post"
							onsubmit="return validate()">

							<div class="form-group">
								<lable>Enter Full Name</lable>
								<input type="text" class="form-control" name="name" id="nameerr"
									value=""> <span id="Name"
									class="text-danger font-weight-bold"></span>
							</div>
							<div class="form-group">
								<lable>Enter Email</lable>
								<input type="email" class="form-control" name="email"
									id="emailerr" value=""> 
									<span id="Email" class="text-danger font-weight-bold"></span>
							</div>
							<div class="form-group">
								<lable>Enter DOB</lable>
								<input type="date" class="form-control" name="dob" id="doberr"
									value="">
									<span id="Dob" class="text-danger font-weight-bold"></span>
							</div>
							<div class="form-group">
								<lable>Enter salary</lable>
								<input type="text" class="form-control" name="salary"
									id="salaryerr" value=""> 
								<span id="Salary" class="text-danger font-weight-bold"></span>
							</div>
							<div class="form-group">
								<lable for="status">Status</lable>
								<select name="status" id="status">
									<option value=true>Active</option>
									<option value=false>InActive</option>
								</select>
							</div>
							<button class="btn btn-primary btn-block">Submit</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!--body-->
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.14.7/dist/umd/popper.min.js"
		integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/js/bootstrap.min.js"
		integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
		crossorigin="anonymous"></script>
</body>
</html>