<html>
<title>Index Page</title>
     <link href='https://fonts.googleapis.com/css?family=Rajdhani|Pacifico' rel='stylesheet' type='text/css'/>
<meta charset="UTF-8">
	<title>Bootstrap 4 Homepage with navbar and slider</title>
	<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" rel="stylesheet">
	<link href="style.css" rel="stylesheet">
 
 
 <head>
 <head>
    <meta charset="UTF-8">
    <meta http-equiv="refresh" content="4;url="hospital.jsp">
    <title>Redirecting...</title>
</head>
 </head>
 <style>
 .navbar-light .navbar-brand {
	color: #fff;
	font-size: 25px;
	text-transform: uppercase;
	font-weight: bold;
	letter-spacing: 2px;
}
.navbar-light .navbar-nav .active>.nav-link, .navbar-light .navbar-nav .nav-link.active, .navbar-light .navbar-nav .nav-link.show, .navbar-light .navbar-nav .show>.nav-link {
	color: #fff;
}
.navbar-light .navbar-nav .nav-link {
	color: #fff;
}
.navbar-toggler {
	background: #fff;
}
.navbar-nav {
	text-align: center;
}
.nav-link {
	padding: .2rem 1rem;
}
.nav-link.active, .nav-link:focus {
	color: #fff;
}
.navbar-toggler {
	padding: 1px 5px;
	font-size: 18px;
	line-height: 0.3;
}
.navbar-light .navbar-nav .nav-link:focus, .navbar-light .navbar-nav .nav-link:hover {
	color: #fff;
}
body {
    background-image:    url('https://images.unsplash.com/photo-1497035111255-8bc8464dc267?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=3540&q=80');
    background-size:     cover;                      /* <------ */
    background-repeat:   no-repeat;
    background-position: center center; 
      height: 800px;             /* optional, center the image */
}
.login-box {
  position: absolute;
  top: 60%;
  left: 50%;
  width: 400px;
  padding: 40px;
  transform: translate(-50%, -50%);
  background: rgba(0,0,0,.5);
  box-sizing: border-box;
  box-shadow: 0 15px 25px rgba(0,0,0,.6);
  border-radius: 10px;
}

.login-box h2 {
  margin: 0 0 30px;
  padding: 0;
  color: #fff;
  text-align: center;
}

.login-box .user-box {
  position: relative;
}
.submit{
  border-radius:5px;
  padding:10px;
  background-color: green;  
  border: none;
  border-bottom: 5px green;  
  -webkit-transition: all 0.5s ease 0s;
  -moz-transition: all 0.5s ease 0s;
  transition: all 0.5s ease 0s;
}
.submit:hover{
  -webkit-transform: translate(0, 4px);
  border-bottom: 2px green;  
  box-shadow: inset 0px 0px 10px 10px #CF5DB2;
  cursor: pointer;
}

.login-box .user-box input {
  width: 100%;
  padding: 10px 0;
  font-size: 16px;
  color: #fff;
  margin-bottom: 30px;
  border: none;
  border-bottom: 1px solid #fff;
  outline: none;
  background: transparent;
}
.login-box .user-box label {
  position: absolute;
  top:0;
  left: 0;
  padding: 10px 0;
  font-size: 16px;
  color: #fff;
  pointer-events: none;
  transition: .5s;
}

.login-box .user-box input:focus ~ label,
.login-box .user-box input:valid ~ label {
  top: -20px;
  left: 0;
  color: #03e9f4;
  font-size: 12px;
}

.login-box form a {
  position: relative;
  display: inline-block;
  padding: 10px 20px;
  color: #03e9f4;
  font-size: 16px;
  text-decoration: none;
  text-transform: uppercase;
  overflow: hidden;
  transition: .5s;
  margin-top: 40px;
  letter-spacing: 4px
}

.login-box a:hover {
  background: #03e9f4;
  color: #fff;
  border-radius: 5px;
  box-shadow: 0 0 5px #03e9f4,
              0 0 25px #03e9f4,
              0 0 50px #03e9f4,
              0 0 100px #03e9f4;
}

.login-box a span {
  position: absolute;
  display: block;
}

.login-box a span:nth-child(1) {
  top: 0;
  left: -100%;
  width: 100%;
  height: 2px;
  background: linear-gradient(90deg, transparent, #03e9f4);
  
}

 
.login-box a span:nth-child(2) {
  top: -100%;
  right: 0;
  width: 2px;
  height: 100%;
  background: linear-gradient(180deg, transparent, #03e9f4);
   
  animation-delay: .25s
}
 

.login-box a span:nth-child(3) {
  bottom: 0;
  right: -100%;
  width: 100%;
  height: 2px;
  background: linear-gradient(270deg, transparent, #03e9f4);
  
  animation-delay: .5s
}
 
.login-box a span:nth-child(4) {
  bottom: -100%;
  left: 0;
  width: 2px;
  height: 100%;
  background: linear-gradient(360deg, transparent, #03e9f4);
  
  animation-delay: .75s
}


 
 </style>
<nav class="navbar navbar-expand-lg navbar-light fixed-top">
		<div class="container">
			<a class="navbar-brand" href="index.jsp">Donate Plasma Save Live</a> <button aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation" class="navbar-toggler" data-target="#navbarSupportedContent" data-toggle="collapse" type="button"><span class="navbar-toggler-icon"></span></button>
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav ml-auto">
					<li class="nav-item">
						<a class="nav-link" href="admin.jsp">Admin</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="walkin.jsp">Ready to Donate</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="walkin_login.jsp">Donate Here</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="bloodcampdonor.jsp">Blood Camps</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="hospital.jsp">Hospitals</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="contact.jsp">Contact Us</a>
					</li>
				</ul>
			</div>
		</div>
	</nav>
	
	
<div class="login-box">
  <h2 style="color:cyan">Sorry,the Hospital  name is already taken</h2>
  <br>
  <h2 style="color:orange">You will be redirecting to  Register Hospital Page(in 2 seconds)</h2>
  <br>
  <h2 style="color:violet">Please try with some unique name </h2>
   
</div>


 <%@ page language='java' import='java.sql.*' %>
<%@ page language='java' import='java.sql.*' %>
<%@ page language="java" import="com.mongodb.client.MongoDatabase" %>
<%@ page language="java"  import="java.sql.*" %>
<%@ page language="java"  import="org.bson.Document" %>
<%@ page language="java" import="com.mongodb.Mongo" %>
<%@ page language="java" import="java.util.List" %>
<%@ page language="java" import="java.util.ArrayList" %>
<%@page language="java" import ="com.mongodb.client.MongoCollection"%>
<%@ page language="java" import="java.util.*" %>
<%@ page language="java" import="java.util.ArrayList" %>
<%@ page language="java" import= "com.mongodb.client.MongoCursor"%>
<%@ page language="java" import="com.mongodb.client.FindIterable"%>
    
<%@ page import =" com.mongodb.*"%>
<%@ page import="java.util.*" %>
    

  
  
 


</body>
 <script type="text/javascript">
        setTimeout(function() {
            window.location.href = "hospital.jsp";
        }, 4000); // 3000 milliseconds = 3 seconds
    </script>
</html>







