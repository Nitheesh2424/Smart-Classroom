<%@page import="java.util.*" %>
<%@page import="java.sql.*" %>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin privilege</title>
    <style>
        @import url(https://fonts.googleapis.com/css?family=Source+Sans+Pro);
body {
	background: #314755;  /* fallback for old browsers */
background: -webkit-linear-gradient(to right, #26a0da, #314755);  /* Chrome 10-25, Safari 5.1-6 */
background: linear-gradient(to right, #26a0da, #314755); /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */

  	-webkit-background-size: cover;
	  -moz-background-size: cover;
	  -o-background-size: cover;
	  background-size: cover;
    padding-top:10px;
}

.form {
    margin-left:auto;
    margin-right:auto;
    width: 550px;
    margin-top:30px;
    height: 500px;
    padding:30px;
    border: 1px solid rgba(0,0,0,.2);
    -moz-border-radius: 5px;
    -webkit-border-radius: 5px;
    border-radius: 5px;
    -moz-background-clip: padding;
    -webkit-background-clip: padding-box;
    background-clip: padding-box;
    background: rgba(0, 0, 0, 0.5); 
    -moz-box-shadow: 0 0 13px 3px rgba(0,0,0,.5);
    -webkit-box-shadow: 0 0 13px 3px rgba(0,0,0,.5);
    box-shadow: 0 0 13px 3px rgba(0,0,0,.5);
    overflow: hidden; 
}

textarea{
	  background: rgba(255, 255, 255, 0.4) url(http://luismruiz.com/img/gemicon_message.png) no-repeat scroll 16px 16px; 
    width: 276px;
    height: 110px;
    border: 1px solid rgba(255,255,255,.6);
    -moz-border-radius: 4px;
    -webkit-border-radius: 4px;
    border-radius: 4px;
    -moz-background-clip: padding;
    -webkit-background-clip: padding-box;
    background-clip: padding-box; 
    display:block;
    font-family: 'Source Sans Pro', sans-serif;
    font-size:18px;
    color:#fff;
    padding-left:45px;
    padding-right:20px;
    padding-top:12px;
    margin-bottom:20px;
    overflow:hidden;
}

input {
    width: 276px;
    height: 48px;
    border: 1px solid rgba(255,255,255,.4);
    -moz-border-radius: 4px;
    -webkit-border-radius: 4px;
    border-radius: 4px;
    -moz-background-clip: padding;
    -webkit-background-clip: padding-box;
    background-clip: padding-box; 
    display:block;
    font-family: 'Source Sans Pro', sans-serif;
    font-size:18px;
    color:#fff;
    padding-left:20px;
    padding-right:20px;
    margin-bottom:20px;
}

input[type=submit] {
    cursor:pointer;
}

input.name {
	  background: rgba(255, 255, 255, 0.4) url(http://luismruiz.com/img/gemicon_name.png) no-repeat scroll 16px 16px; 
	  padding-left:45px;
}

input.email {
	  background: rgba(255, 255, 255, 0.4) url(http://luismruiz.com/img/gemicon_email.png) no-repeat scroll 16px 20px;
	  padding-left:45px;
}

input.message {
	  background: rgba(255, 255, 255, 0.4) url(http://luismruiz.com/img/gemicon_message.png) no-repeat scroll 16px 16px;
	  padding-left:45px;
}

::-webkit-input-placeholder {
	  color: #fff;
}

:-moz-placeholder{ 
    color: #fff; 
}

::-moz-placeholder {
    color: #fff;
}

:-ms-input-placeholder {  
	  color: #fff; 
}

input:focus, textarea:focus { 
	  background-color: rgba(0, 0, 0, 0.2);
    -moz-box-shadow: 0 0 5px 1px rgba(255,255,255,.5);
    -webkit-box-shadow: 0 0 5px 1px rgba(255,255,255,.5);
    box-shadow: 0 0 5px 1px rgba(255,255,255,.5);
	  overflow: hidden; 
}

.btn {
	  width: 200px;
	  height: 44px;
	  -moz-border-radius: 4px;
	  -webkit-border-radius: 4px;
	  border-radius: 4px;
    border: 1px solid #253737;
    background: #416b68;
    background: -webkit-gradient(linear, left top, left bottom, from(#6da5a3), to(#416b68));
    background: -webkit-linear-gradient(top, #6da5a3, #416b68);
    background: -moz-linear-gradient(top, #6da5a3, #416b68);
    background: -ms-linear-gradient(top, #6da5a3, #416b68);
    background: -o-linear-gradient(top, #6da5a3, #416b68);
    background-image: -ms-linear-gradient(top, #6da5a3 0%, #416b68 100%);
    -webkit-border-radius: 6px;
    -moz-border-radius: 6px;
    border-radius: 6px;
    -webkit-box-shadow: rgba(255,255,255,0.1) 0 1px 0, inset rgba(255,255,255,0.7) 0 1px 0;
    -moz-box-shadow: rgba(255,255,255,0.1) 0 1px 0, inset rgba(255,255,255,0.7) 0 1px 0;
    box-shadow: rgba(255,255,255,0.1) 0 1px 0, inset rgba(255,255,255,0.7) 0 1px 0;
    text-shadow: #333333 0 1px 0;
    color: #e1e1e1;
    margin-left: 200px;
}

.btn:hover {
    border: 1px solid #253737;
    text-shadow: #333333 0 1px 0;
    background: #416b68;
    background: -webkit-gradient(linear, left top, left bottom, from(#77b2b0), to(#416b68));
    background: -webkit-linear-gradient(top, #77b2b0, #416b68);
    background: -moz-linear-gradient(top, #77b2b0, #416b68);
    background: -ms-linear-gradient(top, #77b2b0, #416b68);
    background: -o-linear-gradient(top, #77b2b0, #416b68);
    background-image: -ms-linear-gradient(top, #77b2b0 0%, #416b68 100%);
    color: #fff;
 }

.btn:active {
    margin-top:1px;
    text-shadow: #333333 0 -1px 0;
    border: 1px solid #253737;
    background: #6da5a3;
    background: -webkit-gradient(linear, left top, left bottom, from(#416b68), to(#416b68));
    background: -webkit-linear-gradient(top, #416b68, #609391);
    background: -moz-linear-gradient(top, #416b68, #6da5a3);
    background: -ms-linear-gradient(top, #416b68, #6da5a3);
    background: -o-linear-gradient(top, #416b68, #6da5a3);
    background-image: -ms-linear-gradient(top, #416b68 0%, #6da5a3 100%);
    color: #fff;
    -webkit-box-shadow: rgba(255,255,255,0) 0 1px 0, inset rgba(255,255,255,0.7) 0 1px 0;
    -moz-box-shadow: rgba(255,255,255,0) 0 1px 0, inset rgba(255,255,255,0.7) 0 1px 0;
    box-shadow: rgba(255,255,255,0) 0 1px 0, inset rgba(255,255,255,0.7) 0 1px 0;
   }
    </style>
</head>
<body>
<%! 
	//HttpSession sess ion = request.getSession();
	HashMap<String,String> hm = new HashMap<String,String>();
%>
<%
	try
	{
	  String username = request.getParameter("name");
	  String p = request.getParameter("password");
	  Class.forName("com.mysql.jdbc.Driver");
	  Connection con=DriverManager.getConnection("jdbc:mysql://localhost/smartclassroom","root0","root"); 
	  Statement st=con.createStatement();
	  String query="select * from admin1login";
	       ResultSet rs=st.executeQuery(query);
	       while(rs.next())
	       { 
	    	   String admin = rs.getString("adminid");
	    	   String pass  = rs.getString("Pass");
	    	   hm.put(admin,pass);
	    	   //System.out.println(admin+" "+pass);
	       }
	 con.close();
	 if(hm.containsKey(username) && hm.get(username).equals(p))
	 {
		 
	 }
	 else
	 {
		 System.out.println("HELLO ERROR"+"/n"+hm+" "+username+"/n"+"/n"+p);
		 RequestDispatcher rd = request.getRequestDispatcher("Admin1Login.jsp");
		 rd.forward(request,response);
	 }
	}
	catch(Exception e1)
	{
		System.out.println("ERROR"+e1);
	}
	//HttpSession ses = request.getSession();
	//ses. setAttribute("p", hm);
%>
    <div class="form">
		<!-- <input name="name" placeholder="Admin ID" class="name" required /><br>
        <input name="Pass" placeholder="Password" type="password"class="email"required /> -->
        <h2 style="color: white;padding-left:80px">TEACHER PRIVILEDGE</h2>
        <button id="pp1" class="btn" type="submit" >CREATE A TEACHER</button> <br><br><br>
        <button id="pp2" class="btn" type="submit" >DELETE A TEACHER</button> <br><br><br>
        <button id="pp3" class="btn" type="submit" >CHANGE PASSWORD</button> <br><br>
        <h2 style="color: white;padding-left:80px">TIMETABLE</h2>
        <button  id="p1" class="btn" type="submit" >CREATE</button> <br><br><br>
        <button  id="p2" class="btn" type="submit" >UPDATE</button> <br><br>
  
        <br><br><br><br>
        </div>

        <script>
        
       		document.getElementById("pp1").addEventListener("click",
               ()=>{
                   window.location.href = "http://localhost:9999/SmartClassroomProject/Admin3AddTeacher.jsp";
               }
               );
               document.getElementById("pp2").addEventListener("click",
               ()=>{
                   window.location.href = "http://localhost:9999/SmartClassroomProject/Admin4DeleteTeacher.jsp";
               }
               );
               document.getElementById("pp3").addEventListener("click",
               ()=>{
                   window.location.href = "http://localhost:9999/SmartClassroomProject/Admin5UpdateTeacher.jsp";
               }
               );
        
            document.getElementById("p1").addEventListener("click",
            ()=>{
                window.location.href = "http://localhost:9999/SmartClassroomProject/Admin6Timetable.jsp";
            }
            );
            document.getElementById("p2").addEventListener("click",
            ()=>{
                window.location.href = "http://localhost:9999/SmartClassroomProject/Admin6Timetable.jsp";
            }
            );
            document.getElementById("p3").addEventListener("click",
            ()=>{
                window.location.href = "http://localhost:9999/SmartClassroomProject/Admin6Timetable.jsp";
            }
            );
        </script>
</body>
</html>