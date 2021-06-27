<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Completed Successfully</title>
	<style type="text/css">
		body{
			background: #11998e;  
background: -webkit-linear-gradient(to right, #38ef7d, #11998e);  
background: linear-gradient(to right, #38ef7d, #11998e); 
		}
	</style>
</head>
<body>
	<center>
	<div style="position: relative; top: 200px;text-align: center; font-size: 60px; font-family: Arial">
	YOUR TEST HAS BEEN COMPLETED <br>SUCCESSFULLY</div>
	<button id="dashboard" style="position: relative; top: 300px; height: 50px; width: 100px; 
	color: white; background: red;">Back to Dashboard</button>
	</center>
</body>
<script>
	document.getElementById("dashboard").addEventListener("click",
			()=>
			{
				window.location.href = "http://localhost:9999/SmartClassroomProject/Student9Login.jsp";	
			}
	)

</script>
</html>