<html>
<title>Index Page</title>
     <link href='https://fonts.googleapis.com/css?family=Rajdhani|Pacifico' rel='stylesheet' type='text/css'/>
     <meta charset="UTF-8">
	<title>Bootstrap 4 Homepage with navbar and slider</title>
	<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" rel="stylesheet">
	<link href="style.css" rel="stylesheet">

 
 <style>
body {
    background-image:   url('https://images.unsplash.com/photo-1497035111255-8bc8464dc267?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=3540&q=80');
    background-size:     cover;                      /* <------ */
    background-repeat:   no-repeat;
    background-position: center center; 
      height: 1200px;             /* optional, center the image */
}
.title{
  margin: 0 auto;
  width: 60%;
  text-align: center;
  padding-bottom: 15px;
  font-family: Rajdhani;
  font-size: 34px;
  color: green;
}
.wrapper {
  width: 50%;
  height: 50%;
  margin: 5% auto 0 auto; 
}
.font {
  font-size: 16px;
  font-family: Helvetica, sans-serif;
  color: white;
}
.font2 {
  font-size: 12px;
  font-family: Helvetica, sans-serif;
  color: orange;
}
.form {
  text-align: center; 
  -webkit-animation: bounce 1.5s infinite;
  -moz-animation: bounce 1.5s infinite;
  animation: bounce 1.5s infinite;
}
.shadow{
  box-shadow: 0px 0px 20px 5px #AAA;
  opacity: 0.5;
  border-radius: 100px;
  width: 45%; 
  margin: 40px auto 0 auto;
  padding: 0 10px;  
  -webkit-animation: shadow 1.5s infinite;
}
.field-in {
  display: block;
  margin: 10px auto;
  padding: 10px;
  border-radius: 5px;
  border: none;
  width: 50%;
  -webkit-transition: all 0.5s ease 0s;
  -moz-transition: all 0.5s ease 0s;
  transition: all 0.5s ease 0s;
}
.field-in1 {
 margin: 10px auto;
  display: block;
  padding: 10px;
  border: none;
  width: 50%;
  -webkit-transition: all 0.5s ease 0s;
  -moz-transition: all 0.5s ease 0s;
  transition: all 0.5s ease 0s;
}
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


.name {
  background-color: #7D75A9;  
  border-bottom: 5px solid #CB64B2;
}
.name:hover{
  background-color: #DF1B76;
  border-bottom: 5px solid #B2175F;
}
.name:focus, .email:focus, .message:focus{
  outline: none;
  padding:15px;
}
.email {
  background-color: #7239C1;  
  border-bottom: 5px solid #502789;
}
.email:hover{
  background-color: #2014CB;
  border-bottom: 5px solid #18108E;
}
.message {   
  background-color: #0F9BE6;
  border-bottom: 5px solid #1185C3;
  overflow: hidden;
  height: 50px;
}
.message:hover{
  background-color: #2DD7BB;
  border-bottom: 5px solid #2BB09A;
  height: 150px;
}
.submit{
  border-radius:5px;
  padding:10px;
  background-color: #EE78D1;  
  border: none;
  border-bottom: 5px solid #CB64B2;  
  -webkit-transition: all 0.5s ease 0s;
  -moz-transition: all 0.5s ease 0s;
  transition: all 0.5s ease 0s;
}
.submit:hover{
  -webkit-transform: translate(0, 4px);
  border-bottom: 2px solid #CB64B2;  
  box-shadow: inset 0px 0px 10px 10px #CF5DB2;
  cursor: pointer;
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
 
 h1 {
  text-align: center;
  margin: 40px 0 40px;
  text-align: center;
  font-size: 30px;
  color: #ecf0f1;
  text-shadow: 2px 2px 4px #000000;
  font-family: 'Cherry Swash', cursive;
}
.carousel-caption {
	bottom: 270px;
}
.carousel-caption h5 {
	font-size: 45px;
	text-transform: uppercase;
	letter-spacing: 2px;
	margin-top: 25px;
}
.carousel-caption p {
	width: 75%;
	margin: auto;
	font-size: 18px;
	line-height: 1.9;
}
.login-box {
  position: absolute;
  top: 70%;
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
  margin: 0 0 50px;
  padding: 0;
 
  text-align: center;
  color:green;
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
.login-box .user-box option:focus ~ label,
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

span {
    color: #2BD6B4;
}
 
 </style>

	<nav class="navbar navbar-expand-lg navbar-light fixed-top">
		<div class="container">
			<a class="navbar-brand" href="index.jsp">Home</a> <button aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation" class="navbar-toggler" data-target="#navbarSupportedContent" data-toggle="collapse" type="button"><span class="navbar-toggler-icon"></span></button>
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav ml-auto">
					<li class="nav-item active">
						<a class="nav-link" href="#">Home</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="admin.jsp">Admin</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="walkin.jsp">Donor</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="hospital.jsp">Hospitals</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="hospital_login.jsp">Hospital login</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="contact.jsp">Contact</a>
					</li>
				</ul>
			</div>
		</div>
	</nav>
	
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
    

         
<%

int pid=100001;
try
{
	MongoClient mongo = new MongoClient("localhost", 27017);
	  DB database = mongo.getDB("DPS");

	  DBCollection collection = database.getCollection("hospital22");

	  DBObject sort = new BasicDBObject();
	  sort.put("pid", -1);
	  
	  
	    BasicDBObject whereQuery = new BasicDBObject();	  
	  
	  BasicDBObject fields = new BasicDBObject();
	    fields.put("pid",1);
	   // fields.put("hospital name",2);
	    
	  DBCursor cursor = collection.find(whereQuery,fields).sort(sort).limit(1);
	  while(cursor.hasNext()) {
	   String s=cursor.next().toString();
	 //out.println(s);
	 int x=s.lastIndexOf(":");
	 String s1=s.substring(x+3,x+9);
	//out.println("<br><br><br><br><br><br><br>"+s1);
	 
	 pid=Integer.parseInt(s1)+1;
	 //out.println(pid);
	 
	     
	   
	  }

}
catch(Exception e)
{

	pid=10001;
	//out.println("<br><br><br><br><br><br><br><br><br><br><br><br><br><br>"+e);
}

%>

  
  
  <br>
<form action='hospital_register1.jsp'>


<div class="login-box">
  <h2>Register your Hospital here</h2>
  <form>
    <div class="user-box">
      <input type="text" name="hname" required="">
      <label>Hospital name</label>
    </div>
    
    <br>
    
    <div class="user-box">
      <input type="text" name="hdesc" required="">
      <label>Hospital Description</label>
    </div>
    
    
     <select class="user-box"  name='hloc' >
      <option>Hospital Location</option>
		<option>Metcalf Ave</option>
		<option>Nall Ave</option>
		<option>Kenneth road</option>
		
		</select>
		
     <br><br>
     
     
   
     
     
      <div class="user-box">
      <input type="number" name="hphone" required="">
      <label>Contact Number</label>
    </div>
    
    <div class="user-box">
      <input type="password" name="hkey" required="">
      <label>Pass Key</label>
    </div>
    
     
      <input class="submit font" type='submit' value='Become a Donor'>
     
  </form>
</div>
 
 
 
 

</body>
</html>