<%@page import="java.util.*" %>
<%@page import="java.sql.*" %>

<!DOCTYPE html>
<html lang="en">
<head>
 <meta charset="UTF-8">
 <meta name="viewport" content="width=device-width, initial-scale=1.0">
 <title>Student Dashboard</title>
 <style>
 nav {
	 margin: 27px auto 0;
	 
	 padding: 25px;
	 width: 200px;
	 margin-left:-1px;
	 margin-top: -1px;
	 /* width: 20%; */
	 display: block;
	 position: relative;
	 width: 160px;
	 height: 600px;
	 background: #11998e;  
	 border-radius: 8px;
	 font-size: 0;
 }
 nav a {
 line-height: 50px;
 /* height: 100%; */
 font-size: 15px;
 display: block;
 position: relative;
 z-index: 1;
 text-decoration: none;
 text-transform: uppercase;
 text-align: center;
 color: white;
 cursor: pointer;
 }
 nav .animation {
 position: absolute;
 height: 50px;
 top: 0;
 z-index: 0;
 transition: all .5s ease 0s;
 border-radius: 8px;
 }
 a:nth-child(1) {
 padding-left: 0%;
 width: 125px;
 }
 a:nth-child(2) {
 padding-left: 0%;
 width: 110px;
 }
 a:nth-child(3) {
 padding-left: 0%;
 width: 125px;
 }
 a:nth-child(4) {
 padding-left: 0%;
 width: 62px;
 }
 a:nth-child(5) {
 padding-left: 0%;
 width: 134px;
 }
 a:nth-child(6) {
 padding-left: 0%;
 width: 127px;
 }
 a:nth-child(7) {
 padding-left: 0%;
 width: 95px;
 }
 nav .pe1, a:nth-child(1):hover~.animation {
 width: 150px;
 top:25px;
 /* bottom:-3000px; */
 background-color: #72BEBA;
 }
 nav .pe2, a:nth-child(2):hover~.animation {
 width: 150px;
 top:72px;
 /* bottom: 100px; */
 background-color: #72BEBA;
 }
 nav .pe3, a:nth-child(3):hover~.animation {
 width: 150px;
 top:130px;
 /* bottom: 210px; */
 background-color: #72BEBA;
 }
 nav .pe4, a:nth-child(4):hover~.animation {
 width: 150px;
 top:175px;
 /* bottom: 310px; */
 background-color: #72BEBA;
 }
 nav .pe5, a:nth-child(5):hover~.animation {
 width: 150px;
 top:225px;
 /* bottom: 470px; */
 background-color: #72BEBA;
 }
 nav .pe6, a:nth-child(6):hover~.animation {
 width: 150px;
 top:275px;
 /* bottom: 470px; */
 background-color: #72BEBA;
 }
 nav .pe7, a:nth-child(7):hover~.animation {
 width: 150px;
 top:325px;
 /* bottom: 470px; */
 background-color: #72BEBA;
 }

 body {
 font-size: 12px;
 font-family: sans-serif;
   background: #11998e;  
background: -webkit-linear-gradient(to right, #38ef7d, #11998e);  
background: linear-gradient(to right, #38ef7d, #11998e); 

 }
 h1 {
 text-align: center;
 margin: 40px 0 40px;
 text-align: center;
 font-size: 30px;
 color: #ecf0f1;
 text-shadow: 2px 2px 4px #000000;
 /* font-family: 'Cherry Swash', cursive; */
 }

 p {
 position: absolute;
 bottom: 20px;
 width: 100%;
 text-align: center;
 color: #ecf0f1;
 font-family: 'Cherry Swash',cursive;
 font-size: 16px;
 }

 span {
 color: #2BD6B4;
 }
 .cls{
 border : 1px solid white;
 background-color:#737776;
 width:120px;
 height: 40px;
 margin-left: 40px;
 margin-top: 20px;
 border-radius: 5px;
 color: white;
 }
 input
 {
 border : 1px solid white;
 background-color:#737776;
 width:100px;
 height: 35px;
 margin-left: 60px;
 margin-top: 20px;
 }
 

@import url(https://fonts.googleapis.com/css?family=Open+Sans:300,400,700);

body {
 font-family: 'Open Sans', sans-serif;
 font-weight: 300;
 line-height: 1.42em;
 color:#A7A1AE;
 background-color:#2d3b36;
}

h1 {
 font-size:3em; 
 font-weight: 300;
 line-height:1em;
 text-align: center;
 color: #4DC3FA;
}

h2 {
 font-size:1em; 
 font-weight: 300;
 text-align: center;
 display: block;
 line-height:1em;
 padding-bottom: 2em;
 color: #FB667A;
}

h2 a {
 font-weight: 700;
 text-transform: uppercase;
 color: #FB667A;
 text-decoration: none;
}

.blue { color: #161d1b; }
.yellow { color: #FFF842; }

.container th h1 {
 font-weight: bold;
 font-size: 1em;
 text-align: left;
 color: #a9f5ed;
}

.container td {
 font-weight: normal;
 font-size: 1em;
 -webkit-box-shadow: 0 2px 2px -2px #0E1119;
 -moz-box-shadow: 0 2px 2px -2px #0E1119;
 box-shadow: 0 2px 2px -2px #0E1119;
}

.container {
 text-align: left;
 overflow: hidden;
 width: 80%;
 margin: 0 auto;
 display: table;
 padding: 0 0 8em 0;
}

.container td, .container th {
 padding-bottom: 2%;
 padding-top: 2%;
 padding-left:2%; 
}

/* Background-color of the odd rows */
.container tr:nth-child(odd) {
 background-color: #161d1b;
}

/* Background-color of the even rows */
.container tr:nth-child(even) {
 background-color: #161d1b;
}

.container th {
 background-color: #2d3b36;
}

.container td:first-child { color: #FB667A; }

.container tr:hover {
 background-color: #464A52;
-webkit-box-shadow: 0 6px 6px -6px #0E1119;
 -moz-box-shadow: 0 6px 6px -6px #0E1119;
 box-shadow: 0 6px 6px -6px #0E1119;
}

.container td:hover {
 background-color: #FFF842;
 color: #403E10;
 font-weight: bold;
 
 box-shadow: #7F7C21 -1px 1px, #7F7C21 -2px 2px, #7F7C21 -3px 3px, #7F7C21 -4px 4px, #7F7C21 -5px 5px, #7F7C21 -6px 6px;
 transform: translate3d(6px, -6px, 0);
 
 transition-delay: 0s;
 transition-duration: 0.4s;
 transition-property: all;
 transition-timing-function: line;
}

@media (max-width: 800px) {
.container td:nth-child(4),
.container th:nth-child(4) { display: none; }
}
.modal {
 will-change: visibility, opacity;
 display: flex;
 align-items: center;
 justify-content: center;
 position: fixed;
 top: 0;
 left: 0;
 right: 0;
 bottom: 0;
 overflow-y: auto;
 overflow-x: hidden;
 z-index: 1000;
 visibility: hidden;
 opacity: 0;
 transition: all 0.5s cubic-bezier(0.23, 1, 0.32, 1);
}
.modal--active {
 visibility: visible;
 opacity: 1;
}
.modal--align-top {
 align-items: flex-start;
}
.modal__bg {
 background: transparent;
}
.modal__dialog {
 max-width: 600px;
 padding: 1.2rem;
}
.modal__content {
 will-change: transform, opacity;
 position: relative;
 padding: 2.4rem;
 background-clip: padding-box;
 box-shadow: 0 12px 15px 0 rgba(0,0,0,0.25);
 opacity: 0;
 transition: all 0.25s cubic-bezier(0.23, 1, 0.32, 1);
}
.modal__content--active {
 opacity: 1;
}
.modal__close {
 z-index: 1100;
 cursor: pointer;
}
.modal__trigger {
 position: relative;
 display: inline-block;
 padding: 1.2rem 2.4rem;
 color: rgba(0,0,0,0.7);
 line-height: 1;
 cursor: pointer;
 box-shadow: 0 2px 5px 0 rgba(0,0,0,0.26);
 -webkit-tap-highlight-color: rgba(0,0,0,0);
 -webkit-user-select: none;
 -moz-user-select: none;
 -ms-user-select: none;
 user-select: none;
 transition: all 0.5s cubic-bezier(0.23, 1, 0.32, 1);
}
.modal__trigger--active {
 z-index: 10;
}

#modal__temp {
 will-change: transform, opacity;
 position: absolute;
 top: 0;
 left: 0;
 right: 0;
 bottom: 0;
 transform: none;
 opacity: 1;
 transition: opacity 0.1s ease-out, transform 0.5s cubic-bezier(0.23, 1, 0.32, 1);
}
tbody td a 
{
 color: #6A967D;
 text-decoration: none;
 font-weight: bolder;
 display: block;
}

.preethi{
 box-shadow: 3px 3px 2px #fcda2f;
 background-color: #629580;
 margin-left: 9% ;
 margin-right: 9% ;
 
}
.preethi:hover{
 transition: 0.5s;
 box-shadow: 10px 10px 10px #fcda2f;
 background-color:#4a8280;
}


/* Attendance */

.inputfile {
 width: 0.1px;
 height: 0.1px;
 opacity: 0;
 overflow: hidden;
 /* [1] */
 position: absolute;
 /* [2] */
 z-index: -1;
}

.inputfile + label {
 padding: 0.75em 1em;
/* border: 1px solid #c0392b;*/
 font-size: 1.25em;
 /*font-weight: 600;
*/ background-color: #ff0000;
 display: inline-block;
 cursor: pointer;
 letter-spacing: 0.0625em;
 /text-shadow: 0 1px 0 rgba(0, 0, 0, 0.15);/
}

/**
 * Trick to obtain default outline Chrome, Opera, Safari
**/
.inputfile:focus + label {
 outline: 1px dotted #000;
 outline: -webkit-focus-ring-color auto 5px;
 /* [1] */
}

.inputfile:focus + label,
.inputfile + label:hover {
 background-color: #921e12;
}

/**
 * Fix touch issues when using FastClick when adding extra markup to the content of a label
**/
.inputfile + label * {
 pointer-events: none;
}

.fa-upload {
 padding-right: 0.75em;
}


.mailbg {
 position: absolute;
 left: 50%;
 top: 50%;
 width: 80vw;
 max-width: 400px;
 height: 500px;
 background: #4a8280;
 -moz-border-radius: 20px;
 -webkit-border-radius: 20px;
 border-radius: 20px;
 -webkit-transform: translate(-50%, -50%);
 -ms-transform: translate(-50%, -50%);
 transform: translate(-50%, -50%);
}

/* .mailbg:before {
 content: "";
 position: absolute;
 right: 50%;
 top: 99%;
 width: 0;
 height: 0;
 border-top: 50px solid #2009f1;
 border-right: 30px solid transparent;
 border-left: 5px solid transparent;
 -webkit-transform: translate(0%, -0%);
 -ms-transform: translate(0%, -0%);
 transform: translate(0%, -0%);
 transform: rotate(0deg);
} */

label {
 font-size: 1.2em;
 font-family: 'Roboto Condensed', sans-serif;
 font-weight: bold;
}

.l1 {
 position: absolute;
 top: 20px;
 left: 5%;
}

.l2 {
 position: absolute;
 top: 120px;
 left: 5%;
}

.mailinput {
 position: absolute;
 top: 50px;
 box-sizing: border-box;
 border: none;
 padding: 5px;
 left: 50%;
 width: 90%;
 height: 50px;
 resize: none;
 font-size: 1.2em;
 font-family: 'Roboto Condensed', sans-serif;
 -webkit-transform: translate(-50%, -0%);
 -ms-transform: translate(-50%, -0%);
 transform: translate(-50%, -0%);
}

.mailinput:focus {
 outline: none;
}

.messtxt {
 position: absolute;
 top: 150px;
 box-sizing: border-box;
 border: none;
 padding: 5px;
 left: 50%;
 width: 90%;
 height: 250px;
 resize: none;
 font-size: 1.2em;
 font-family: 'Roboto Condensed', sans-serif;
 -webkit-transform: translate(-50%, -0%);
 -ms-transform: translate(-50%, -0%);
 transform: translate(-50%, -0%);
}

.messtxt:focus {
 outline: none;
}

.sendmess {
 position: absolute;
 top: 420px;
 left: 50%;
 -webkit-transform: translate(-50%, -0%);
 -ms-transform: translate(-50%, -0%);
 transform: translate(-50%, -0%);
 width: 90%;
 height: 50px;
 text-align: center;
 font-size: 1.2em;
 font-family: 'Roboto Condensed', sans-serif;
 font-weight: bold;
 color: white;
 background: red;
 line-height: 40px;
 cursor: pointer;
}

.sendmess:focus {
 outline: none;
}

.bar {
 position: absolute;
 width: auto;
 background: #fcda2f;
 top: 0%;
 left: 0;
 right: 100%;
 height: 100%;
 content: "";
 animation: sent 1.5s forwards;
 animation-delay: 0.2s;
}

@keyframes send {
 0% {
 right: 100%;
 }
 100% {
 right: 0%;
 }
}

.success {
 position: absolute;
 top: 120px;
 width: 80%;
 left: 50%;
 -webkit-transform: translate(-50%, -0%);
 -ms-transform: translate(-50%, -0%);
 transform: translate(-50%, -0%);
 text-align: center;
 font-size: 2em;
 font-family: 'Roboto Condensed', sans-serif;
 font-weight: bold;
 display: none;
}

.closemess {
 position: absolute;
 top: 330px;
 left: 50%;
 -webkit-transform: translate(-50%, -0%);
 -ms-transform: translate(-50%, -0%);
 transform: translate(-50%, -0%);
 width: 60%;
 height: 50px;
 text-align: center;
 font-size: 1.2em;
 font-family: 'Roboto Condensed', sans-serif;
 font-weight: bold;
 color: #fcda2f;
 background: #000;
 line-height: 40px;
 cursor: pointer;
 display: none;
}

.closemess:focus {
 outline: none;
}

.card {
 background: #e0e0e0;
 width: 160px;
 height: 120px;
 margin: 0 12px;
 box-shadow: 0 2px 0 -1px #bdbdbd, 0 4px 0 -2px #bdbdbd, 0 0 2px #bdbdbd;
 border-radius: 2px 2px 0 0;
 margin-bottom: 32px;
 display: inline-block;
 transition: all 0.5s ease-out;
 cursor: pointer;
}
.card:hover {
 box-shadow: 0 2px 0 -1px #bdbdbd, 0 4px 0 -2px #bdbdbd, 0 0 2px #bdbdbd, 0 8px 16px #bdbdbd;
}
.card:active {
 background: #bdbdbd;
 transition: all 0.2s;
 box-shadow: 0 2px 0 -1px #9e9e9e, 0 4px 0 -2px #9e9e9e, 0 0 2px #9e9e9e, 0 8px 16px #9e9e9e;
}
.card p {
 background: #e0e0e0;
 margin: 0;
 padding: 6px;
 font-size: 12px;
 transition: all 0.2s;
}
.card:active p {
 box-shadow: 0 4px 4px -4px #9e9e9e;
 background: #e0e0e0;
}
.card:after {
 content: '';
 display: block;
 background: #fafafa;
 width: 146px;
 height: 72px;
 margin-top: 8px;
 border-radius: 4px;
 transition: all 0.2s ease-in-out;
}
.card:active:after {
 background: #eee;
 box-shadow: 0 2px 8px #9e9e9e;
}

 </style>
</head>
<body>


<%!
	String mail;
	int t=0;
	String a ="";
	ArrayList<ArrayList<String>> classwork = new ArrayList<ArrayList<String>>();
	String pathname="",teachertext="";
%>
<%
	mail = request.getParameter("id");
%>

  
      <h1 style="
     display:block;
     background-color: #222e3a;
     color: white;
     text-align:center;
     position: absolute;
     float: right;
     top: -17px;
     right: 10px;
     padding: 4px;
      font-size:30px;
     ">
    
       <%=mail %>
    </h1>
    
<%! 
	HashMap<String,String> hm = new HashMap<String,String>();
	ArrayList<String> al = new ArrayList<String>();
	ArrayList<String> kk = new ArrayList<String>();
	ArrayList<String> qq = new ArrayList<String>();
%>

<p style="display: none;" id="preet"><%=mail %></p>
<%
	try
	{
	  String username = request.getParameter("id");
	  String p = request.getParameter("pass");
	  Class.forName("com.mysql.jdbc.Driver");
	  Connection con=DriverManager.getConnection("jdbc:mysql://localhost/smartclassroom","root0","root"); 
	  Statement st=con.createStatement();
	  String query="select * from student8signup";
      ResultSet rs=st.executeQuery(query);
      while(rs.next())
      {
    	   String admin = rs.getString("emailid");
    	   String pass  = rs.getString("password");
    	   hm.put(admin,pass);
    	   System.out.println(admin+" "+pass);
      }
	 con.close();
	 if(hm.containsKey(username) && hm.get(username).equals(p))
	 {
		
	 }
	 else
	 {
		 System.out.println("HELLO ERROR"+"/n"+hm+" "+username+"/n"+"/n"+p);
		 RequestDispatcher rd = request.getRequestDispatcher("Student9Login.jsp");
		 rd.forward(request,response);
	 }
	}
	catch(Exception e1)
	{
		System.out.println("ERROR"+e1);
	}
	System.out.println(hm);
%>

<%
    al = new ArrayList<String>();
	try
	{
	  String username = request.getParameter("id");
	  String p = request.getParameter("password");
	  Class.forName("com.mysql.jdbc.Driver");
	  Connection con=DriverManager.getConnection("jdbc:mysql://localhost/smartclassroom","root0","root"); 
	  Statement st=con.createStatement();
	  String query="select * from classlinker WHERE  studentid='"+mail+"';";
      ResultSet rs=st.executeQuery(query);
      while(rs.next())
      {
    	   String admin = rs.getString("classname");
    	   //String pass  = rs.getString("teacherpassword");
    	   al.add(admin);
    	   System.out.println(admin);
    	   //System.out.println(admin+" "+pass);
      }
	 con.close();
	}
	catch(Exception e1)
	{
		System.out.println("ERROR"+e1);
	}
	System.out.println(al);
%>


<%
        al = new ArrayList<String>();
        try
        {
          String username = request.getParameter("id");
          String p = request.getParameter("password");
          Class.forName("com.mysql.jdbc.Driver");
          Connection con=DriverManager.getConnection("jdbc:mysql://localhost/smartclassroom","root0","root"); 
          Statement st=con.createStatement();
          String query="select * from classlinker WHERE  studentid='"+mail+"';";
          ResultSet rs=st.executeQuery(query);
          while(rs.next())
          {
               String admin = rs.getString("classname");
               //String pass  = rs.getString("teacherpassword");
               al.add(admin);
               System.out.println(admin);
               //System.out.println(admin+" "+pass);
          }
         con.close();
        }
        catch(Exception e1)
        {
            System.out.println("ERROR"+e1);
        }
        System.out.println(al);
    %>


<%
	kk = new ArrayList<String>();
	try
	{
	  Class.forName("com.mysql.jdbc.Driver");
	  Connection con=DriverManager.getConnection("jdbc:mysql://localhost/smartclassroom","root0","root"); 
	  Statement st=con.createStatement();
	  String query="select * from quizz where studentid='"+mail+"';";
      ResultSet rs=st.executeQuery(query);
      while(rs.next())
      { 
    	   String url = rs.getString("teacherquizurl");
   		   kk.add(url);
      }
	  con.close();
	}
	catch(Exception e1)
	{
		System.out.println("ERROR"+e1);
	}
%>


<%
	classwork = new ArrayList<ArrayList<String>>();
	try
	{
		
	  Class.forName("com.mysql.jdbc.Driver");
	  Connection con=DriverManager.getConnection("jdbc:mysql://localhost/smartclassroom","root0","root"); 
	  Statement st=con.createStatement();
	  String query="select * from assignment WHERE studentid ='"+ mail +"';"; 
      ResultSet rs=st.executeQuery(query);
      System.out.println("................................");
      while(rs.next())
      { 
    	   String path = "/SmartClassroomProject/";
    	   ArrayList<String>   cw = new ArrayList<String>();
    	   String admin = path+ rs.getString("teacherassignmentpdf");
    	   String text = rs.getString("teacherassignmenttxt").replaceAll("@"," ");
    	   
    	   cw.add(admin);
    	   cw.add(text);
    	   
    	   classwork.add(cw);
      }
	 con.close();
	}
	catch(Exception e1)
	{
		System.out.println("ERROR"+e1);
	}
	for(int i=0;i<classwork.size();i++)
		System.out.println(classwork.get(i));

%>
 <div style="width: 20%;display: inline-block; margin-top: 1px;">
 <nav>
 <a id="p1" href="#">Classroom</a>
 <a id="p2" href="#">Timetable</a>
 <a id="p3" href="#">Attendance</a>
 <a id="p4" href="#">Quiz</a>
 <a id="p5" href="#">Assignments</a>
 <a id="p6" href="#">Exam portal</a>
 <a id="p7" href="#">Contact</a>
 <div id="pec1" class="animation pe1"></div>
 </nav>
 </div>
 
 
 <%!
 	ArrayList<String> def;
 %>
<%
		def = new ArrayList<String>();
		try
		{
		  Class.forName("com.mysql.jdbc.Driver");
		  Connection con=DriverManager.getConnection("jdbc:mysql://localhost/smartclassroom","root0","root"); 
		  Statement st=con.createStatement();
		  String qu="select * from timetable;" ;
		  ResultSet rs=st.executeQuery(qu);
	      while(rs.next())
	      { 
	    	   def.add(rs.getString("year"));
	    	   def.add(rs.getString("department"));
	    	   def.add(rs.getString("section"));
	    	   def.add(rs.getString("day1(10-11)"));
	    	   def.add(rs.getString("day1(11-12)"));
	    	   def.add(rs.getString("day1(2-3)"));
	    	   def.add(rs.getString("day1(3-4)"));
	    	   def.add(rs.getString("day2(10-11)"));
	    	   def.add(rs.getString("day2(11-12)"));
	    	   def.add(rs.getString("day2(2-3)"));
	    	   def.add(rs.getString("day2(3-4)"));
	    	   def.add(rs.getString("day3(10-11)"));
	    	   def.add(rs.getString("day3(11-12)"));
	    	   def.add(rs.getString("day3(2-3)"));
	    	   def.add(rs.getString("day3(3-4)"));
	    	   def.add(rs.getString("day4(10-11)"));
	    	   def.add(rs.getString("day4(11-12)"));
	    	   def.add(rs.getString("day4(2-3)"));
	    	   def.add(rs.getString("day4(3-4)"));
		  
	      }
			st.executeUpdate(qu);       	   
		    con.close();
		}
		catch(Exception e1)
		{
			System.out.println("ERROR"+e1);
		}
			
%>
 <div id="preth2" style="width: 70%;display: none;">
 
 <br><br>
 <table class="container" style="margin-top: -300px; margin-left: 80px; " >
 
 <thead>
 <tr>
 <th><h1>PERIOD</h1></th>
 <th><h1>10:00 - 11:00</h1></th>
 <th><h1>11:00 - 12:00</h1></th>
 <th><h1>2:00 - 3:00</h1></th>
 <th><h1>3:00 - 4:00</h1></th>
 </tr>
 </thead>
 <tbody>
 <tr>
 <td>DAY-1</td>
 <td ><a id="a1" href ="https://meet.google.com/lookup/alfhcwx6le" target="_blank"><%=def.get(3)%></a></td>
 <td><a id="a2" href ="https://meet.google.com/lookup/alfhcwx6le" target="_blank"><%=def.get(4)%></a></td>
 <td><a id="a3" href ="https://meet.google.com/lookup/alfhcwx6le" target="_blank"><%=def.get(5)%></a></td>
 <td><a id="a4" href ="https://meet.google.com/lookup/alfhcwx6le" target="_blank"><%=def.get(6)%></a></td>
 </tr>
 <tr>
 <td>DAY-2</td>
 <td><a id="b1" href ="https://meet.google.com/lookup/alfhcwx6le" target="_blank"><%=def.get(7)%></a></td>
 <td><a id="b2" href ="https://meet.google.com/lookup/alfhcwx6le" target="_blank"><%=def.get(8)%></a></td>
 <td><a id="b3" href ="https://meet.google.com/lookup/alfhcwx6le" target="_blank"><%=def.get(9)%></a></td>
 <td><a id="b4" href ="https://meet.google.com/lookup/alfhcwx6le" target="_blank"><%=def.get(10)%></a></td>
 </tr>
 <tr>
 <td>DAY-3</td>
 <td><a id="c1" href ="https://meet.google.com/lookup/alfhcwx6le" target="_blank"><%=def.get(11)%></a></td>
 <td><a id="c2" href ="https://meet.google.com/lookup/alfhcwx6le" target="_blank"><%=def.get(12)%></a></td>
 <td><a id="c3" href ="https://meet.google.com/lookup/alfhcwx6le" target="_blank"><%=def.get(13)%></a></td>
 <td><a id="c4" href ="https://meet.google.com/lookup/alfhcwx6le" target="_blank"><%=def.get(14)%></a></td>
 </tr>
 <tr>
 <td>DAY-4</td>
 <td><a id="d1" href ="https://meet.google.com/lookup/alfhcwx6le" target="_blank"><%=def.get(15)%></a></td>
 <td><a id="d2" href ="https://meet.google.com/lookup/alfhcwx6le" target="_blank"><%=def.get(16)%></a></td>
 <td><a id="d3" href ="https://meet.google.com/lookup/alfhcwx6le" target="_blank"><%=def.get(17)%></a></td>
 <td><a id="d4" href ="https://meet.google.com/lookup/alfhcwx6le" target="_blank"><%=def.get(18)%></a></td>
 </tr>
 <tr>
 <td>DAY-5</td>
 <td><a id="e1" href ="https://meet.google.com/lookup/alfhcwx6le" target="_blank"><%=def.get(15)%></a></td>
 <td><a id="e2" href ="https://meet.google.com/lookup/alfhcwx6le" target="_blank"><%=def.get(9)%></a></td>
 <td><a id="e3" href ="https://meet.google.com/lookup/alfhcwx6le" target="_blank"><%=def.get(11)%></a></td>
 <td><a id="e4" href ="https://meet.google.com/lookup/alfhcwx6le" target="_blank"><%=def.get(5)%><</a></td>
 </tr>
 </tbody>
 
 </table>
 </div> 


 
<div id="preth3" style="width: 70%;display: none; position: absolute;"> 
 <div>
 <br><br> <br><br> <br><br>
 <h1 style="color:#2e2e2e;font-family:Arial;">Enter Attendance Code</h1>
 <br> <br><br>
 <center style="width: 70%;position: absolute; top: 200px; left: 100px;">
 <div> 

 <input type='search' id="prelusu1" placeholder='Enter subject' style="background: white; width: 300px; height:40px; display: inline-block;">
 <br>
  <input type='search' id="prelusu2" placeholder='Enter code' style="background: white; width: 300px; height:40px; display: inline-block;"></div>
  <br><br><br>
 <button id="prelusu3"  style="position: absolute; background: red;color: white; display: inline-block; height:42px; width: 65px; 
 margin-top: -40px;"> Submit </button>
 </div>
 </center>
 </div> 
 </div>         

 <div id="preth4" style="width: 70%;display: none;position:absolute "> 
 <%
	for(int i=0;i<kk.size();i++)
	{
		pathname = kk.get(i);	
%>
 <br><br>
 
	 <div class="preethi">
	 <br><br>
	 <center>
	 	<a href =<%=pathname%>><button style="width: 230px; height: 50px; color: white; background-color: #ff0000;">Open Quiz</button></a>
	 </center>
	 <br><br>
	 </div>

 <%
 }
 %>
 </div>
 
 
 <div id="preth5" style="width: 70%;display: none;position:absolute  "> 
 <%
	for(int i=0;i<classwork.size();i++)
	{
		pathname = classwork.get(i).get(0);
		teachertext = classwork.get(i).get(1);
	
%>
 <br><br>
 <div class="preethi">
 <br>
 
 <h1>Upload Assignments</h1>
 <br>
 <center>
 <button style="width: 230px; height: 43px; background-color: #ff0000; color: white">Open Question</button>
 <input class="inputfile" id="file" type="file" name="file" data-multiple-caption="{count} files selected" multiple="multiple"/>
 <label for="file"><i class="fa fa-upload"></i><span>Upload File</span></label>
 
 <button style="width: 230px; height: 43px; background-color: #ff0000;color: white;">Submit</button>
 
 </center>
 <br>
 <br>
 </div>
 <%
 }
 %>
 
 </div>
 

 <div id="preth6" style="width: 70%;display: none; margin-top :100px"> 
 <div style="margin-top: -500px;">
 <h1 style="color: #2debd8;margin-top: -500px; margin-left: 50px;">Enter Examination Code</h1>
 
 <center style="margin-left: 0px;">

 <form  method="POST" action="redirectexam">
 <input type='search' placeholder='Enter code' name="ec" style="background: white; width: 300px; height:40px; display: inline-block;">
 <br>
 <input type='search' placeholder='Enter Subject' name="es" style="background: white; width: 300px; height:40px; display: inline-block;">
 <br>
 <input type='search' value=<%=mail %> placeholder='Enter Subject' name="em" style="display:none;">
 <br>
 <button style="position: absolute; background: red; color: white; display: inline-block; height:42px; width: 150px;margin-left: -40px;"> Submit </button>
 </form>
 </div>
 </center>
 </div> 
 </div>


<div id="preth7" style="width: 70%;display: none; ">
<div class="mailbg">
 <label class="l1" for="mailinput" style="color: #2debd8;">Teacher's Email:</label>
 <input class="mailinput" style="margin-left: 0px; margin-top: 0px;background-color: white;" aria-label="Your Email" autocomplete="on" type="email" placeholder="">
 <label class="l2" for="messtxt" style="color: #2debd8;">Your Message:</label>
 <textarea class="messtxt" aria-label="Your Message" placeholder=""></textarea>
 <button class="sendmess" aria-label="Send message">Send<div class="bar"></div></button>
 <div class="success">Message sent successfully.<br><br>Thanks!</div>
 <button class="closemess" aria-label="Close Form">Close</div></button>
</div>
</div>
<div id="preth1" style="width: 50%;display:inline-block; ">

 <div style="position: absolute; right: -200px; top: 0px;">
 <input id="cc" type='search' placeholder='Join Classroom' style="

 padding: 20px;
 display:block;
 background-color: white;
 color: black;
 text-align:center;
 position: absolute;
 top: 5px;
 right: 600px;
 width: 200px;
 
 ">
 <button style="
 
 padding: 12px;
 display:block;
 background-color:red;
 color: white;
 text-align:center;
 position: absolute;
 top: 23px;
 right: 530px;
 
 
 " id="pree"> Submit </button>
 
 
</div>
 
	  <center style="position: absolute; top: 200px;">
           <%
            
            t=0;
                for(int i=0;i<al.size();i++)
                {
                t=i;
                a="ooty?sub="+al.get(t)+"&mail="+mail;
                System.out.println(a);
            %>
         <div class="card">
         
 	 <a href=<%=a %>><h4 style="font-weight: bold"><%=al.get(t) %></h4></a> 
         </div>
        <%
                }
            %>
         </center>
      
</div>
 <script>
 var name = "pe1";
 var i = "preth1"
 document.getElementById("p1").addEventListener("click",
 ()=>{
 document.getElementById("pec1").classList.remove(name);
 document.getElementById("pec1").classList.add("pe1");
 document.getElementById(i).style.display = "none";
 console.log(document.getElementById(i));
 document.getElementById("preth1").style.display = "inline-block";
 i = "preth1";
 name = "pe1";

 } 
 )

 document.getElementById("p2").addEventListener("click",
 ()=>{
 document.getElementById("pec1").classList.remove(name);
 document.getElementById("pec1").classList.add("pe2");
 document.getElementById(i).style.display = "none";
 document.getElementById("preth2").style.display = "inline-block";
 i = "preth2"; 
 name = "pe2";
 } 
 )

 document.getElementById("p3").addEventListener("click",
 ()=>{
 document.getElementById("pec1").classList.remove(name);
 document.getElementById("pec1").classList.add("pe3");
 document.getElementById(i).style.display = "none";
 document.getElementById("preth3").style.display = "inline-block";
 i = "preth3"; 
 name = "pe3";
 } 
 )

 document.getElementById("p4").addEventListener("click",
 ()=>{
 document.getElementById("pec1").classList.remove(name);
 document.getElementById("pec1").classList.add("pe4");
 document.getElementById(i).style.display = "none";
 document.getElementById("preth4").style.display = "inline-block";
 i = "preth4"; 
 name = "pe4";
 } 
 )

 document.getElementById("p5").addEventListener("click",
 ()=>{
 document.getElementById("pec1").classList.remove(name);
 document.getElementById("pec1").classList.add("pe5");
 document.getElementById(i).style.display = "none";
 document.getElementById("preth5").style.display = "inline-block";
 i = "preth5"; 
 name = "pe5";
 } 
 )

 document.getElementById("p6").addEventListener("click",
 ()=>{
 document.getElementById("pec1").classList.remove(name);
 document.getElementById("pec1").classList.add("pe6");
 document.getElementById(i).style.display = "none";
 document.getElementById("preth6").style.display = "inline-block";
 i = "preth6";
 name = "pe6";
 } 
 )

 document.getElementById("p7").addEventListener("click",
 ()=>{
 document.getElementById("pec1").classList.remove(name);
 document.getElementById("pec1").classList.add("pe7");
 document.getElementById(i).style.display = "none";
 document.getElementById("preth7").style.display = "inline-block";
 i = "preth7";
 name = "pe7";
 } 
 )

 </script>
 <script>

 var inputs = document.querySelectorAll( '.inputfile' );
 Array.prototype.forEach.call( inputs, function( input )
 {
 var label = input.nextElementSibling,
 labelVal = label.innerHTML;
 
 input.addEventListener( 'change', function( e )
 {
 var fileName = '';
 if( this.files && this.files.length > 1 )
 fileName = ( this.getAttribute( 'data-multiple-caption' ) || '' ).replace( '{count}', this.files.length );
 else
 fileName = e.target.value.split( '\\' ).pop();
 
 if( fileName )
 label.querySelector( 'span' ).innerHTML = fileName;
 else
 label.innerHTML = labelVal;
 });
 });
 </script>
 
 <script>
 document.getElementById("pree").addEventListener("click",
		    
	    ()=>{
	        const xhr = new XMLHttpRequest();
	        var data = new FormData();
	        //data.append('name', 'pechi');
	        
	        xhr.open("GET","diet?mail="+document.getElementById("preet").
	        		innerText+"&subject="+document.getElementById("cc").value 
	        ,   true);
	        xhr.onload = function () {
	        	location.reload();
	        };
	        xhr.send();
	    }
	    
	    );
 </script>
 <script>
    document.getElementById("prelusu3").addEventListener("click",
    ()=>{
        var a = document.getElementById("prelusu1").value;
        var b = document.getElementById("prelusu2").value;
        var c = document.getElementById("preet").innerText;
        console.log(a);
        console.log(b);
        console.log(c);
        var xhttp = new XMLHttpRequest();
          		xhttp.open("GET", "http://localhost:9999/SmartClassroomProject/pechi"+"?mail="+c+"&sub="+a+"&code="+b, true);
          		xhttp.send();
        console.log("Hello");
    }
    )    
</script>
</body>
</html>