<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome</title>
</head>
<body>
	<%
		response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");	
		response.setHeader("Pragma", "no-cache");
		response.setHeader("Expires", "0");
		
		if(session.getAttribute("id_num")==null){
			response.sendRedirect("login.jsp");
		}
	%>
	<div style="text-align: center;">
		<h2>
		Hello there!!
		<br>
		Welcome ${id_num}</h2>
		
		<br>
		
		<form action="Logout">
			<input type="submit" value="Logout">
		</form>
		
		<br><br>
		<h3>
			All Employees Details
		</h3>
		<br>
		<center>
			<table style="text-align: center;">
			  <tr style="text-align: center;">
			    <th>Emp_id_num</th>
			    <th>First Name</th>
			    <th>Last Name</th>
			    <th>DOB</th>
			    <th>Contact</th>
			  </tr>
			  <tr>
			    <td>1</td>
			    <td>Saurav</td>
			    <td>Singh</td>
			    <td>01/01/2001</td>
			    <td>987654321</td>
			  </tr>
			  <tr>
			    <td>2</td>
			    <td>qwerty</td>
			    <td>uiop</td>
			    <td>12/12/2000</td>
			    <td>9876512340</td>
			  </tr>
			  <tr>
			    <td>10</td>
			    <td>ten</td>
			    <td>ten</td>
			    <td>12/12/2000</td>
			    <td>1010101010</td>
			  </tr>
			  <tr>
			    <td>3</td>
			    <td>asdfg</td>
			    <td>hjkl</td>
			    <td>12/12/2000</td>
			    <td>23456798765</td>
			  </tr>
			</table>
		</center>
		
		<br><br>
		Enter Employee_Id to show details:
		<input type="text" name="id">
		<input type="submit" name="show" value="Show Report">
		<br>
		<br>
		<center>
			<table style="text-align: center;">
			  <tr style="text-align: center;">
			    <th>Emp_id_num</th>
			    <th>First Name</th>
			    <th>Last Name</th>
			    <th>DOB</th>
			    <th>Contact</th>
			    <th>Job Role</th>
			    <th>Salary</th>
			    <th>Yearly Bonus</th>
			  </tr>
			  <tr>
			    <td>1</td>
			    <td>Saurav</td>
			    <td>Singh</td>
			    <td>01/01/2001</td>
			    <td>987654321</td>
			    <td>sde</td>
			    <td>200000</td>
			    <td>500000</td>
			  </tr>
				  
			</table>
		</center>
		
		
		
	</div>
	
	
	
</body>
</html>