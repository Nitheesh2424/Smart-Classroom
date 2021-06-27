 <%@page import="java.util.*" %>
 <%@page import="java.sql.*" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <title>Teacher Tabs</title>
    <style>
nav {
	margin-left: -1px;
    margin-top:-40px ;    
	position: relative;
	width: 100%;
	height: 50px;
	background-color: #093028;
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
	/* margin-top: 2px; */
	margin-left: -10px;
}
a:nth-child(2) {
	width: 200px;
}
a:nth-child(3) {
	width: 200px;
}
a:nth-child(4) {
	width: 200px;
}
a:nth-child(5) {
	width: 170px;
}
a:nth-child(6) {
	width: 170px;
}
a:nth-child(7) {
	width: 200px;
}

nav .p1, a:nth-child(1):hover~.animation {
	width: 200px;
	left: 0px;
	background-color:  #72BEBA;
}
nav .p2, a:nth-child(2):hover~.animation {
	width: 185px;
	left: 195px;
	background-color:  #72BEBA;
}
nav .p3, a:nth-child(3):hover~.animation {
	width: 210px;
	left: 385px;
	background-color:  #72BEBA;
}
nav .p4, a:nth-child(4):hover~.animation {
	width: 180px;
	left: 600px;
	background-color:  #72BEBA;
}
nav .p5, a:nth-child(5):hover~.animation {
	width: 190px;
	left: 770px;
	background-color:  #72BEBA;
}

nav .p7 , a:nth-child(7):hover~.animation {
	width: 190px;
	left: 950px;
	background-color:  #72BEBA;
}
nav .p6, a:nth-child(6):hover~.animation {
	width: 190px;
	left: 1155px;
	background-color:  #72BEBA;
}
/*nav .p8, a:nth-child(8):hover~.animation {
	width: 145px;
	left: 1010px;
	background-color:  #72BEBA;
}
nav .p9, a:nth-child(9):hover~.animation {
	width: 190px;
	left: 1150px;
	background-color:  #72BEBA;
}*/
body {
	font-size: 12px;
	font-family: sans-serif;
	background: #093028;  /* fallback for old browsers */
background: -webkit-linear-gradient(to right, #237A57, #093028);  /* Chrome 10-25, Safari 5.1-6 */
background: linear-gradient(to right, #237A57, #093028); /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
 
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
  background-color: #2e9099;

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
	width: 70vw;
	max-width: 600px;
	height: 500px;
	background: #fcda2f;
	border-radius: 20px;
	-webkit-transform: translate(-50%, -50%);
	-ms-transform: translate(-50%, -50%);
	transform: translate(-50%, -50%);
}

.mailbg:before {
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
}

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
	color: #fcda2f;
	background: #000;
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
    background: #00A6FB;
    font-size: 17px;
}


.fl-table thead th:nth-child(odd) {
    color: #ffffff;
    background: #00A6FB;
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
	box-shadow: 10px 10px 10px  #fcda2f;
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
  background-color: #e74c3c;
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
	height: 550px;
	position: relative;
	box-shadow: 6px 6px 6px  #fcda2f;
}

.btn {
	  width: 138px;
	  height: 44px;
	  -moz-border-radius: 4px;
	  -webkit-border-radius: 4px;
	  border-radius: 4px;
    border: 1px solid #253737;
    background: rgb(216, 216, 103);
    background: -webkit-gradient(linear, left top, left bottom, from(#6da5a3), to(#416b68));
    background: -webkit-linear-gradient(top,rgb(216, 216, 103),rgb(216, 216, 103));
    background: -moz-linear-gradient(top,rgb(216, 216, 103), rgb(216, 216, 103));
    background: -ms-linear-gradient(top, rgb(216, 216, 103),rgb(216, 216, 103));
    background: -o-linear-gradient(top, rgb(216, 216, 103), rgb(216, 216, 103));
    background-image: -ms-linear-gradient(top, rgb(216, 216, 103) 0%, rgb(216, 216, 103) 100%);
    -webkit-border-radius: 6px;
    -moz-border-radius: 6px;
    border-radius: 6px;
    -webkit-box-shadow: rgba(255,255,255,0.1) 0 1px 0, inset rgba(255,255,255,0.7) 0 1px 0;
    -moz-box-shadow: rgba(255,255,255,0.1) 0 1px 0, inset rgba(255,255,255,0.7) 0 1px 0;
    box-shadow: rgba(255,255,255,0.1) 0 1px 0, inset rgba(255,255,255,0.7) 0 1px 0;
    text-shadow: #333333 0 1px 0;
    color: black;
    margin-left: 100px;
}

input {
	  background: rgba(255, 255, 255, 0.4) url(http://luismruiz.com/img/gemicon_name.png) no-repeat scroll 16px 16px; 
	  padding-left:45px;
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
	ArrayList<ArrayList<String>> al;
	ArrayList<String> all;
	String mail="";
	String sub="";
	int serialno=1;
	String id1="";
	String id2="";
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
      String query="select * from classlinker WHERE teacherid='"+ mail+ "'AND classname='"+ sub+"'";
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
        <a id="pec1">Post Classwork</a>
        <a id="pec2">Post Lab notes</a>
        <a id="pec3">Post Assignments</a>
        <a id="pec4">Create Quiz</a>
        <a id="pec5">Groupchat</a>
        <a id="pec6" style="display: none;">Groupchat</a>
        <a id="pec7">Students</a>
       
        
        <div class="animation p1" id="pechi"></div>
    </nav>
    



<div id="pe1">
	<br><br><br><br><br>
	<div class="preethi">
		<br>
		<!--  <h1>Attach the class work Notes</h1>
			<br> -->
			<center>
			<form>

			<input type="text" id="pdftxtpdfassignment" name="text" size="50" style="height: 50px; 
			position:relative; top: -2px; font-size: larger; " placeholder="Post Classwork">
			<input  id="pdfassignment" type="file" name="file" data-multiple-caption="{count} files selected" multiple="multiple"/>

			<br><br>

			</form>
				<button id ="bu" type="Submit" class="btn" name="Submit" value="Done">Submit </button>
			</center>
			<br>
			<br>
	</div>
	<br><br><br><br>
</div>

<div id="pe2" style="display: none;">
	<br><br><br><br><br>
	<div class="preethi">
		<br>
		 <!-- <h1>Attach the Lab Notes</h1>
			<br> -->
			<center>
			<form>
                <input type="text" id="os1" name="text" size="50" style="height: 50px; position:relative; top: -2px; font-size: larger;" placeholder="Post Lab Notes">
                <input  id="pd1" type="file" name="file" data-multiple-caption="{count} files selected" multiple="multiple"/>

			<br><br>
            </form>
            <button id ="bu1" type="Submit" class="btn" name="Submit" value="Done">Submit </button>
			</center>
			<br>
	</div>
	<br><br><br><br>
</div>

<div id="pe3" style="display: none;">

	<br><br><br><br><br>
	<div class="preethi">
			<br>
			
			<!-- <h1>Post the Assignments</h1>
			<br> -->
			<center>
			<form>
                <input type="text" id="os2" name="text" size="50" style="height: 50px; position:relative; top: -2px; font-size: larger;" placeholder="Post Assignments">
			
			<input  id="pd2" type="file" name="file" data-multiple-caption="{count} files selected" multiple="multiple"/>

			<br><br>
            </form>
            <button id ="bu2" type="Submit" class="btn" name="Submit" value="Done">Submit </button>
		</center>
			<br>
			<br>
	</div>
	
</div>

<div id="pe4" style="display: none;">
	<br><br><br><br><br>
	<div class="preethi">
			<br>
			<br>
			<center>
			<a href="https://docs.google.com/forms/u/0/">
                <button id ="bu" type="Submit" style="display: inline-block; height: 50px" 
                class="btn" name="Submit" value="Done">Go to Create Quiz</button></a>
                
			<form style="display: inline-block;">
				<input type="text" id="opp" name="text" size="50" style="height: 50px; position:relative; top: -2px; font-size: larger;" placeholder="Post Quiz Url">
			
            </form>
            <button id ="bu4" type="Submit" style="display: inline-block; height: 50px" class="btn" name="Submit" value="Done">Submit </button>
			</center>
			<br>
			<br>
	</div>
</div>

<div id="pe5" style="display: none;">
	<center>

		<br>
	<div  id="pech" style="background-color:#006158; border: 17px solid gainsboro; ">

		<div id="pm" style="background-color: #151e27; width: 600px; height: 500px; position: absolute;  overflow: scroll;">
			<br><br>
		</div>

	<div style="position:absolute; bottom: 0px;">
	
	
		<input type="text" id="pp" style=" height: 40px; width: 460px; background-color: turquoise;" > <i  id="muthu" class="fa fa-paper-plane"    style="font-size:28px; float: right; padding-left: 30px; color: ghostwhite;" aria-hidden="true"></i>
	</div>
	</div>
	
	</center>
</div>
<!-- 
<div id="pe6" style="display: none;">
	<center>

		<br><br><br>
	<div  id="pech">
	
		<div id="pm" style="background-color: thistle; width: 540px; height: 490px; position: absolute; top:10px; left :20px; border-radius: 4%; overflow: scroll;">
			<br><br>
					
		</div>
	
	<div style="position:absolute; bottom: 0px;">
	
	
		<input type="text" id="pp" style=" height: 40px; width: 360px; background-color: turquoise;" > <i  id="muthu" class="fa fa-paper-plane"  style="font-size:28px c" aria-hidden="true"></i>
	</div>
	</div>
	
	</center>
</div>
 -->
<div id="pe7" style="display: none;">
	<br><br><br><br>
	<div class="table-wrapper">
		<table class="fl-table">
			<thead>
			<tr>
				<th>S.No</th>
				<th>Student Name</th>
				<th>Register Number</th>
				<th>Mail Id</th>
				<th>Status</th>
			</tr>
			</thead>
			<tbody>
			<%
				for(int i=0;i<al.size();i++)
				{
					id1="tr"+i;
					id2="tb"+i;
			%>
				<tr id=<%=id1 %>>
					<td><%=i+1%></td>
					<td><%=al.get(i).get(0)%></td>
					<td><%=al.get(i).get(1)%></td>
					<td><%=al.get(i).get(2)%></td>
					<td><button id=<%=id2 %> style="background-color: red;                     
					height: 30px;" type="Submit" class="btn" name="Submit"                    
					value="Done">Suspend</button></td>
				</tr>
			<%
				}
			%>
			<tbody>
		</table>
		<p id ="loop" style="display:none"><%=al.size() %></p>
	</div>
</div>
<script>

var inputs = document.querySelectorAll( '.inputfile' );
Array.prototype.forEach.call( inputs, function( input )
{
	var label	 = input.nextElementSibling,
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
        document.getElementById("bu").addEventListener("click",
        
        ()=>{
            var a = document.getElementById("pdfassignment").value.split('fakepath\\');
            var st = "";
           
            let a1= document.getElementById("shall1").innerText;
            let a2= document.getElementById("shall2").innerText;
            let a3= document.getElementById("pdftxtpdfassignment").value;
            a3=a3.replaceAll(" ","@");
            st+=a[1];
            
            window.location.href = "http://localhost:9999/SmartClassroomProject/lu1?mail="+a1+"&sub="+a2+"&filetext="+a3
            		+"&filename="+st;
          
            
            console.log(a1);
            console.log(a2);
            console.log(a3);
        }

        )
    </script>
    
    
<script>
        document.getElementById("bu1").addEventListener("click",
        
        ()=>{
            var a = document.getElementById("pd1").value.split('fakepath\\');
            var st = "";
           
            let a1= document.getElementById("shall1").innerText;
            let a2= document.getElementById("shall2").innerText;
            let a3= document.getElementById("os1").value;
            a3=a3.replaceAll(" ","@");
            st+=a[1];
            
            
            window.location.href = "http://localhost:9999/SmartClassroomProject/lu2?mail="+a1+"&sub="+a2+"&filetext="+a3
            		+"&filename="+st;
           
            console.log(a1);
            console.log(a2);
            console.log(a3);
        }
        )
    </script>
<script>
        document.getElementById("bu2").addEventListener("click",
        
        ()=>{
            var a = document.getElementById("pd2").value.split('fakepath\\');
            var st = "";
            let a1= document.getElementById("shall1").innerText;
            let a2= document.getElementById("shall2").innerText;
            let a3= document.getElementById("os2").value;
            a3=a3.replaceAll(" ","@");
            st+=a[1];
            
            
            window.location.href = "http://localhost:9999/SmartClassroomProject/lu3?mail="+a1+"&sub="+a2+"&filetext="+a3
            		+"&filename="+st;
            
            console.log(a1);
            console.log(a2);
            console.log(a3);
        }

        )
    </script>
   
<script>
        document.getElementById("bu4").addEventListener("click",
        
        ()=>{
            let a1= document.getElementById("shall1").innerText;
            let a2= document.getElementById("shall2").innerText;
            let a3= document.getElementById("opp").value;
            a3=a3.replaceAll(" ","@");
           
            window.location.href = "http://localhost:9999/SmartClassroomProject/lu4?mail="+a1+"&sub="+a2+"&filetext="+a3;
           
            console.log(a1);
            console.log(a2);
            console.log(a3);
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
    
        a6.addEventListener("click",
            ()=>{
                document.getElementById("pechi").classList.remove(name);
                document.getElementById("pechi").classList.add("p6");
                document.getElementById(pe).style.display = "none";
				document.getElementById("pe6").style.display = "block";
				pe = "pe6";
				name = "p6";
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
    

	</script>   
   <script>
   var itr = parseInt(document.getElementById("loop").innerText);
		   for(var i=0;i<itr;i++)
			{
			   let id1 = "tr"+i;
			   let id2 = "tb"+i;
		         document.getElementById(id2).addEventListener("click",
		        	       
	        	        ()=>{
	        	        	let a = document.getElementById(id1);
	        	        	console.log("hello"+" "+a+" "+itr);
	        	    		a.style.display="none";
	        	        }
	        	        )
			}
   
   </script>

</body>
</html>