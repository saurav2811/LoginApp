<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>SignUp Page</title>
</head>
<body>

	<div style="text-align: center;">
		<h2>Employees SignUp Form</h2>
		<br>
		<br>
		<form action="Signup" method= "post">
				Enter Employee ID : <input type="text" name="id" required><br>
				Enter password : <input type="password" name="pword"required><br>
				Employee first name : <input type="text" name="fname"><br>
				Enter last name : <input type="text" name="lname"><br>
				Enter date of birth: <input type="text" name="dob" placeholder="dd/mm/yyyy"><br>
				Enter contact number : <input type="text" name="contact"><br>
				Enter job role: <input type="text" name="job"><br>
				Enter salary: <input type="text" name="sal"><br>
				Enter yearly bonus: <input type="text" name="bonus"><br>
				<br>
				<input type="submit" value="signup">
				
				
		</form>
	</div>
	
</body>
</html>