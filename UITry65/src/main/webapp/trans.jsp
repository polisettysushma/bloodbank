<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
<%@ page language="java" import="com.mongodb.client.MongoDatabase" %>
<%@ page language="java"  import="java.sql.*" %>
<%@ page language="java"  import="org.bson.Document" %>
<%@ page language="java" import="com.mongodb.MongoClient" %>
<%@ page language="java" import="java.util.List" %>
<%@ page language="java" import="java.util.ArrayList" %>
<%@page language="java" import ="com.mongodb.client.MongoCollection"%>
<%@ page language="java" import="java.util.*" %>
<%@ page language="java" import="java.util.ArrayList" %>
<%@ page language="java" import= "com.mongodb.client.MongoCursor"%>
<%@ page import="com.mongodb.client.model.Filters" %>
<%@ page language="java" import="com.mongodb.client.FindIterable"%>
    
<%@ page import =" com.mongodb.*"%>
<%@ page import="java.util.*" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<title>Index Page</title>


 <style>
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


 
 

body {
  background-image: url("https://images.unsplash.com/photo-1505751172876-fa1923c5c528?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80");
  background-color: #cccccc;
  height: 500px;
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
  position: relative;
}
.title{
  margin: 0 auto;
  width: 50%;
  text-align: center;
  padding-bottom: 10px;
  font-family: Rajdhani;
  font-size: 32px;
  color: #2E4B62;
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
::-webkit-input-placeholder {
   color: white;
}

:-moz-placeholder { 
   color: white;
}

::-moz-placeholder { 
   color: white; 
}

:-ms-input-placeholder {  
   color: white;  
}

@-webkit-keyframes bounce{
  0%{
    
  }
  50%{
    -webkit-transform: translate(0, 8px);
  }
}
@-moz-keyframes bounce{
  0%{
    
  }
  50%{
    -moz-transform: translate(0, 8px);
  }
}
@keyframes bounce{
  0%{
    
  }
  50%{
    transform: translate(0, 8px);
  }
}
@-webkit-keyframes shadow{
  0%{
    
  }
  50%{
    opacity: 0.8;
    width: 50%;
  }
}
@-moz-keyframes shadow{
  0%{
    
  }
  50%{
    opacity: 0.8;
    width: 50%;
  }
}
@keyframes shadow{
  0%{
    
  }
  50%{
    opacity: 0.8;
    width: 50%;
  }
}

.select-container {
  width: 200px; /* Set a fixed width for the dropdown */
  position: relative; /* Make it relative for positioning options */
  margin-bottom: 10px; /* Add margin at the bottom for separation */
}

/* Style the select element */
.select-container select {
  width: 100%;
  padding: 10px; /* Add padding to the select element */
  border: 1px solid #ccc; /* Add a border */
  border-radius: 5px; /* Add some border radius */
  background-color: #fff; /* Background color */
  color: #333; /* Text color */
}

/* Style the dropdown options */
.select-container select option {
  background-color: #f7f7f7; /* Background color for options */
  color: #333; /* Text color for options */
  padding: 5px 10px; /* Add padding to options */
}

/* Style the selected option */
.select-container select option:checked {
  background-color: #337ab7; /* Background color for selected option */
  color: #fff; /* Text color for selected option */
  }
 
 </style>
<body>
 
 

<form action='centri.jsp'>


 

     
    
  
   
<div class="login-box">
<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
  <h2>Transfusion Registration</h2>
  

</select>
<div class="select-container">
         


	   <center><select name='hid' class="user-box"><br></center>
	   <br>
	   
       <option class="user-box">Select Hospital Id</option>
         <br>
	
	<br>
	<%
int hid=0;
try
{
	MongoClient mongo1 = new MongoClient("localhost", 27017);
	  DB database1 = mongo1.getDB("DPS");

	  DBCollection collection = database1.getCollection("hospital");

	  DBObject sort1 = new BasicDBObject();
	  sort1.put("hname", -1);
	  
	  out.println("Entered2");
	  
	   BasicDBObject whereQuery = new BasicDBObject();	  
	  
	  BasicDBObject fields = new BasicDBObject();
	    fields.put("hname",1);
	   // fields.put("hospital name",2);
	    
	  DBCursor cursor = collection.find(whereQuery,fields);
	  while(cursor.hasNext()) {
	   String s=cursor.next().toString();
///out.println(s);
	 int x=s.lastIndexOf(":");
	 String s1=s.substring(x+3,x+6);
	 out.println("<br><br>s1:"+s1);
	 
	 out.println("<option>"+s1+"</option>");
	 
			    
	 
	// hid=Integer.parseInt(s1)+1;
	// out.println(hid);
	 
	    
	   
	  }

}
catch(Exception e)
{

	hid=101;
	out.println("<br><br><br><br><br><br><br>"+e);
}

%>
</select> 
    
	 


</select>
         
 
</select> 
    


 





 

</select> 
	
 
  
  
  
  
  
  

 
 <br>  <br>
</select> 
<br>
<br><br>
    <center><select name='dbg' class="user-box"></center>
    <br>
       <option>Select Blood Group</option>
      
	
	<%

try
{
	 //Creating a MongoDB client
    MongoClient mongo = new MongoClient( "localhost" , 27017 );
    //Connecting to the database
    MongoDatabase database = mongo.getDatabase("DPS");
    //Creating a collection object
    MongoCollection<Document> collection = database.getCollection("walkin22");
    //Retrieving the documents

    
    String columnName2 = "status";
    String valuee = "Approved";
    

FindIterable<Document> iterDoc = collection.find(

Filters.eq("status", "Approved")

);

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
			        		
			if(count==8)
			out.println("<option>"+value+"</option>");
			
		   
		   
	   	 // out.println("</tr>");
	   }
	   //out.println("<tr><td>"+it.next()+"</td></tr>");
   }
 out.println("<br>");
	}
catch(Exception e)
{

	hid=101;
	out.println("<br><br><br><br><br><br><br>"+e);
}

%>
</select> 
<br><br>
 <br>



 <center><select name='dqty' class="user-box"></center>
       <option>Select Quantity</option>
	
	<%

try
{
	 //Creating a MongoDB client
    MongoClient mongo = new MongoClient( "localhost" , 27017 );
    //Connecting to the database
    MongoDatabase database = mongo.getDatabase("DPS");
    //Creating a collection object
    MongoCollection<Document> collection = database.getCollection("walkin22");
    //Retrieving the documents

    
    String columnName2 = "status";
    String valuee = "Approved";
    

FindIterable<Document> iterDoc = collection.find(

Filters.eq("status", "Approved")

);

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
			        		
			if(count==13)
			out.println("<option>"+value+"</option>");
			
		   
		    if(count==13)
		    {
		    	int t=Integer.parseInt(value);
		    	 
		    	qty=qty+t;
		    }
	   	 // out.println("</tr>");
	   }
	   //out.println("<tr><td>"+it.next()+"</td></tr>");
   }
 
	}
catch(Exception e)
{

	hid=101;
	out.println("<br><br><br><br><br><br><br>"+e);
}

%>
</select> 
    
	 






	
  
  
  
  
  <br> <br>
  
  
  
  
  
  
  
    <br>  <br>
  
  <div class="user-box">
    <text style="color: orange;">Confirm your Preferrable Date</text>
      <input type="date" name="date" required="">
      
    </div>
  
    
  <div class="user-box">
    <text style="color: orange;">Confirm your Preferrable Time</text>
      <input type="time" name="time" required="">
      
    </div>
    
   
	 
  <input class="submit font" type='submit' value='Confirm'>
     
      
    	
    <div class="shadow"></div>
  </div>
  </div>
  
 </div>
     </table>
</form>
</body>
</html>


