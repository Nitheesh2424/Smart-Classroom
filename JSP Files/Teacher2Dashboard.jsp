<%@page import="java.util.*" %>
    <%@page import="java.sql.*" %>
 
    <!DOCTYPE html>
    <html lang="en">
    <head>
     <meta charset="UTF-8">
     <meta name="viewport" content="width=device-width, initial-scale=1.0">
     <title>Teacher Dashboard</title>
     <style>
  .timer-group {
  height: 400px;
  margin: 0 auto;
  position: absolute;
  width: 400px;
}

#unique
{
	width:300px;
}


.timer {
  border-radius: 50%;
  height: 100px;
  overflow: hidden;
  position: absolute;
  width: 100px;
}

.timer:after {
  
  border-radius: 50%;
  content: "";
  display: block;
  height: 80px;
  left: 10px;
  position: absolute;
  width: 80px;
  top: 10px;
}

.timer .hand {
  float: left;
  height: 100%;
  overflow: hidden;
  position: relative;
  width: 50%;
}

.timer .hand span {
  border: 50px solid rgba(0, 255, 255, .4);
  border-bottom-color: transparent;
  border-left-color: transparent;
  border-radius: 50%;
  display: block;
  height: 0;
  position: absolute;
  right: 0;
  top: 0;
  transform: rotate(225deg);
  width: 0;
}

.timer .hand:first-child {
  transform: rotate(180deg);
}

.timer .hand span {
  animation-duration: 4s;
  animation-iteration-count: infinite;
  animation-timing-function: linear;
}

.timer .hand:first-child span {
  animation-name: spin1;
}

.timer .hand:last-child span {
  animation-name: spin2; 
}

.timer.hour {
  background: rgba(0, 0, 0, .3);
  height: 400px;
  left: 0;
  width: 400px;
  top: 0;
}

.timer.hour .hand span {
  animation-duration: 3600s;
  border-top-color: rgba(255, 0, 255, .4);
  border-right-color: rgba(255, 0, 255, .4);
  border-width: 200px;
}

.timer.hour:after {
  height: 360px;
  left: 20px;
  width: 360px;
  top: 20px;
}

.timer.minute {
  background: rgba(0, 0, 0, .2);
  height: 350px;
  left: 25px;
  width: 350px;
  top: 25px;
}

.timer.minute .hand span {
  animation-duration: 60s;
  border-top-color: rgba(0, 255, 255, .4);
  border-right-color: rgba(0, 255, 255, .4);
  border-width: 175px;
}

.timer.minute:after {
  height: 310px;
  left: 20px;
  width: 310px;
  top: 20px;
}

.timer.second {
  background: rgba(0, 0, 0, .2);
  height: 300px;
  left: 50px;
  width: 300px;
  top: 50px;
}

.timer.second .hand span {
  animation-duration: 1s;
  border-top-color: rgba(255, 255, 255, .15);
  border-right-color: rgba(255, 255, 255, .15);
  border-width: 150px;
}

.timer.second:after {
  height: 296px;
  left: 2px;
  width: 296px;
  top: 2px;
}

td{
	width: 25%;
}

.face h2 {
  font-weight: 300; 
}

.face p {
  border-radius: 20px;
  font-size: 70px;
  font-weight: 400;
  position: absolute;
  top: 120px;
  width: 200px;
  left: 50px;
}

@keyframes spin1 {
  0% {
    transform: rotate(225deg);
  }
  50% {
    transform: rotate(225deg);
  }
  100% {
    transform: rotate(405deg);
  }
}

@keyframes spin2 {
  0% {
    transform: rotate(225deg);
  }
  50% {
    transform: rotate(405deg);
  }
  100% {
    transform: rotate(405deg);
  }
}

.scrollbar::-webkit-scrollbar {
    background-color:#fff;
    width:16px
}

/* background of the scrollbar except button or resizer */
.scrollbar::-webkit-scrollbar-track {
    background-color:#fff
}
.scrollbar::-webkit-scrollbar-track:hover {
    background-color:#f4f4f4
}

/* scrollbar itself */
.scrollbar::-webkit-scrollbar-thumb {
    background-color:#babac0;
    border-radius:16px;
    border:5px solid #fff
}
.scrollbar::-webkit-scrollbar-thumb:hover {
    background-color:#a0a0a5;
    border:4px solid #f4f4f4
}

/* set button(top and bottom of the scrollbar) */
.scrollbar::-webkit-scrollbar-button {display:none}

.scrollbar {
    height: 90vh;
    width: 30vw;
    min-width: 150px;
    background: #fff;
    overflow-y: scroll}
.overflow{min-height: 100vh}

.input-1 {
  position: relative;
  overflow: hidden;
  padding-bottom: 5px;
}

.input-1 input {
  padding-top: 20px;
  border: none;
  color: #595f6e;
  font-size: 30px;
}

.input-1 label {
  position: absolute;
  bottom: 0px;
  left: 0;
  height: 100%;
  width: 100%;
  pointer-events: none;
  border-bottom: 1.5px solid #595f6e;
}

.input-1 label::after {
  content: "";
  position: absolute;
  left: 0;
  bottom: -1px;
  height: 100%;
  width: 100%;
  border-bottom: 6px solid #5993cd;
  transform: translateX(-100%);
  transition: transform 0.4s ease;
}

.input-1 label .label-text-1 {
  position: absolute;
  bottom: 5px;
  left: 0;
  transition: all 0.3s ease;
  opacity: 0.5;
  font-size: 20px;
}

.input-1 input:focus + .label-1 .label-text-1,
.input-1 input:valid + .label-1 .label-text-1 {
  transform: translateY(-200%);
  font-size: 14px;
  color: #5993cd;
  opacity: 1;
}

.input-1 input:focus + .label-1::after,
.input-1 input:valid + .label-1::after {
  transform: translateX(0%);
}

.button-wrap {
  height: 100%;
  position: relative;
  width: 100%;
}

.button {
  background-color: #5993cd;
  border: none;
  border-radius: 2px;
  box-shadow: 0 0 2px rgba(0, 0, 0, 0.16), 0 2px 4px rgba(0, 0, 0, 0.26);
  color: #fff;
  cursor: pointer;
  font-size: 13px;
  font-weight: 500;
  height: 52px;
  line-height: 50px;
  padding: 0 15px;
  position: relative;
  overflow: hidden;
  text-transform: uppercase;
  transition: box-shadow 0.2s cubic-bezier(0.895, 0.03, 0.685, 0.22);
}
.button:hover, .button:focus, .button:active {
  box-shadow: 0 0 6px rgba(0, 0, 0, 0.16), 0 6px 12px rgba(0, 0, 0, 0.32);
  transition: box-shadow 0.2s cubic-bezier(0.165, 0.84, 0.44, 1);
}
.button:focus {
  outline: 0;
}
.button .pulse {
  background-color: rgba(255, 255, 255, 0.5);
  border-radius: 50%;
  left: 0;
  margin: 0 -50%;
  position: absolute;
  top: 0;
  transform: scaleX(0) scaleY(0);
}
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
            background-color: #0E4864;
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
            width: 150px;
        }
        a:nth-child(2) {
            padding-left: 0%;
            width: 110px;
        }
        a:nth-child(3) {
            padding-left: 0%;
            width: 140px;
        }
        a:nth-child(4) {
            padding-left: 0%;
            width: 130px;
        }
        a:nth-child(5) {
            padding-left: 0%;
            width: 134px;
        }
        nav .start-home, a:nth-child(1):hover~.animation {
            width: 150px;
            top:25px;
            /* bottom:-3000px; */
            background-color:  #72BEBA;
        }
        nav .start-about, a:nth-child(2):hover~.animation {
            width: 150px;
            top:72px;
            /* bottom: 100px; */
            background-color:  #72BEBA;
        }
        nav .start-blog, a:nth-child(3):hover~.animation {
            width: 150px;
            top:130px;
            /* bottom: 210px; */
            background-color: #72BEBA;
        }
        nav .start-portefolio, a:nth-child(4):hover~.animation {
            width: 150px;
            top:175px;
            /* bottom: 310px; */
            background-color: #72BEBA;
        }
        nav .start-contact, a:nth-child(5):hover~.animation {
            width: 150px;
            top:225px;
            /* bottom: 470px; */
            background-color: #72BEBA;
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
        .animate
{
	transition: all 0.1s;
	-webkit-transition: all 0.1s;
}

.action-button
{
	position: relative;
	padding: 10px 40px;
margin: 0px 10px 10px 0px;
float: left;
	border-radius: 8px;
	font-family: 'Pacifico', cursive;
	font-size: 25px;
	color: #FFF;
	text-decoration: none;	
}

.blue
{
	background-color: #3498DB;
	border-bottom: 5px solid #2980B9;
	text-shadow: 0px -2px #2980B9;
}

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
     background-color:#093028;
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
     width: 145px;
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
     width: 130px;
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
     background-color:#2a7e80;
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
     background-color: #1044a3;
     margin-left: 9% ;
     margin-right: 9% ;
     
    }
    .preethi:hover{
     transition: 0.5s;
     box-shadow: 10px 10px 10px #fcda2f;
     background-color: #3b64db;
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
    */ background-color: red;
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
     background: #1044a3;
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
    ::placeholder { 
 color: black;
}
     </style>
    </head>
    <body>
      
  
    <%!
        String mail;
        int t=0;
        String a ="";
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
    %>
    <%
        try
        {
          String username = request.getParameter("id");
          String p = request.getParameter("password");
          Class.forName("com.mysql.jdbc.Driver");
          Connection con=DriverManager.getConnection("jdbc:mysql://localhost/smartclassroom","root0","root"); 
          Statement st=con.createStatement();
          String query="select * from admin3addteacher";
          ResultSet rs=st.executeQuery(query);
          while(rs.next())
          {
               String admin = rs.getString("teacherid");
               String pass  = rs.getString("teacherpassword");
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
             RequestDispatcher rd = request.getRequestDispatcher("Teacher1Login.jsp");
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
          String query="select * from teacherlinker WHERE  teacherid='"+mail+"';";
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
 
    <p style="display: none;" id="preet"><%=mail %></p>
     <div style="width: 20%;display: inline-block; margin-top: 1px;">
     <nav id="suma">
     <a id="p1" href="#">My Classrooms</a>
     <a id="p2" href="#">Attendance</a>
     <a id="p3" href="#">Create Exams</a>
     <a id="p4" href="#" style="color:#093028;">.</a> 
     <div id="pec1" class="animation pe1"></div>
     </nav>
     </div>
    
     <!-- Attendance -->
     
      <div id="preth2" style="width: 70%;display: none;">
        <div class="timer-group" style="margin-top: 30px;">
            <div class="timer hour" style="background: #5993cd;" >
              <div class="hand"><span></span></div>
              <div class="hand"><span></span></div>
            </div>
            <div class="timer minute" >
              <div class="hand"><span></span></div>
              <div class="hand"><span></span></div>
            </div>
            <div class="timer second" >
              <div class="hand"><span></span></div>
              <div class="hand"><span></span></div>
            </div>
            <div class="face">
              <br>
              <p id="lazy">00:00:00</p>  
            </div>
        </div>
    <center style="margin-right: 50px;">

  <br>  <br>  <br>  <br>  <br>  <br>  <br>  <br>  <br>  <br>  <br>


<form action="/action_page.php" style="position:absolute; top:430px; left:370px">
	
   
   <input type="text" id="codeat1" name="fname" placeholder="Enter Subject" style="color:white"><br><br>
      <input type="text" id="codeat2" name="fname" placeholder="Enter Code" style="color:white"><br><br>
   
</form>

<br><br>
<button  id="but1" href="#"  style="margin-left: 120px;background:#72beba;
 margin-top: 350px" class="action-button animate blue">START</button>
</center>
<div id= "unique" style="position:absolute; top:40px; left:900px">

	<!-- <div style="position:absolute; top:170px; width:200px;"><p> PREETHI ABSENT</p><br> </div>
	<div style="position:absolute;top: 200px;  width:200px;"><p> PREETHI PRESENT</p><br></div>
	<div style="position:absolute;top:230px; width:200px;"><p> PREETHI ABSENT</p><br> </div>
	<div style="position:absolute;top:260px; width:200px;"><p> PREETHI PRESENT</p><br></div>
	<div style="position:absolute;top:290px; width:200px;"><p> PREETHI ABSENT</p><br> </div>
	<div style="position:absolute;top:320px ;width:200px;"><p> PREETHI PRESENT</p><br></div> -->
	</div>
</div> 

     
     <!-- Create Exams -->
     <div id="preth3" style="width: 70%;display: none; position: absolute;"> 
     
     	
   <center><h1>CREATE EXAM </h1></center>
   <div class="">
    <center>
      <form>
    <input id="ce1" type="text" name="exam code"placeholder="Enter Exam code" style="background: white; width: 300px; height:40px; display: inline-block;"> <br/> 
    <input id="ce2" type="text" name="subject"placeholder="Enter subject" style="background: white; width: 300px; height:40px; display: inline-block;"> <br/> <br/>
    <select id="ce3" name="year" style="margin-left:51px;background: white; width: 300px; height:42px; display: inline-block;">
    <option value="year">Select Year</option>
    <option value="2021">2021</option>
    <option value="2022">2022</option>
    <option value="2023">2023</option>
    <option value="2024">2024</option>
    </select>  
    <br><br>
      <select id="ce4" name="deptartment" style="margin-left:51px;background: white; width: 300px; height:42px; display: inline-block;">
      <option value="dept">Select Department</option>
      <option value="it">IT</option>
      <option value="cse">CSE</option>
      <option value="audi">MECH</option>
      <option value="civil">CIVIL</option>
      <option value="mct">MCT</option>
      <option value="ece">ECE</option>
      <option value="eee">EEE</option>
    </select>
    <br><br>
    <label for="date" style=" position: relative;left: 50px; width: 180px; height:40px; display: inline-block;">Enter Date:</label>
    <input type="date" id="ce5" name="date" style="position: relative;left: -50px; background: white; width: 200px; height:40px; display: inline-block;">
    <br><br>

<input id="ce6" type="file" name="file" data-multiple-caption="{count} files selected" multiple="multiple"/>
    <br/><br/>

 </form>  
    <button id="ineedi" style="margin-left:-170px;position: absolute; background: red; color: white; display: inline-block; height:42px; width: 150px;left: 600px;"> Create </button>
    </center>
     
     
     </div>
     <!-- Contact Admin -->
     
    <div id="preth4" style="width: 70%;display: none; ">
   	<div class="mailbg">
   	<p>..............</p>
		<label class="l1" for="mailinput" style="color: #2debd8;">Your Email:</label>
		<input class="mailinput" style="margin-left: 0px; margin-top: 0px;background-color: white;"
		 aria-label="Your Email" autocomplete="on" type="email" placeholder="">
		<label class="l2" for="messtxt" style="color: #2debd8;">Your Message:</label>
		<textarea class="messtxt" aria-label="Your Message" placeholder=""></textarea>
		<button class="sendmess" aria-label="Send message">Send<div class="bar"></div></button>
		<div class="success">Message sent successfully.<br><br>Thanks!</div>
		<button class="closemess" aria-label="Close Form">Close</div></button>
</div>
   
    </div>
    
    
    <div id="preth1" style="width: 50%;display:inline-block; ">
    
     <div style="position: absolute; right: -200px; top: 0px;">
     <input id="cc" type='search' placeholder='Create Classroom' style="
    
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
                a="plan?sub="+al.get(t)+"&mail="+mail;
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
                
                xhr.open("GET","berry?mail="+document.getElementById("preet").
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
				function preethi()
				{
					var a =document.getElementById("codeat1");
	            	var b = document.getElementById("codeat2");
	            	console.log(a.value);
	            	console.log(b.value);
	            	var sub = a.value;
	            	var code= b.value;
	            	var mail = document.getElementById("preet").innerText;
					  var xhttp = new XMLHttpRequest();
					  xhttp.onreadystatechange = function() {
					      if (this.readyState == 4 && this.status == 200) {
					         // Typical action to be performed when the document is ready:
					         document.getElementById("unique").innerHTML += xhttp.responseText;
					      }
					    };
	             		xhttp.open("GET", "http://localhost:9999/SmartClassroomProject/attendance"+"?mail="+mail+"&sub="+sub+"&code="+code, true);
	             		xhttp.send();
	             	
				}
                  var sound = new Audio("data:audio/wav;base64,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"); 
                  var iter=0;
                  var f = false;
                var defaults = {},
                  one_second = 1000,
                  one_minute = one_second * 60,
                  one_hour = one_minute * 60,
                  one_day = one_hour * 24,
                  startDate = new Date(),
                  face = document.getElementById("lazy");
                
                // http://paulirish.com/2011/requestanimationframe-for-smart-animating/
                var requestAnimationFrame = (function () {
                  return (
                    window.requestAnimationFrame ||
                    window.webkitRequestAnimationFrame ||
                    window.mozRequestAnimationFrame ||
                    window.oRequestAnimationFrame ||
                    window.msRequestAnimationFrame ||
                    function (callback) {
                      window.setTimeout(callback, 1000 / 60);
                    }
                  );
                })();
                
                tick();
                
                function tick() {
              if(f==false){
            	  
                startDate = new Date();
              }
                  var now = new Date(),
                    elapsed = now - startDate,
                    parts = [];
                
                  parts[0] = "" + Math.floor(elapsed / one_hour);
                  parts[1] = "" + Math.floor((elapsed % one_hour) / one_minute);
                  parts[2] = "" + Math.floor(((elapsed % one_hour) % one_minute) / one_second);
                
               if(parts[2]==="21"){
                   f = false;
                   preethi();
               }
               
                   parts[0] = parts[0].length == 1 ? "0" + parts[0] : parts[0];
                   parts[1] = parts[1].length == 1 ? "0" + parts[1] : parts[1];
                   parts[2] = parts[2].length == 1 ? "0" + parts[2] : parts[2];
                   
                  face.innerText = parts.join(":");
                    if(iter==60){
                        sound.play();
                        iter = 0;
                    }
                    else{
                    iter++;
                    }
                  requestAnimationFrame(tick);
                }
        document.getElementById("but1").addEventListener("click",
              ()=>{
            	var a =document.getElementById("codeat1");
            	var b = document.getElementById("codeat2");
            	console.log(a.value);
            	console.log(b.value);
            	var sub = a.value;
            	var code= b.value;
            	var mail = document.getElementById("preet").innerText;
            	var xhttp = new XMLHttpRequest();
          		xhttp.open("GET", "http://localhost:9999/SmartClassroomProject/preethi"+"?mail="+mail+"&sub="+sub+"&code="+code, true);
          		xhttp.send();
                f=true;
              }
            )
   
      </script>
      <script >
      			document.getElementById("but1").addEventListener("click",
              ()=>{
            	var a =document.getElementById("codeat1");
            	var b = document.getElementById("codeat2");
            	console.log(a.value);
            	console.log(b.value);
            	var sub = a.value;
            	var code= b.value;
            	var mail = document.getElementById("preet").innerText;
            	var xhttp = new XMLHttpRequest();
          		xhttp.open("GET", "http://localhost:9999/SmartClassroomProject/preethi"+"?mail="+mail+"&sub="+sub+"&code="+code, true);
          		xhttp.send();
                f=true;
              }
            )
      
      
      </script>
      <script>
            document.getElementById("ineedi").addEventListener("click",
            ()=>{
                let a1 = document.getElementById("ce1").value;
                let a2 = document.getElementById("ce2").value;
                let a3 = document.getElementById("ce3").value;
                let a4 = document.getElementById("ce4").value;
                let a5 = document.getElementById("ce5").value;
                let a6 = document.getElementById("ce6").value.replace("C:\\fakepath\\","");
                console.log(a1);
                console.log(a2);
                console.log(a3);
                console.log(a4);
                console.log(a5);
                console.log(a6);
                let mail =document.getElementById("preet").innerText;
                var xhttp = new XMLHttpRequest();
				  xhttp.onreadystatechange = function() {
				      if (this.readyState == 4 && this.status == 200) {
				         // Typical action to be performed when the document is ready:
				         document.getElementById("unique").innerHTML += xhttp.responseText;
				      }
				    };
           		xhttp.open("GET", "http://localhost:9999/SmartClassroomProject/teacherexam"+"?mail="+mail+"&sub="+a2
           				+"&code="+a1+"&date="+a5+"&qp="+a6, true);
           		xhttp.send();
            }
            )
        </script>
    </body>
    </html>