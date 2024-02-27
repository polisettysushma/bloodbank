<html>
<title>Index Page</title>
     <link href='https://fonts.googleapis.com/css?family=Rajdhani|Pacifico' rel='stylesheet' type='text/css'/>
<meta charset="UTF-8">
	<title>Bootstrap 4 Homepage with navbar and slider</title>
	<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" rel="stylesheet">
	<link href="style.css" rel="stylesheet">
 
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

  
<form action='hospital validation_validation.jsp'>



<div class="login-box">
  <h2 style="color:green">Hospital login</h2>
  <form>
    <div class="user-box">
      <input type="text" name="hname" required="">
      <label>Username</label>
    </div>
    <div class="user-box">
      <input type="password" name="hkey" required="">
      <label>Password</label>
    </div>
   
     <br>
      <input class="submit font" type='submit' value='Sign in'>
     
  </form>
 &#160; &#160; &#160; &#160; &#160; &#160;
  <a  style="color:black" class="submit font"href="forgot.jsp">Forgot Password</a>
</div>



</body>
</html>