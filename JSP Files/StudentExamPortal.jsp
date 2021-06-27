<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Exam Portal</title>
	<style type="text/css">
	div#box {
		height: 250px;
		width: 300px;
        background-color: #11998e;
		border: 15px solid #11998e;

	}
	
    #wrapper {
	  text-align:center;
	  border:1px solid #7F7F7F;
	  width: 90px;
	  height: 80px;
	  margin:25px auto;
	  background-color:#E3E4E4;
	}

	#myTimer {
	  font:64px Tahoma bold;
	  display:block;
	}

	button {
	  width:125px;
	  padding:10px;
	}

	.btnEnable {
	  background-color:#02d94a;
	  border:1px solid #97DE4C;
	  color:#232323;
	  cursor:pointer;
	}

	.btnDisable {
	  background-color:#E6F9D2;
	  border:1px solid #DD3939;
	  color:#232323;
	  cursor:wait;
	}
    .answer{
			height: 500px;
			width: 700px;
			overflow: scroll;
		}
		body
		{
			  background: #11998e;  
background: -webkit-linear-gradient(to right, #38ef7d, #11998e);  
background: linear-gradient(to right, #38ef7d, #11998e); 
			
		}
		
    </style>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
<body>
<%!
	String questionpaper="",sub="",mail="",qp="";

%>
<%
	questionpaper = "http://localhost:9999/SmartClassroomProject/"+(String)session.getAttribute("questionpaper");
	mail = (String)session.getAttribute("mail");
	sub  = (String)session.getAttribute("subject");
	qp   = (String)session.getAttribute("questionpaper");

%>
<p id="pp1" style="display:none"><%=mail %></p>
<p id="pp2" style="display:none"><%=sub %></p>
<p id="pp3" style="display:none"><%=qp %></p>
	<!-- <div id = home></div>
	<script type="text/javascript">
		var name = "start-home";
		var exam = "exam1";
		var a1 = document.getElementbyId("ex1");
		var a2 = document.getElementbyId("ex2");
		a1.addEventListener("click", ()=>{
			document.getElementbyId("home").classList.remove(name);
			document.getElementbyId("home").classList.add("exam2");

			document.getElementbyId("exam").style.display = "none";
			document.getElementbyId("exam2").style.display = "block";
			exam = "exam2";
			name = "exam2";
		})
	</script> -->
<div id="pec1">
    
	<div id = "exam1">
	<center>
        <div id = "box"  style="position: absolute; top: 80px; left:500px">
            <video autoplay="true" id="videoElement" style="width: 300px; height: 250px;">
            
            </video>
        </div>
	
	<button id = ex1 style="position: absolute;top:400px; left:600px; height: 40px; width: 100px; color: white; background: red;">Enter Test</button>
	</center>
    </div>
</div>

	<!-- <div id = "exam2">
		<div>Hello!</div>
    </div> -->
    <div id="pec2" style="display: none">
    <div style="position: relative; left: 179px; top: 200px; font-size: 60px; font-family: Arial; ">YOUR TEST STARTS IN: </div>
	<div id="wrapper" style="position: relative; left: 250px; top: 100px;">
	  <div id="myTimer"></div>
	  <button type="button" id="myBtn" class="btnDisable" disabled style="position: relative; left: -300px; top: 150px;">Please wait...</button>
    </div>
    </div>

    <div id="pec3" style="display: none;">
    <div>
		<textarea  id ="ansscript" type="text" class="answer" name="answer" style="position: absolute; top: 10px; left: 630px;"></textarea>
	</div>
	<iframe src=<%=questionpaper %> width="600px" height="400px" style="position: absolute; top: 10px; left: 10px;">
    </iframe>
    <!-- <div id="live" style="position: absolute; top: 515px; left: 0px">
    
    
        <video autoplay="true" id="videoElement1" style="width: 500px; height: 170px;">
            
        </video>
    
    
    
    </div> -->
    <button id="submit" style="position: absolute; top: 560px; left: 950px; height: 40px; width: 100px; color: white; background: red;">Submit Test</button>
    </div>
   

   
   <script type="text/javascript">
        document.getElementById("ex1").addEventListener("click",
        ()=>{
            document.getElementById("pec2").style.display="block";
            document.getElementById("pec1").style.display="none";  
            console.log(sec) ;
            sec = 3;
            console.log(sec);
            $("#myBtn").removeClass();
            
        }
        )
        window.onload = countDown;
        var sec = 1000;
      var myTimer = document.getElementById('myTimer');
      var myBtn = document.getElementById('myBtn');
      function pechi(){
      
      }
     
      function countDown() {
          console.log(sec);
        if(sec==1000){
        myTimer.innerHTML = "3";
        }
        else{
        myTimer.innerHTML = sec;
        }
        if (sec <= 0) {
          $("#myBtn").removeAttr("disabled");
          $("#myBtn").removeClass().addClass("btnEnable");
          myBtn.innerHTML = "Start Test";
          return;
        }
        if(sec!=1000){
        sec -= 1;
        }
        window.setTimeout(countDown, 1000);
      }
    </script>
    <script>
    var video = document.querySelector("#videoElement");

if (navigator.mediaDevices.getUserMedia) {
  navigator.mediaDevices.getUserMedia({ video: true })
    .then(function (stream) {
      video.srcObject = stream;
    })
    .catch(function (err0r) {
      console.log("Something went wrong!");
    });
}

</script>

<script>
   

    document.getElementById("myBtn").addEventListener("click",
    ()=>{
        document.getElementById("pec2").style.display = "none";
        document.getElementById("pec3").style.display = "block";
        document.getElementById("box").style.background = "#2bd282";
        document.getElementById("box").style.border = "none";
        document.getElementById("box").style.top = "435px";
        document.getElementById("box").style.left = "0px";
        document.getElementById("pec1").style.display = "block";
        document.getElementById("ex1").style.display = "none";
        document.getElementById("videoElement").style.width="500px";
        document.getElementById("videoElement").style.height="200px";
    }
    )
    document.getElementById("submit").addEventListener("click",
    
    ()=>{
    	let mail = document.getElementById("pp1").innerText;
    	let sub = document.getElementById("pp2").innerText;
    	let qp = document.getElementById("pp3").innerText;
    	let ans = (document.getElementById("ansscript").value).replaceAll(" ","@");
    	console.log(mail+" "+sub+" "+qp+" "+ans);
        window.location.href = "http://localhost:9999/SmartClassroomProject/storedb?mail="+mail+"&question="+qp+"&sub="+sub+"&ans="+ans;
    }
    )
</script>
    
</body>
</html>