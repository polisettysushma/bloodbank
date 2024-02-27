<html>
<title>Index Page</title>
     <link href='https://fonts.googleapis.com/css?family=Rajdhani|Pacifico' rel='stylesheet' type='text/css'/>
     <meta charset="UTF-8">
	<title>Bootstrap 4 Homepage with navbar and slider</title>
	<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" rel="stylesheet">
	<link href="style.css" rel="stylesheet">
<%@ page language="java" import= "com.mongodb.client.MongoCursor"%>
<%@ page import="com.mongodb.client.model.Filters" %>
 
 <style>
body {
    background-image:   url('https://images.unsplash.com/photo-1639772823849-6efbd173043c?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=3387&q=80');
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
  color: orange;
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
	color: orange;
	font-size: 25px;
	text-transform: uppercase;
	font-weight: bold;
	letter-spacing: 2px;
}
 .navbar-nav .active>.nav-link,   .navbar-nav .nav-link.active,   .navbar-nav .nav-link.show,  .navbar-nav .show>.nav-link {
	color: orange;
}
.navbar-light .navbar-nav .nav-link {
	color: orange;
}
.navbar-toggler {
	background: orange;
}
.navbar-nav {
	text-align: center;
}
.nav-link {
	padding: .2rem 1rem;
}
.nav-link.active, .nav-link:focus {
	color: orange;
}
.navbar-toggler {
	padding: 1px 5px;
	font-size: 18px;
	line-height: 0.3;
}
.navbar-light .navbar-nav .nav-link:focus, .navbar-light .navbar-nav .nav-link:hover {
	color: #orange;
}


.name {
  background-color: orange;  
  border-bottom: 5px solid #CB64B2;
}
.name:hover{
  background-color: blue;
  border-bottom: 5px solid #B2175F;
}
.name:focus, .email:focus, .message:focus{
  outline: none;
  padding:15px;
}
.email {
  background-color: orange;  
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
tr:nth-child(even) {
  background-color: light blue;
}
tr:nth-child(odd) {
  background-color: #EEDD82;
}
th {
  background-color: #342F44;
  color: white;
}
.noBorder {
    border:none !important;
}
.center {
  margin-left: auto;
  margin-right: auto;
}

span {
    color: #2BD6B4;
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
						<a class="nav-link" href="contact.jsp">Contact Us</a>
					</li>
				</ul>
			</div>
		</div>
	</nav>
	<br> <br> <br> <br> <br> <br> 
 
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
    
<table class="center">
<br> 
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
 <table class="table table-hover table-secondary">
 
 
<tr>
<th  class="text-warning"> User name </th>
<th class="text-warning">  Name</th>
 <th class="text-warning">  AGE</th>
<th class="text-warning">Hieght</th>
<th class="text-warning">Weight</th>
<th class="text-warning">Gender</th>
<th class="text-warning">  Blood group</th>
<th class="text-warning"> Contact </th>
<th class="text-warning"> last donated on</th>
<th class="text-warning"> Status</th>
<th class="text-warning"> Available amount of Blood(ml)</th>
<th class="text-warning"> Previously Donated</th>
<th class="text-warning"> Donation Type</th>
</tr>

<%
String uname=request.getParameter("uname");
         try{
	
        	
            //Creating a MongoDB client
            MongoClient mongo = new MongoClient( "localhost" , 27017 );
            //Connecting to the database
            MongoDatabase database = mongo.getDatabase("DPS");
            //Creating a collection object
            MongoCollection<Document> collection = database.getCollection("walkin22");
            //Retrieving the documents
        
            
          


FindIterable<Document> iterDoc = collection.find(Filters.and(

	    Filters.eq("uname", uname)
	    
	));



     
            
           Iterator it = iterDoc.iterator();
           int qty=0;
           
           while(it.hasNext())
           {
        	   out.println("<tr>");
        	   String s=it.next().toString();
        	   //out.println(s);
        	   StringTokenizer str=new StringTokenizer(s,",=}");
        	   int count=0;
        	   while(str.hasMoreTokens())
        	   {
        		 
        			count++;
        			String key=str.nextToken();
					String value=str.nextToken();
					 
					if(count>1 && count!=9 && count < 17 && count!=14)
						
        		    	out.println("<td class=\"noBorder\">"+value+"</td>");
        		   
        		    
        	   	 // out.println("</tr>");
        	   }
        	   //out.println("<tr><td>"+it.next()+"</td></tr>");
           }
         
          
            
            
           out.println("<center><a class='submit font' href='bookappoint.jsp?uname=" + uname + "'>Make an appointment Via Walkin</a></center>");
        out.println("<br><br>");
           
           out.println("<center><a class='submit font' href='bookappoint_walkin.jsp?uname=" + uname + "'>Make an appointment Via BloodCamp</a></center>");

            		out.println("<br>");
            		
			
            }catch(Exception e)
{	
		out.println(e);
}
	
%>

 
 

</body>
</html>