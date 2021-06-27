<!DOCTYPE html>
<html>
<head>
<title>TimeTable</title>
</head>
<style>
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
    .pe{
    	display : inline-block;
    }
    .button {
        border: none;
        color: #44706e;
        text-align: center;
        text-decoration: none;
        display: inline-block;
        font-size: 16px;
        transition-duration: 0.4s;
        cursor: pointer;
    }


    .button2 {
    background-color:#44706e; 
    color: white; 
    border: 1px solid white;
    margin-top: 20px;
    height: 40px;
    margin-left: 40px;
    }

    .button2:hover {
    background-color: #44706e;
    color: white;
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
  color: #185875;
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
	  background-color:  #161d1b;
}

/* Background-color of the even rows */
.container tr:nth-child(even) {
	  background-color:  #161d1b;
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
    color:   #6A967D;
    text-decoration: none;
    font-weight: bolder;
    display: block;
}
::placeholder { 
 color: white;
}

</style>
<body>
<form action="/action_page.php">
  
  <div class="pe">
  <select name="cars" id="ee1" class="cls" >
    <option value="Year">Year</option>
    <option value="1st Year">1st year</option>
    <option value="2nd Year">2nd year</option>
    <option value="3rd Year">3rd year</option>
    <option value="4th year">4th year</option>
  </select>
  </div>
  
  <div class="pe">
  <select name="cars" id="ee2" class="cls" >
    <option value="Section">Section</option>
    <option value="A-section">A-Section</option>
    <option value="B-section">B-Section</option>
    <option value="C-section">C-Section</option>
  </select>
  </div>

  <div class="pe">
    <select name="cars" id="ee3" class="cls" >
      <option value="Dept">Department</option>
      <option value="CSE">CSE</option>
      <option value="IT">IT</option>
      <option value="Mech">MECH</option>
      <option value="ECE">ECE</option>
      <option value="EEE">EEE</option>
      <option value="CIVIL">CIVIL</option>
      <option value="MCT">MCT</option>
    </select>
    </div>
    
    <div class="pe">
    <select name="cars" id="cc1" class="cls" >
      <option value="a">DAY-1</option>
      <option value="b">DAY-2</option>
      <option value="c">DAY-3</option>
      <option value="d">DAY-4</option>
      <option value="e">DAY-5</option>
    </select>
    </div>

    <div class="pe">
        <select name="cars" id="cc2" class="cls" >

          <option value="1">10:00-11:00</option>
          <option value="2">11:00-12:00</option>
          <option value="3">2:00-3:00</option>
          <option value="4">3:00-4:00</option>
        </select>
    </div>
    
  
    <input type="text" id="sub" name="fname" placeholder="Subject">
    <input type="text" id="fname" name="fname" placeholder="Link">
    

</form>
<button  id="pechi" class="button button2" style=" width: 100px; float: right; margin-top: -39px;">Done</button>

<br><br>
<table class="container" >
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
            <td><a id="a1" href ="https://meet.google.com/lookup/alfhcwx6le" target="_blank">-</a></td>
            <td><a id="a2" href ="https://meet.google.com/lookup/alfhcwx6le" target="_blank">-</a></td>
            <td><a id="a3" href ="https://meet.google.com/lookup/alfhcwx6le" target="_blank">-</a></td>
            <td><a id="a4" href ="https://meet.google.com/lookup/alfhcwx6le" target="_blank">-</a></td>
        </tr>
        <tr>
            <td>DAY-2</td>
            <td><a id="b1" href ="https://meet.google.com/lookup/alfhcwx6le" target="_blank">-</a></td>
            <td><a id="b2" href ="https://meet.google.com/lookup/alfhcwx6le" target="_blank">-</a></td>
            <td><a id="b3" href ="https://meet.google.com/lookup/alfhcwx6le" target="_blank">-</a></td>
            <td><a id="b4" href ="https://meet.google.com/lookup/alfhcwx6le" target="_blank">-</a></td>
        </tr>
        <tr>
            <td>DAY-3</td>
            <td><a id="c1" href ="https://meet.google.com/lookup/alfhcwx6le" target="_blank">-</a></td>
            <td><a id="c2"  href ="https://meet.google.com/lookup/alfhcwx6le" target="_blank">-</a></td>
            <td><a id="c3"  href ="https://meet.google.com/lookup/alfhcwx6le" target="_blank">-</a></td>
            <td><a id="c4"  href ="https://meet.google.com/lookup/alfhcwx6le" target="_blank">-</a></td>
        </tr>
    <tr>
            <td>DAY-4</td>
            <td><a id="d1"  href ="https://meet.google.com/lookup/alfhcwx6le" target="_blank">-</a></td>
            <td><a id="d2"  href ="https://meet.google.com/lookup/alfhcwx6le" target="_blank">-</a></td>
            <td><a id="d3"  href ="https://meet.google.com/lookup/alfhcwx6le" target="_blank">-</a></td>
            <td><a id="d4"  href ="https://meet.google.com/lookup/alfhcwx6le" target="_blank">-</a></td>
        </tr>
    <tr>
            <td>DAY-5</td>
            <td><a id="e1"  href ="https://meet.google.com/lookup/alfhcwx6le" target="_blank">-</a></td>
            <td><a id="e2"  href ="https://meet.google.com/lookup/alfhcwx6le" target="_blank">-</a></td>
            <td><a id="e3"  href ="https://meet.google.com/lookup/alfhcwx6le" target="_blank">-</a></td>
            <td><a id="e4"  href ="https://meet.google.com/lookup/alfhcwx6le" target="_blank">-</a></td>
        </tr>
    </tbody>
</table>

<center style="margin-top: -100px;">
  <button  id="red" class="button button2" style="width: 200px; ">Done</button>
</center>
<script>
    var a = document.getElementById("pechi");
    a.addEventListener("click",
    ()=>{
        var v1 = document.getElementById("cc1").value;
        var v2 = document.getElementById("cc2").value;
        var s = v1+v2;
        if(s.length==2){
            var sb = document.getElementById("sub").value;
            if(sb.length>0){
                document.getElementById(s).innerText = sb;
            }
            else{
                alert("Enter Proper Subject Name");
            }
        }
        else{
            alert("Enter Proper data");
        }
    }
    );

    document.getElementById("red").addEventListener("click",
    
    ()=>{
        var a1 = document.getElementById("ee1").value;
        var a2 = document.getElementById("ee2").value;
        var a3 = document.getElementById("ee3").value;
        var a4 = document.getElementById("cc1").value;
        var a5 = document.getElementById("cc2").value;
    	//console.log(a1);
        //console.log(a2);
        //console.log(a3);
        if(a4=="a"){
            a4 = "DAY-1";
        }
        else if(a4=="b"){
            a4 = "DAY-2";
        }
        else if(a4=="c"){
            a4 = "DAY-3";
        }
        else if(a4=="d"){
            a4 = "DAY-4";
        }
        else if(a4=="e"){
            a4 = "DAY-5";
        }

        if(a5=="1"){
            a5 = "10-11";
        }
        else if(a5=="2"){
            a5 = "11-12";
        }
        else if(a5=="3"){
            a5 = "2-3";
        }
        else if(a5=="4"){
            a5 = "3-4";
        }
        //console.log(a4);
        //console.log(a5);

        var b1 = document.getElementById("a1").innerText;
        var b2 = document.getElementById("a2").innerText;
        var b3 = document.getElementById("a3").innerText;
        var b4 = document.getElementById("a4").innerText;

        var c1 = document.getElementById("b1").innerText;
        var c2 = document.getElementById("b2").innerText;
        var c3 = document.getElementById("b3").innerText;
        var c4 = document.getElementById("b4").innerText;

        var d1 = document.getElementById("c1").innerText;
        var d2 = document.getElementById("c2").innerText;
        var d3 = document.getElementById("c3").innerText;
        var d4 = document.getElementById("c4").innerText;

        var e1 = document.getElementById("d1").innerText;
        var e2 = document.getElementById("d2").innerText;
        var e3 = document.getElementById("d3").innerText;
        var e4 = document.getElementById("d4").innerText;

        var f1 = document.getElementById("e1").innerText;
        var f2 = document.getElementById("e2").innerText;
        var f3 = document.getElementById("e3").innerText;
        var f4 = document.getElementById("e4").innerText;
        
        
        
    	const xhr = new XMLHttpRequest();
        var data = new FormData();
        //data.append('name', 'pechi');
        
        xhr.open("GET","straw?year="+a1+"&sec="+a2+"&dept="+a3+"&day="+a4+
        
        
        "&day1(10-11)"+b1+"&day1(11-12)"+b2+"&day1(2-3)"+b3+"&day1(3-4)"+b4+
        "&day2(10-11)"+c1+"&day2(11-12)"+c2+"&day2(2-3)"+c3+"&day2(3-4)"+c4+
        "&day3(10-11)"+d1+"&day3(11-12)"+d2+"&day3(2-3)"+d3+"&day3(3-4)"+d4+
        "&day4(10-11)"+e1+"&day4(11-12)"+e2+"&day4(2-3)"+e3+"&day4(3-4)"+e4+
        "&day5(10-11)"+f1+"&day5(11-12)"+f2+"&day5(2-3)"+f3+"&day5(3-4)"+f4
        ,   true);
        xhr.onload = function () {
            //console.log(this.responseText);
        };
        xhr.send();
    }
    )
</script>
</body>
</html>