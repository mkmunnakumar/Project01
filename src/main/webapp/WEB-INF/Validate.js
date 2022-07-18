$(document).ready(function() {
	$("#alertSuccess").hide();
	$("#errname").hide();
	$("#erremail").hide();  //Initially hiding the error spans
	$("#errdob").hide();
	$("#errerrsal").hide();

	$("#Rbtn").click(function() {
		var email = $("#email").val();
		var mailformat = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
		var letters = /^[A-Za-z]+$/;

		if (email == "" || email == null) {

			alert("Email cannot be Empty");
			return false;
		} else if (!(email.match(mailformat))) {
			alert("Please Enter Valid Mail ID");
			return false;
		} else {
			$("#alertSuccess").show();
			$("#formid").submit();
			return true;
		}

	});

	$("#id").change(function() {
		var userid = $("#id").val();   //here we are restricting the user at the time of typing,we called an event "Keyup"
		if (isNaN(userid)) {

			$("#errid").show();  //if user enters other than number then the error span will be shown
			return false;
		} else {
			$("#errid").hide();


			return true;
		}


	});
	$("#username").change(function() {
		var username = $("#username").val();
		var letters = /^[A-Za-z]+$/;

		if (!(username.match(letters))) {
			$("#errname").show();

			return false;
		} else {
			$("#errname").hide();
			return true;
		}

	});
	$("#email").change(function() {
		var email = $("#email").val();

		var mailformat = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
		if (!(email.match(mailformat))) {
			$("#erremail").show();


			return false;
		} else {
			$("#erremail").hide();
			return true;


		}

	});
});
