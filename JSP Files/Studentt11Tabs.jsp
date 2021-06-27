 <%@page import="java.util.*" %>
 <%@page import="java.sql.*" %>



<!DOCTYPE html>
<html lang="en">
<head>
 <meta charset="UTF-8">
 <meta name="viewport" content="width=device-width, initial-scale=1.0">
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
 <title>Student Tabs</title>
 <style>
nav {
 margin-left: -1px;
 margin-top:-40px ; 
 position: relative;
 width: 1346px;
 height: 50px;
 background-color: #11998e;
 border-radius: 8px;
 font-size: 0;
}
nav a {
 line-height: 50px;
 height: 100%;
 font-size: 15px;
 display: inline-block;
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
 height: 100%;
 top: 0;
 z-index: 0;
 transition: all .5s ease 0s;
 border-radius: 8px;
}
a:nth-child(1) {
 width: 200px;
 margin-left: -10px;
}
a:nth-child(2) {
 width: 110px;
}
a:nth-child(3) {
 width: 160px;
}
a:nth-child(4) {
 width: 80px;
}
a:nth-child(5) {
 width: 120px;
}
a:nth-child(6) {
 width: 160px;
}
a:nth-child(7) {
 width: 190px;
}
a:nth-child(8) {
 width: 140px;
}
a:nth-child(9) {
 width: 190px;
}
nav .p1, a:nth-child(1):hover~.animation {
 width: 180px;
 left: 0;
 background-color: #72BEBA;
}
nav .p2, a:nth-child(2):hover~.animation {
 width: 120px;
 left: 180px;
 background-color: #72BEBA;
}
nav .p3, a:nth-child(3):hover~.animation {
 width: 160px;
 left: 300px;
 background-color: #72BEBA;
}
nav .p4, a:nth-child(4):hover~.animation {
 width: 100px;
 left: 450px;
 background-color: #72BEBA;
}
nav .p5, a:nth-child(5):hover~.animation {
 width: 0px;
 left: 540px;
 background-color: #72BEBA;
}

nav .p6 , a:nth-child(6):hover~.animation {
 width: 160px;
 left: 660px;
 background-color: #72BEBA;
}
nav .p7, a:nth-child(7):hover~.animation {
 width: 190px;
 left: 820px;
 background-color: #72BEBA;
}
nav .p8, a:nth-child(8):hover~.animation {
 width: 145px;
 left: 1010px;
 background-color: #72BEBA;
}
nav .p9, a:nth-child(9):hover~.animation {
 width: 190px;
 left: 1150px;
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
 font-family: 'Cherry Swash', cursive;
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

body {
 background-color:#2c3e50;

 font-family: 'helvetica', 'verdana', sans-serif;
 font-size: 16px;
 padding-top: 40px;
}
h1, p {
 text-align: center;
 color: #fff;
 margin: 0 auto;
 max-width: 700px;
}

div#container {
 display: table;
 
 /* I want the whole search box
 to be exactly this wide. */
 width: 400px;
 
 margin: 50px auto 0;
}
div#container div.cell {
 display: table-cell;
}
div#container div.cell:last-child {
 /* Makes sure this cell is only wide enough
 for the button label. */
 width: 1px;
}

input[type=search], div.button { 
 width: 100%;
 height: 35px;

 -moz-box-sizing: border-box;
 box-sizing: border-box;
 
 font-family: inherit;
 font-size: inherit;
}

input[type=search] {
 margin: 0;
 padding: 0 10px;
 
 background-color: #f8f8f8;
 
 border: 0;
 border-top-left-radius: 5px;
 border-bottom-left-radius: 5px;
}

div.button {
 line-height: 35px;

 margin: 0;
 padding: 0 20px;

 color: #fff;
 background-color: #FF1717;
 font-weight: bold;
 
 border-top-right-radius: 5px;
 border-bottom-right-radius: 5px;
 
 white-space: nowrap;
}


button {
 padding: 0;
 border: 0;
 background: none;
}

.mailbg {
 position: absolute;
 left: 50%;
 width: 50vw;
 max-width: 400px;
 height: 500px;
 background: #4a8280;
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
 border-top: 50px solid #fcda2f;
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
 color: white;
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
 color:white
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
 background-color:red;
 line-height: 40px;
 cursor: pointer;
 background-color:red
}

.sendmess:focus {
 outline: none;
}

.bar {
 position: absolute;
 width: auto;
 
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
 background:red;
 line-height: 40px;
 cursor: pointer;
 display: none;
}

.closemess:focus {
 outline: none;
}

.table-wrapper{
 margin: 10px 70px 70px;
 box-shadow: 0px 35px 50px rgba( 0, 0, 0, 0.2 );
}

.fl-table {
 border-radius: 5px;
 font-size: 12px;
 font-weight: normal;
 border: none;
 border-collapse: collapse;
 width: 100%;
 max-width: 100%;
 white-space: nowrap;
 background-color: white;
}

.fl-table td, .fl-table th {
 text-align: center;
 padding: 8px;
}

.fl-table td {
 border-right: 1px solid #f8f8f8;
 font-size: 14px;
}

.fl-table thead th {
 color: #ffffff;
 background: #11998e;
 font-size: 17px;
}


.fl-table thead th:nth-child(odd) {
 color: #ffffff;
 background: #11998e;
}

.fl-table tr:nth-child(even) {
 background: #F8F8F8;
}

/* Responsive */

@media (max-width: 767px) {
 .fl-table {
 display: block;
 width: 100%;
 }
 .table-wrapper:before{
 content: "Scroll horizontally >";
 display: block;
 text-align: right;
 font-size: 11px;
 color: white;
 padding: 0 0 10px;
 }
 .fl-table thead, .fl-table tbody, .fl-table thead th {
 display: block;
 }
 .fl-table thead th:last-child{
 border-bottom: none;
 }
 .fl-table thead {
 float: left;
 }
 .fl-table tbody {
 width: auto;
 position: relative;
 overflow-x: auto;
 }
 .fl-table td, .fl-table th {
 padding: 20px .625em .625em .625em;
 height: 60px;
 vertical-align: middle;
 box-sizing: border-box;
 overflow-x: hidden;
 overflow-y: auto;
 width: 120px;
 font-size: 13px;
 text-overflow: ellipsis;
 }
 .fl-table thead th {
 text-align: left;
 border-bottom: 1px solid #f7f7f9;
 background:#497676;
 }
 .fl-table tbody tr {
 display: table-cell;
 }
 .fl-table tbody tr:nth-child(odd) {
 background: none;
 }
 .fl-table tr:nth-child(even) {
 background: transparent;
 }
 .fl-table tr td:nth-child(odd) {
 background: #F8F8F8;
 border-right: 1px solid #E6E4E4;
 }
 .fl-table tr td:nth-child(even) {
 border-right: 1px solid #E6E4E4;
 }
 .fl-table tbody td {
 display: block;
 text-align: center;
 }
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
 background-color: #4a8280;
}

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
 border: 1px solid #c0392b;
 font-size: 1.25em;
 font-weight: 600;
 color: white;
 background-color:#ff0000;
 display: inline-block;
 cursor: pointer;
 letter-spacing: 0.0625em;
 text-shadow: 0 1px 0 rgba(0, 0, 0, 0.15);
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

#pech{
 background-color: white;
 width: 600px;
 height: 525px;
 position: relative;
 box-shadow: 6px 6px 6px #fcda2f;
}
 </style>
</head>
<body>

    
<%! 
	ArrayList<ArrayList<String>> al;
	ArrayList<String> all;
	String mail="";
	String sub="";
	int serialno=1;
%>

<%
	try
	{
	  all = new ArrayList<String>();
	  al = new ArrayList<ArrayList<String>>();
	  mail=request.getParameter("mail");
	  sub=request.getParameter("sub");
	  Class.forName("com.mysql.jdbc.Driver");
	  Connection con=DriverManager.getConnection("jdbc:mysql://localhost/smartclassroom","root0","root"); 
	  Statement st=con.createStatement();
      String query="select * from classlinker WHERE classname='"+ sub+"'";
      ResultSet rs=st.executeQuery(query);
      while(rs.next())
      {
    	   String sid = rs.getString("studentid");
    	   all.add(sid);
      }
	 con.close();
	}
	catch(Exception e1)
	{
		System.out.println("ERROR"+e1);
	}
	System.out.println(all);
%>

<p id="shall1" style="display:none"><%=mail %></p>
<p id="shall2" style="display:none"><%=sub %></p>
<%
	for(int i=0;i<all.size();i++)
	{
		try
		{
		  
		  Class.forName("com.mysql.jdbc.Driver");
		  Connection con=DriverManager.getConnection("jdbc:mysql://localhost/smartclassroom","root0","root"); 
		  Statement st=con.createStatement();
		  String query="select * from student8signup WHERE emailid='"+ all.get(i)+"'";
		  ResultSet rs=st.executeQuery(query);
		  while(rs.next())
		  {
			   String a = rs.getString("studentname");
			   String b = rs.getString("registernumber");
			   String c = rs.getString("emailid");
			   ArrayList<String> sk = new ArrayList<String>();
			   sk.add(a);
			   sk.add(b);
			   sk.add(c);
			   al.add(sk);
			   
		  }
		 con.close();
		}
		catch(Exception e1)
		{
			System.out.println("ERROR"+e1);
		}
	}

	for(int i=0;i<al.size();i++)
	{
		System.out.println(al.get(i));
	}
%>

 <nav>
 <a id="pec1">Classwork notes</a>
 <a id="pec2">Lab notes</a>
 <a id="pec3">Assignments</a>
 <a id="pec4">Quiz</a>
 <a id="pec5" style="color:#34495e">.</a>
 <a id="pec6">Groupchat</a>
 <a id="pec7">Contact teacher</a>
 <a id="pec8">Enter exam</a>
 <a id="pec9">View classmates</a>
 <div class="animation p1" id="pechi"></div>
 </nav>
 
 
<%!
	ArrayList<ArrayList<String>> classwork = new ArrayList<ArrayList<String>>();
	String pathname="",teachertext="";

%>

<%
	classwork = new ArrayList<ArrayList<String>>();
	try
	{
		
	  Class.forName("com.mysql.jdbc.Driver");
	  Connection con=DriverManager.getConnection("jdbc:mysql://localhost/smartclassroom","root0","root"); 
	  Statement st=con.createStatement();
	  String query="select * from classworknotes WHERE studentid ='"+ mail +"' and subjectname='"+sub+"'"; 
      ResultSet rs=st.executeQuery(query);
      System.out.println("................................");
      
      while(rs.next())
      { 
    	   String path = "/SmartClassroomProject/";
    	   ArrayList<String>   cw = new ArrayList<String>();
    	   String admin = path+ rs.getString("teacherclasswork");
    	   String text = rs.getString("teacherclassworktext").replaceAll("@"," ");
    	   
    	   cw.add(admin);
    	   cw.add(text);
    	   
    	   classwork.add(cw);
    	   //System.out.println(admin+"  "+text);
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



<div id="pe1">
<%
	for(int i=0;i<classwork.size();i++)
	{
		pathname = classwork.get(i).get(0);
		teachertext = classwork.get(i).get(1);
	
%>

	 <br><br><br><br><br>
	 <div class="preethi">
	 <br>
	 <h1> <%=teachertext %></h1>
	 <br>
	 <center>
	 <a href=<%=pathname %>>
	 <button style="width: 230px; height: 50px; background-color: #ff0000; color:white"> View PDF </button>
	 </a>
	 </center>
	 <br>
	 <br>
	 </div>
	
 
 <%
 }
 %>
</div>


<%
	classwork = new ArrayList<ArrayList<String>>();
	try
	{
		
	  Class.forName("com.mysql.jdbc.Driver");
	  Connection con=DriverManager.getConnection("jdbc:mysql://localhost/smartclassroom","root0","root"); 
	  Statement st=con.createStatement();
	  String query="select * from labnotes WHERE studentid ='"+ mail +"' and subjectname='"+sub+"'"; 
      ResultSet rs=st.executeQuery(query);
      System.out.println("................................");
      
      while(rs.next())
      { 
    	   String path = "/SmartClassroomProject/";
    	   ArrayList<String>   cw = new ArrayList<String>();
    	   String admin = path+ rs.getString("teacherclasswork");
    	   String text = rs.getString("teacherclassworktext").replaceAll("@"," ");
    	   
    	   cw.add(admin);
    	   cw.add(text);
    	   
    	   classwork.add(cw);
    	   //System.out.println(admin+"  "+text);
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



<div id="pe2" style="display: none;">
<%
	for(int i=0;i<classwork.size();i++)
	{
		pathname = classwork.get(i).get(0);
		teachertext = classwork.get(i).get(1);
	
%>

	 <br><br><br><br><br>
	 <div class="preethi">
	 <br>
	 <h1> <%=teachertext %></h1>
	 <br>
	 <center>
	 <a href=<%=pathname %>>
	 <button style="width: 230px; height: 50px; background-color: #ff0000; color:white"> View PDF </button>
	 </a>
	 </center>
	 <br>
	 <br>
	 </div>
	
 
 <%
 }
 %>
</div>


<%
	classwork = new ArrayList<ArrayList<String>>();
	try
	{
		
	  Class.forName("com.mysql.jdbc.Driver");
	  Connection con=DriverManager.getConnection("jdbc:mysql://localhost/smartclassroom","root0","root"); 
	  Statement st=con.createStatement();
	  String query="select * from assignment WHERE studentid ='"+ mail +"' and subjectname='"+sub+"'"; 
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



<div id="pe3" style="display: none;">

<%
	for(int i=0;i<classwork.size();i++)
	{
		pathname = classwork.get(i).get(0);
		teachertext = classwork.get(i).get(1);
	
%>

 <br><br><br><br><br>
 <div class="preethi">
 <br>
 
 <h1>Upload Assignments</h1>
 <br>
 <center>
 <button style="width: 230px; height: 54px; background-color: red; color:white">Open Question</button>
  <input class="inputfile" id="file" type="file" name="file" data-multiple-caption="{count} files selected" multiple="multiple"/>
 <label for="file"><i class="fa fa-upload"></i><span>Upload File</span></label>
 
 <button style="width: 230px; height: 54px; background-color: red; color:white">Submit</button>
 
 </center>
 <br>
 <br>
 </div>
 
 
 <%
 }
 %>
 
</div>

<%
	classwork = new ArrayList<ArrayList<String>>();
	try
	{
		
	  Class.forName("com.mysql.jdbc.Driver");
	  Connection con=DriverManager.getConnection("jdbc:mysql://localhost/smartclassroom","root0","root"); 
	  Statement st=con.createStatement();
	  String query="select * from quizz WHERE studentid ='"+ mail +"' and subjectname='"+sub+"'"; 
      ResultSet rs=st.executeQuery(query);
      System.out.println("................................");
      
      while(rs.next())
      { 
    	   String path = "/SmartClassroomProject/";
    	   ArrayList<String>   cw = new ArrayList<String>();
    	   String admin = rs.getString("teacherquizurl");
    	  // String text = rs.getString("teacherclassworktext").replaceAll("@"," ");
    	   
    	   cw.add(admin);
    	  // cw.add(text);
    	   
    	   classwork.add(cw);
    	   //System.out.println(admin+"  "+text);
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


<div id="pe4" style="display: none;">
 
<%
	for(int i=0;i<classwork.size();i++)
	{
	
		pathname = classwork.get(i).get(0);
		
	
%>

	 <br><br><br><br><br>
	 <div class="preethi">
	 <br>
	
	 <br>
	 <center>
	 <a href=<%=pathname %>>
	 <button style="width: 230px; height: 50px; background-color: red; color:white"> Open quiz </button>
	 </a>
	 </center>

	 <br>
	 </div>
	
 
 <%
 }
 %>
</div>

<div id="pe5" style="display: none;">
 <br><br><br><br><br>
 <div class="preethi">
 <br>
 <br>
 <center>
 <button style="width: 230px; height: 50px; background-color:red; color:white ">open quiz</button>
 </center>
 <br>
 <br>
 </div>
 <br><br><br><br>
</div>

<div id="pe6" style="display: none;">
	<center>

		<br>
	<div  id="pech" style="background-color:#006158; border: 17px solid gainsboro; ">

		<div id="pm" style="background-color:#17212d; width: 600px; height: 500px; position: absolute;  overflow: scroll;">
			<br><br>
		</div>

	<div style="position:absolute; bottom: 0px;">
	
	
		<input type="text" id="pp" style=" height: 40px; width: 460px; background-color: turquoise;" > <i  id="muthu" class="fa fa-paper-plane"    style="font-size:28px; float: right; padding-left: 30px; color: ghostwhite;" aria-hidden="true"></i>
	</div>
	</div>
	
	</center>
</div>

<div id="pe7" style="display: none;">
 <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
 <div class="mailbg">
 <label class="l1" for="mailinput" style="color: #E6E4E4;">Your Email:</label>
 <input class="mailinput" aria-label="Your Email" style="color: black;" autocomplete="on" type="email" placeholder="">
 <label class="l2" for="messtxt" style="color: #ecf0f1;">Your Message:</label>
 <textarea class="messtxt" aria-label="Your Message" style="color: black;" placeholder=""></textarea>
 <button class="sendmess" aria-label="Send message" style="color: #ecf0f1;">Send<div class="bar"></div></button>
 <div class="success">Message sent successfully.<br><br>Thanks!</div>
 <button class="closemess" aria-label="Close Form">Close</div></button>
 </div>
</div>

<div id="pe8" style="display: none;">
 <br><br><br><br><br>
<h1>Enter Exam Code</h1>
<div id='container'> 
 
 
 <div class='cell'><input type='search' placeholder='Enter Subject'></div>
 
 </div>
 
<div id='container'> 
 
 <div class='cell'><input type='search' placeholder='Enter code'></div>
</div>

<div id='container'> 
 <center>
 <div class='cell'><div class='button' style="text-align: center; width: 200px;">Start Test</div></div>
 </center>
</div>
</div>



<div id="pe9" style="display: none;">
 <br><br><br><br>
 <div class="table-wrapper">
 <table class="fl-table">
 <thead>
 <tr>
 <th>S.No</th>
 <th>Student Name</th>
 <th>Register Number</th>
 <th>Mail Id</th>

 </tr>
 </thead>
 <tbody>
 <%
				for(int i=0;i<al.size();i++)
				{
			%>
				<tr>
					<td><%=i+1%></td>
					<td><%=al.get(i).get(0)%></td>
					<td><%=al.get(i).get(1)%></td>
					<td><%=al.get(i).get(2)%></td>

				</tr>
			<%
				}
			%>
 
 <tbody>
 </table>
 </div>
</div>
 
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

		document.getElementById("muthu").addEventListener("click",
				()=>{
						/*document.getElementById("pm").innerHTML+=
						
						'<div class="Me" style="width: 300px; position: absolute; right: 0px;  background-color: #8dc3e8; border-radius: 15%;">'+
				'<h4>'+ document.getElementById("pp").value +'</h4>'+
				'<br>'+
				'<p style="position: absolute; left: 110px; color: red;"> ~Pechi </p>'+
			'</div>'+
			'<br><br><br> <br><br><br>'*/
			let a1= document.getElementById("shall1").innerText;
            let a2= document.getElementById("shall2").innerText;
            let a3= document.getElementById("pp").value;
            console.log(a1);
            console.log(a2);
            console.log(a3);
            a3=a3.replaceAll(" ","@");
            
            /*document.getElementById("pp").value ="";*/
			  var xhttp = new XMLHttpRequest();
			 xhttp.onreadystatechange = function() {
			      if (this.readyState == 4 && this.status == 200) {
			    	  document.getElementById("pm").innerHTML = xhttp.responseText;
			         // Typical action to be performed when the document is ready:
			        // document.getElementById("unique").innerHTML += xhttp.responseText;
			      }
			    };
			    
			    
			    
	           		xhttp.open("GET", "http://localhost:9999/SmartClassroomProject/ridingtomo?mail="+a1+"&sub="+a2+"&message="+a3, true);
	           		xhttp.send();

				}
		)
	</script>

 <script>
 
 var name = "start-home"
 var pe = "pe1";
 var a1 = document.getElementById("pec1");
 var a2 = document.getElementById("pec2");
 var a3 = document.getElementById("pec3");
 var a4 = document.getElementById("pec4");
 var a5 = document.getElementById("pec5");
 var a6 = document.getElementById("pec6");
 var a7 = document.getElementById("pec7");
 var a8 = document.getElementById("pec8");
 var a9 = document.getElementById("pec9");
 a1.addEventListener("click",
 ()=>{
 document.getElementById("pechi").classList.remove(name);
 document.getElementById("pechi").classList.add("p1");
 
 document.getElementById(pe).style.display = "none";
 document.getElementById("pe1").style.display = "block";
 pe = "pe1";
 name = "p1";
 }
 );
 
 a2.addEventListener("click",
 ()=>{
 document.getElementById("pechi").classList.remove(name);
 document.getElementById("pechi").classList.add("p2");
 document.getElementById(pe).style.display = "none";
 document.getElementById("pe2").style.display = "block";
 pe = "pe2";
 name = "p2";
 }
 );
 
 a3.addEventListener("click",
 ()=>{
 document.getElementById("pechi").classList.remove(name);
 document.getElementById("pechi").classList.add("p3");
 document.getElementById(pe).style.display = "none";
 document.getElementById("pe3").style.display = "block";
 pe = "pe3";
 name = "p3";
 }
 );
 
 a4.addEventListener("click",
 ()=>{
 document.getElementById("pechi").classList.remove(name);
 document.getElementById("pechi").classList.add("p4");
 document.getElementById(pe).style.display= "none";
 document.getElementById("pe4").style.display= "block";
 pe = "pe4";
 name = "p4";
 }
 );
 
 a5.addEventListener("click",
 ()=>{
 document.getElementById("pechi").classList.remove(name);
 document.getElementById("pechi").classList.add("p5");
 document.getElementById(pe).style.display = "none";
 document.getElementById("pe5").style.display = "block";
 pe = "pe5";
 name = "p5";
 }
 );
 
 a6.addEventListener("click",
 ()=>{
 document.getElementById("pechi").classList.remove(name);
 document.getElementById("pechi").classList.add("p6");
 document.getElementById(pe).style.display = "none";
 document.getElementById("pe6").style.display = "block";
 pe = "pe6";
 name = "p6";
 let a1= document.getElementById("shall1").innerText;
 let a2= document.getElementById("shall2").innerText;
 let a3= document.getElementById("pp").value;
 console.log(a1);
 console.log(a2);
 console.log(a3);
 a3=a3.replaceAll(" ","@");
 
 /*document.getElementById("pp").value ="";*/
	 var xhttp = new XMLHttpRequest();
	 xhttp.onreadystatechange = function() {
	      if (this.readyState == 4 && this.status == 200) {
	    	  document.getElementById("pm").innerHTML = xhttp.responseText;
	         // Typical action to be performed when the document is ready:
	        // document.getElementById("unique").innerHTML += xhttp.responseText;
	      }
	    };
		xhttp.open("GET", "http://localhost:9999/SmartClassroomProject/displaychat?mail="+a1+"&sub="+a2+"&message="+a3, true);
		xhttp.send();
 
 }
 );
 
 a7.addEventListener("click",
 ()=>{
 document.getElementById("pechi").classList.remove(name);
 document.getElementById("pechi").classList.add("p7");
 document.getElementById(pe).style.display = "none";
 document.getElementById("pe7").style.display = "block";
 pe = "pe7";
 name = "p7";
 }
 );
 
 a8.addEventListener("click",
 ()=>{
 document.getElementById("pechi").classList.remove(name);
 document.getElementById("pechi").classList.add("p8");
 document.getElementById(pe).style.display= "none";
 document.getElementById("pe8").style.display= "block";
 pe = "pe8";
 name = "p8";
 }
 );
 
 a9.addEventListener("click",
 ()=>{
 document.getElementById("pechi").classList.remove(name);
 document.getElementById("pechi").classList.add("p9");
 document.getElementById(pe).style.display = "none";
 document.getElementById("pe9").style.display= "block";
 pe = "pe9";
 name = "p9";
 }
 );
 </script>

</body>
</html>
